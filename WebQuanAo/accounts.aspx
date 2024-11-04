﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accounts.aspx.cs" Inherits="WebQuanAo.accounts" %>


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
                <li><span class="breadcrumb__link">Account</span></li>
            </ul>
        </section>

        <!--=============== ACCOUNTS ===============-->
        <section class="accounts section--lg">
            <div class="account__container container grid">
                <div class="account__tabs">
                    <p class="account__tab active-tab" data-target="#dashboard">
                        <i class="fi-rs-settings-sliders"></i>Dashboard
                    </p>

                    <p class="account__tab" data-target="#orders">
                        <i class="fi-rs-shopping-bag"></i>Orders
                    </p>

                    <p class="account__tab" data-target="#update-profile">
                        <i class="fi-rs-user"></i>Update Profile
                    </p>

                    <p class="account__tab" data-target="#address">
                        <i class="fi-rs-marker"></i>My Address
                    </p>

                    <p class="account__tab" data-target="#change-password">
                        <i class="fi-rs-user"></i>Change Password
                    </p>

                    <p class="account__tab">
                        <a href="logout.aspx"><i class="fi-rs-exit"></i>Logout</a>
                    </p>
                </div>

                <div class="tabs__content">
                    <div class="tab__content active-tab" content id="dashboard">
                        <h3 class="tab__header">Hello!</h3>

                        <div class="tab__body">
                            <div class="tab__description">
                                From your account dashboard, you can easily check & view your
                recent orders, manage your shipping and billing addresses and
                eit your password and account details
                            </div>
                        </div>
                    </div>

                    <div class="tab__content" content id="orders">
                        <h3 class="tab__header">Your Orders</h3>

                        <div class="tab__body">
                            <table class="placed__order-table">
                                <tr>
                                    <th>Orders</th>
                                    <th>Date</th>
                                    <th>Status</th>
                                    <th>Total</th>
                                    <th>Actions</th>
                                </tr>

                                <tr>
                                    <td>#1357</td>
                                    <td>8/10/2024</td>
                                    <td>Processing</td>
                                    <td>$125.00</td>
                                    <td><a href="#" class="view_order">View</a></td>
                                </tr>

                                <tr>
                                    <td>#1337</td>
                                    <td>8/10/2024</td>
                                    <td>Processing</td>
                                    <td>$125.00</td>
                                    <td><a href="#" class="view_order">View</a></td>
                                </tr>

                                <tr>
                                    <td>#1781</td>
                                    <td>8/10/2024</td>
                                    <td>Processing</td>
                                    <td>$125.00</td>
                                    <td><a href="#" class="view_order">View</a></td>
                                </tr>
                            </table>
                        </div>
                    </div>

                    <div class="tab__content" content id="update-profile">
                        <h3 class="tab__header">Update Profile</h3>

                        <div class="tab__body">
                            <form action class="form grid">
                                <input type="text" name="username" id="txtUsername"
                                    placeholder="Username" class="form__input">

                                <div class="form__btn">
                                    <button class="btn btn--md">Save</button>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="tab__content" content id="address">
                        <h3 class="tab__header">Shipping Address</h3>

                        <div class="tab__body">
                            <address class="address">
                                69 Dinh Cong, Hoang Mai
                            </address>

                            <p class="city">Hanoi</p>
                            <a href class="edit">Edit</a>
                        </div>
                    </div>

                    <div class="tab__content" content id="change-password">
                        <h3 class="tab__header">Change Password</h3>

                        <div class="tab__body">
                            <form action class="form grid">
                                <input
                                    type="password"
                                    placeholder="Current Password"
                                    class="form__input" />

                                <input
                                    type="password"
                                    placeholder="New Password"
                                    class="form__input" />

                                <input
                                    type="password"
                                    placeholder="Comfirm Password"
                                    class="form__input" />

                                <div class="form__btn">
                                    <button class="btn btn--md">Save</button>
                                </div>
                            </form>
                        </div>
                    </div>
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

