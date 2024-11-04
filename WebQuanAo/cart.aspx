<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="WebQuanAo.cart" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel='stylesheet'
        href='https://cdn-uicons.flaticon.com/2.6.0/uicons-regular-straight/uicons-regular-straight.css'>
    <!-- Boxicons -->
    <link
        href="https://unpkg.com/boxicons@2.0.7/boxicons.min.css"
        rel="stylesheet" />

    <link rel="stylesheet" href="styles.css" />
    <title>ecommerce Website</title>
</head>
<body>
    <!--=============== HEADER ===============-->
    <header class="header">
        <div class="header__top">
            <div class="header__container container">
                <div class="header__contact">
                    <span>(+01) - 2345 - 6789</span>
                    <span>Our Location</span>
                </div>

                <p class="header__alert-news">
                    Super Value Deals - Save more with coupons
                </p>

                <a href="login.aspx" class="header__top-action">Log In / Sign Up
                </a>
            </div>
        </div>

        <nav class="nav container">
            <a href="home.aspx" class="nav__logo">
                <img src="img/logo.svg" alt class="nav__logo-img">
            </a>

            <div class="nav__menu" id="nav-menu">
                <div class="nav__menu-top">
                    <a href="home.aspx" class="nav__menu-logo">
                        <img src="img/logo.svg" alt>
                    </a>

                    <div class="nav__close" id="nav-close">
                        <i class="fi-rs-cross-small"></i>
                    </div>
                </div>
                <ul class="nav__list">
                    <li class="nav__item">
                        <a href="home.aspx" class="nav__link active-link">Home</a>
                    </li>

                    <li class="nav__item">
                        <a href="shop.aspx" class="nav__link">Shop</a>
                    </li>

                    <li class="nav__item">
                        <a href="accounts.aspx" class="nav__link">My Account</a>
                    </li>

                    <li class="nav__item">
                        <a href="#" class="nav__link">Manage</a>
                    </li>

                    <li class="nav__item">
                        <a href="login.aspx" class="nav__link">Login</a>
                    </li>
                </ul>

                <div class="header__search">
                    <input
                        type="text"
                        placeholder="Search products..."
                        class="form__input" />
                    <button class="search__btn">
                        <i class="fi-rs-search"></i>
                    </button>
                </div>
            </div>

            <div class="header__user-actions">
                <a href="login.aspx" class="header__action-btn">
                    <img src="img/user.svg" alt>
                </a>
                <div id="login" runat="server"></div>

                <a href="cart.aspx" class="header__action-btn">
                    <img src="img/icon-cart.svg" alt>
                    <span class="count">3</span>
                </a>

                <div class="header__action-btn nav__toogle" id="nav-toogle">
                    <img src="img/menu-burger.svg" alt>
                </div>
            </div>

        </nav>
    </header>

    <!--=============== MAIN ===============-->
    <main class="main">
        <!--=============== BREADCRUMB ===============-->
        <section class="breadcrumb">
            <ul class="breadcrumb__list flex container">
                <li><a href="index.aspx" class="breadcrumb__link">Home</a></li>
                <li><span class="breadcrumb__link">>></span></li>
                <li><span class="breadcrumb__link">Shop</span></li>
                <li><span class="breadcrumb__link">>></span></li>
                <li><span class="breadcrumb__link">Cart</span></li>
            </ul>
        </section>

        <!--=============== CART ===============-->
        <section class="cart section--lg container">
            <div id="cartProduct" name="cartProduct" runat="server"></div>
            <%--<div class="table__container">
                <table class="table">
                    <tr>
                        <th>Image</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Subtotal</th>
                        <th>Remove</th>
                    </tr>

                    <tr>
                        <td>
                            <img
                                src="img/product-8-1.jpg"
                                alt
                                class="table__img">
                        </td>

                        <td>
                            <h3 class="table__title">T-shirt</h3>
                            <p class="table__description">
                                Lorem ipsum dolor sit amet
                consectetur, adipisicing elit.
                            </p>
                        </td>

                        <td>
                            <span class="table__price">$116</span>
                        </td>

                        <td>
                            <input type="number" placeholder="3" class="quantity">
                        </td>
                        <td>
                            <span class="table__subtotal">$220</span>
                        </td>

                        <td>
                            <i class="fi fi-rs-trash table__trash"></i>
                        </td>
                    </tr>
                </table>
            </div>--%>

            <div class="cart__actions">
                <a href class="btn flex btn--md">
                    <i class="fi-rs-shuffle"></i>Update Cart
                </a>
                <a href class="btn flex btn--md">
                    <i class="fi-rs-shopping-bag"></i>Continue Shopping
                </a>
            </div>

            <div class="divider">
                <i class="fi fi-rs-fingerprint"></i>
            </div>

            <div class="cart__group grid">
                <div>
                    <div class="cart__shipping">
                        <h3 class="section__title">Caculate Shipping</h3>

                        <form action class="form grid">
                            <input
                                type="text"
                                placeholder="State / Country"
                                class="form__input">

                            <div class="form__group grid">
                                <input type="text" placeholder="City" class="form__input">

                                <input
                                    type="text"
                                    placeholder="PostCode / Zip"
                                    class="form__input">
                            </div>

                            <div class="form__btn">
                                <button class="btn flex btn--sm">
                                    <i class="fi fi-rs-shuffle"></i>Update
                                </button>
                            </div>
                        </form>
                    </div>

                    <div class="cart__coupon">
                        <h3 class="section__title">Apply Coupon</h3>

                        <form action class="coupon__form form grid">
                            <div class="form__group grid">
                                <input
                                    type="text"
                                    placeholder="Enter your Code"
                                    class="form__input">

                                <div class="form__btn">
                                    <button class="btn flex btn--sm">
                                        <i class="fi fi-rs-label"></i>Apply
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="card__total">
                    <h3 class="section__title">Cart Totals</h3>

                    <table class="cart__total-table">
                        <tr>
                            <td><span class="cart__total-title">Cart Subtotal</span></td>
                            <td><span class="cart__total-price" id="products_Price" runat="server">$</span></td>
                        </tr>

                        <tr>
                            <td><span class="cart__total-title">Shipping</span></td>
                            <td><span class="cart__total-price">$10.00</span></td>
                        </tr>

                        <tr>
                            <td><span class="cart__total-title">Total</span></td>
                            <td><span class="cart__total-price" id="total_Price" runat="server">$</span></td>
                        </tr>
                    </table>

                    <a href="checkout.aspx" class="btn flex btn--md">
                        <i class="fi-rs-box-alt"></i>Proceed To Checkout
                    </a>
                </div>
            </div>

        </section>

        <!--=============== NEWSLETTER ===============-->
        <section class="newsletter"></section>
    </main>

    <!--=============== FOOTER ===============-->
    <footer class="footer container">
        <div class="footer__container grid">
            <div class="footer__content">
                <a href="index.aspx" class="footer__logo">
                    <img src="img/logo.svg" alt class="footer__logo-img">
                </a>

                <h4 class="footer__subtitle">Contact</h4>

                <p class="footer__description">
                    <span>Address:</span> 69 Dinh Cong, Hoang Mai, Ha Noi
                </p>

                <p class="footer__description">
                    <span>Phone:</span> +01 2345 6789
                </p>

                <p class="footer__description">
                    <span>Hours:</span> 10:00 - 18:00, Mon - Sat
                </p>

                <div class="footer__social">
                    <h4 class="footer__subtitle">Follow Me</h4>

                    <div class="footer__social-links">
                        <a href="#">
                            <img
                                src="img/icon-facebook.svg"
                                alt
                                class="footer__social-icon">
                        </a>

                        <a href="#">
                            <img
                                src="img/icon-instagram.svg"
                                alt
                                class="footer__social-icon">
                        </a>
                        <a href="#">
                            <img
                                src="img/icon-pinterest.svg"
                                alt
                                class="footer__social-icon">
                        </a>
                        <a href="#">
                            <img
                                src="img/icon-twitter.svg"
                                alt
                                class="footer__social-icon">
                        </a>

                        <a href="#">
                            <img
                                src="img/icon-youtube.svg"
                                alt
                                class="footer__social-icon">
                        </a>
                    </div>
                </div>
            </div>

            <div class="footer__content">
                <h3 class="footer__title">Address</h3>
                <ul class="footer__links">
                    <li><a href="#" class="footer__link">About Us</a></li>
                    <li><a href="#" class="footer__link">Delivery Information</a></li>
                    <li><a href="#" class="footer__link">Privacy Policy</a></li>
                    <li><a href="#" class="footer__link">Terms & Conditions</a></li>
                    <li><a href="#" class="footer__link">Contact Us</a></li>
                    <li><a href="#" class="footer__link">Support Center</a></li>
                </ul>
            </div>

            <div class="footer__content">
                <h3 class="footer__title">My Account</h3>
                <ul class="footer__links">
                    <li><a href="#" class="footer__link">Sign In</a></li>
                    <li><a href="#" class="footer__link">View Cart</a></li>
                    <li><a href="#" class="footer__link">My Whislist</a></li>
                    <li><a href="#" class="footer__link">Track My Order</a></li>
                    <li><a href="#" class="footer__link">Help</a></li>
                    <li><a href="#" class="footer__link">Order</a></li>
                </ul>
            </div>

            <div class="footer__content">
                <h3 class="footer__title">Secured Payment Gateways</h3>

                <img
                    src="img/payment-method.png"
                    alt
                    class="paymen__img">
            </div>
        </div>

        <div class="footer__bottom">
            <p class="design">Design by Doan Viet Hoang</p>
        </div>
    </footer>

    <!--=============== SWIPER JS ===============-->
    <script src></script>

    <!--=============== MAIN JS ===============-->
    <script
        src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="main.js"></script>
</body>
</html>
