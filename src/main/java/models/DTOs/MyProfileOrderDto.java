package models.DTOs;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor(force = true)
@Builder(toBuilder = true)
public class MyProfileOrderDto {
    Long id;
    List<OrderItemDto> orderItems;
    double totalAmount;
    AddressDto address;
    Date orderDate;
}
