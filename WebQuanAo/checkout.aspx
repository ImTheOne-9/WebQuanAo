﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="WebQuanAo.checkout" %>



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
                <div id="login"  runat="server"></div>

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
                <li><span class="breadcrumb__link">Checkout</span></li>
            </ul>
        </section>

        <!--=============== CHECKOUT ===============-->
        <section class="checkout section--lg">
            <div class="checkout__container container grid">
                <div class="checkout__group">
                    <h3 class="section__title">Billing Details</h3>

                    <form action class="form grid">
                        <input type="text" name="name" id="txtName"
                            placeholder="Your Name..." class="form__input">
                        <input type="text" name="address" id="txtAddress"
                            placeholder="Your Address..." class="form__input">
                        <input type="text" name="city" id="txtCity"
                            placeholder="Your postcode..." class="form__input">
                        <input type="text" name="postcode" id="txtPostcode"
                            placeholder="Your phone..." class="form__input">
                        <input type="text" name="phone" id="txtPhone"
                            placeholder="Your Phonenumber..." class="form__input">
                        <input type="email" name="email" id="txtEmail"
                            placeholder="Your Email..." class="form__input">

                        <h3 class="section__title">Additional Information</h3>
                        <textarea
                            name="notes" id="txtNotes"
                            placeholder="Your Order Notes..."
                            class="form__input textarea"
                            cols="30" rows="10">
            </textarea>
                    </form>
                </div>

                <div class="checkout__group">
                    <h3 class="section__title">Cart Totals</h3>

                    <table class="order__table">
                        <tr>
                            <th colspan="2">Products</th>
                            <th>Totals</th>
                        </tr>

                        <tr>
                            <td>
                                <img
                                    src="img/product-8-1.jpg"
                                    alt
                                    class="order__img">
                            </td>

                            <td>
                                <h3 class="table__title">Colorful Pattern Shirts</h3>
                                <p class="order__quantity">x2</p>
                            </td>

                            <td>
                                <span class="order__price">$180.00</span>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <img
                                    src="img/product-8-1.jpg"
                                    alt
                                    class="order__img">
                            </td>

                            <td>
                                <h3 class="table__title">Colorful Pattern Shirts</h3>
                                <p class="order__quantity">x2</p>
                            </td>

                            <td>
                                <span class="order__price">$180.00</span>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <img
                                    src="img/product-8-1.jpg"
                                    alt
                                    class="order__img">
                            </td>

                            <td>
                                <h3 class="table__title">Colorful Pattern Shirts</h3>
                                <p class="order__quantity">x2</p>
                            </td>

                            <td>
                                <span class="order__price">$180.00</span>
                            </td>
                        </tr>

                        <tr>
                            <td><span class="order__subtitle">SubTotal</span></td>
                            <td colspan="2"><span class="order__price">$280.00</span></td>
                        </tr>

                        <tr>
                            <td><span class="order__subtitle">Shipping</span></td>
                            <td colspan="2"><span class="order__price">Free
                  Shipping</span></td>
                        </tr>

                        <tr>
                            <td><span class="order__subtitle">Total</span></td>
                            <td colspan="2"><span
                                class="order__grand-total">$280.00</span></td>
                        </tr>
                    </table>

                    <div class="payment__method">
                        <h3 class="checkout__title payment__title">Payment</h3>

                        <div class="payment__option flex">
                            <input
                                type="radio"
                                name="radio"
                                class="payment__input"
                                id="btnDBank">
                            <label
                                for="btnDBank"
                                class="payment__label">
                                Direct BankTransfer
                            </label>
                        </div>

                        <div class="payment__option flex">
                            <input
                                type="radio"
                                name="radio"
                                class="payment__input"
                                id="btnPay">
                            <label
                                for="btnPay"
                                class="payment__label">
                                Check Payment
                            </label>
                        </div>
                    </div>

                    <button class="btn btn--md">Place Order</button>
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
