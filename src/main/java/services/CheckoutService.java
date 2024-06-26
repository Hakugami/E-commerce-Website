package services;

import jakarta.persistence.LockModeType;
import jakarta.persistence.OptimisticLockException;
import models.entity.CartItem;
import models.entity.Order;
import models.entity.Product;
import models.entity.User;
import persistence.manager.DatabaseSingleton;
import persistence.repositories.impl.CartRepository;
import persistence.repositories.impl.UserRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;

public class CheckoutService {
    private static final int MAX_RETRIES = 3;
    private final UserRepository userRepository;

    private final Logger logger = Logger.getLogger(CheckoutService.class.getName());

    public CheckoutService() {
        this.userRepository = new UserRepository();
    }

    public String checkout(Long userId) {
        int retryCount = 0;
        while (retryCount < MAX_RETRIES) {
            try {
                String result = processCheckout(userId);
                if (result == null) {
                    return null; // Checkout successful
                } else {
                    return result; // Return failure type
                }
            } catch (OptimisticLockException e) {
                logger.severe("OptimisticLockException: " + e.getMessage());
                retryCount++;
                // Apply exponential backoff
                try {
                    TimeUnit.SECONDS.sleep((long) Math.pow(2, retryCount));
                } catch (InterruptedException ex) {
                    Thread.currentThread().interrupt();
                }
            }
        }
        return "Database Error";
    }


    private String processCheckout(Long id) {
        return DatabaseSingleton.getInstance().doTransactionWithResult(entityManager -> {
            User user = userRepository.read(id, entityManager, LockModeType.PESSIMISTIC_WRITE).orElse(null);
            if (user == null || user.getCart().getCartItems().isEmpty()) {
                return "Empty Cart";
            }
            Order order = new Order();
            order.setUser(user);

            // Create a copy of the cart items collection
            List<CartItem> cartItemsCopy = new ArrayList<>(user.getCart().getCartItems());

            double totalOrderAmount = 0.0;
            for (CartItem cartItem : cartItemsCopy) {
                Product product = entityManager.find(Product.class, cartItem.getProduct().getProductId(), LockModeType.PESSIMISTIC_WRITE);
                if (product == null) {
                    return "Invalid Product";
                }
                if (product.getQuantity() < cartItem.getQuantity()) {
                    return "Insufficient Quantity";
                }
                double itemTotal = product.getPrice() * cartItem.getQuantity();
                order.addOrderItems(product, cartItem.getQuantity(), itemTotal);
                product.setQuantity(product.getQuantity() - cartItem.getQuantity()); // Decrease quantity in stock
                totalOrderAmount += itemTotal;
            }

            // Check if the user's credit limit is sufficient
            if (user.getCreditLimit() < totalOrderAmount) {
                return "Insufficient Credit Limit";
            }
            if (user.getAddresses().isEmpty()) {
                return "No Address Provided";
            }
            user.getOrders().add(order);
            user.setCreditLimit(user.getCreditLimit() - totalOrderAmount);
            // Update the cart and user entities
            userRepository.update(user, entityManager);

            return null; // Checkout successful
        });
    }


}