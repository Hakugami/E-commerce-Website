<%@page session="false" contentType="text/html" pageEncoding="utf-8"%>

<jsp:include page="/header.jsp" />
<div class="app-content">
    <div class="u-s-p-y-60">
        <div class="section__content">
            <div class="container">
                <div class="breadcrumb">
                    <div class="breadcrumb__wrap">
                        <ul class="breadcrumb__list">
                            <li class="has-separator">

                                <a href="home">Home</a></li>
                            <li class="is-marked">

                                <a href="profile">My Account</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="u-s-p-b-60">

        <div class="section__content">
            <div class="dash">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-12">

                            <div class="dash__box dash__box--bg-white dash__box--shadow u-s-m-b-30">
                                <div class="dash__pad-1">

                                    <span class="dash__text u-s-m-b-16"></span>
                                    <ul class="dash__f-list">
                                        <li>

                                            <a class="dash-active" href="profile">Manage My Account</a></li>
                                        <li>

                                            <a href="myProfile">My Profile</a></li>
                                        <li>

                                            <a href="address">Address Book</a></li>
                                        <li>

                                            <a href="dash-track-order.html">Track Order</a></li>
                                        <li>

                                            <a href="dash-my-order.html">My Orders</a></li>
                                        <li>

                                            <a href="dash-payment-option.html">My Payment Options</a></li>
                                        <li>

                                            <a href="dash-cancellation.html">My Returns & Cancellations</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="dash__box dash__box--bg-white dash__box--shadow dash__box--w">
                                <div class="dash__pad-1">
                                    <ul class="dash__w-list">
                                        <li>
                                            <div class="dash__w-wrap">

                                                <span class="dash__w-icon dash__w-icon-style-1"><i class="fas fa-cart-arrow-down"></i></span>

                                                <span class="dash__w-text">4</span>

                                                <span class="dash__w-name">Orders Placed</span></div>
                                        </li>
                                        <li>
                                            <div class="dash__w-wrap">

                                                <span class="dash__w-icon dash__w-icon-style-2"><i class="fas fa-times"></i></span>

                                                <span class="dash__w-text">0</span>

                                                <span class="dash__w-name">Cancel Orders</span></div>
                                        </li>
                                        <li>
                                            <div class="dash__w-wrap">

                                                <span class="dash__w-icon dash__w-icon-style-3"><i class="far fa-heart"></i></span>

                                                <span class="dash__w-text">0</span>

                                                <span class="dash__w-name">Wishlist</span></div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!--====== End - Dashboard Features ======-->
                        </div>
                        <div class="col-lg-9 col-md-12">
                            <div class="dash__box dash__box--shadow dash__box--radius dash__box--bg-white u-s-m-b-30">
                                <div class="dash__pad-2">
                                    <h1 class="dash__h1 u-s-m-b-14">Manage My Account</h1>

                                    <span class="dash__text u-s-m-b-30">From your My Account Dashboard you have the ability to view a snapshot of your recent account activity and update your account information. Select a link below to view or edit information.</span>
                                    <div class="row">
                                        <div class="col-lg-6 u-s-m-b-30">
                                            <div class="dash__box dash__box--bg-grey dash__box--shadow-2 u-h-100">
                                                <div class="dash__pad-3">
                                                    <h2 class="dash__h2 u-s-m-b-8">PERSONAL PROFILE</h2>
                                                    <div class="dash__link dash__link--secondary u-s-m-b-8">

                                                        <a href="dash-edit-profile.html">Edit</a></div>

                                                    <span id="dash-name" class="dash__text"></span>

                                                    <span id="dash-email" class="dash__text"></span>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 u-s-m-b-30">
                                            <div class="dash__box dash__box--bg-grey dash__box--shadow-2 u-h-100">
                                                <div class="dash__pad-3">
                                                    <h2 class="dash__h2 u-s-m-b-8">ADDRESS BOOK</h2>

                                                    <span class="dash__text-2 u-s-m-b-8">Default Shipping Address</span>
                                                    <div class="dash__link dash__link--secondary u-s-m-b-8">

                                                        <a href="address">Edit</a></div>

                                                    <span id="default-address" class="dash__text"></span>

                                                    <span id="default-phone" class="dash__text"></span>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="dash__box dash__box--shadow dash__box--bg-white dash__box--radius">
                                <h2 class="dash__h2 u-s-p-xy-20">RECENT ORDERS</h2>
                                <div class="dash__table-wrap gl-scroll">
                                    <table class="dash__table">
                                        <thead>
                                        <tr>
                                            <th>Order #</th>
                                            <th>Placed On</th>
                                            <th>Items</th>
                                            <th>Total</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>3054231326</td>
                                            <td>26/13/2016</td>
                                            <td>
                                                <div class="dash__table-img-wrap">

                                                    <img class="u-img-fluid" src="images/product/electronic/product3.jpg" alt=""></div>
                                            </td>
                                            <td>
                                                <div class="dash__table-total">

                                                    <span>$126.00</span>
                                                    <div class="dash__link dash__link--brand">

                                                        <a href="dash-manage-order.html">MANAGE</a></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>3054231326</td>
                                            <td>26/13/2016</td>
                                            <td>
                                                <div class="dash__table-img-wrap">

                                                    <img class="u-img-fluid" src="images/product/electronic/product14.jpg" alt=""></div>
                                            </td>
                                            <td>
                                                <div class="dash__table-total">

                                                    <span>$126.00</span>
                                                    <div class="dash__link dash__link--brand">

                                                        <a href="dash-manage-order.html">MANAGE</a></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>3054231326</td>
                                            <td>26/13/2016</td>
                                            <td>
                                                <div class="dash__table-img-wrap">

                                                    <img class="u-img-fluid" src="images/product/men/product8.jpg" alt=""></div>
                                            </td>
                                            <td>
                                                <div class="dash__table-total">

                                                    <span>$126.00</span>
                                                    <div class="dash__link dash__link--brand">

                                                        <a href="dash-manage-order.html">MANAGE</a></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>3054231326</td>
                                            <td>26/13/2016</td>
                                            <td>
                                                <div class="dash__table-img-wrap">

                                                    <img class="u-img-fluid" src="images/product/women/product10.jpg" alt=""></div>
                                            </td>
                                            <td>
                                                <div class="dash__table-total">

                                                    <span>$126.00</span>
                                                    <div class="dash__link dash__link--brand">

                                                        <a href="dash-manage-order.html">MANAGE</a></div>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/footer.jsp" />
</div>

<!--====== Google Analytics: change UA-XXXXX-Y to be your site's ID ======-->


<!--====== Vendor Js ======-->
<script src="js/vendor.js"></script>

<!--====== jQuery Shopnav plugin ======-->
<script src="js/jquery.shopnav.js"></script>

<!--====== App ======-->
<script src="js/app.js"></script>

<!--====== Custom js ======-->
<script src="js/dashboard.js"></script>

<!--====== Noscript ======-->
<noscript>
    <div class="app-setting">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="app-setting__wrap">
                        <h1 class="app-setting__h1">JavaScript is disabled in your browser.</h1>

                        <span class="app-setting__text">Please enable JavaScript in your browser or upgrade to a JavaScript-capable browser.</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</noscript>
</body>
</html>