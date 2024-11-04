﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="WebQuanAo.details" %>

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
    <form id="form1" runat="server" method="post">
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
                    <li><span class="breadcrumb__link">Henley Shirt</span></li>
                </ul>
            </section>

            <!--=============== DETAILS ===============-->
            <section class="details section--lg">
                <div id="infoProduct" name="infoProduct" runat="server"></div>
                <%--   <div class="deatails__container container grid">
            <div class="details__group">
                <img src="img/product-8-1.jpg"
                    alt
                    class="details__img"
                    onload="imgGallery()">

                <div class="details__small-images grid">
                    <img src="img/product-8-2.jpg" alt
                        class="details__small-img">
                    <img src="img/product-8-1.jpg" alt
                        class="details__small-img">
                    <img src="img/product-8-2.jpg" alt
                        class="details__small-img">
                </div>
            </div>

            <div class="details__group">
                <h3 class="details__title">Henley Shirt</h3>
                <p class="details__brand">Brand: <span>adidas</span></p>

                <div class="details__price flex">
                    <span class="new__price">$116</span>
                    <span class="old__price">$200</span>
                    <span class="save__price">25% Off</span>
                </div>

                <p class="details__description">
                    Lorem ipsum dolor sit amet consectetur
        adipisicing elit. Suscipit maxime accusantium aspernatur laborum
        assumenda distinctio, perferendis natus incidunt repudiandae
        omnis? Adipisci vitae officiis repellat facere distinctio vel
        voluptatem cupiditate ducimus.
                </p>

                <ul class="product__list">
                    <li class="list__item flex">
                        <i class="fi-rs-crown"></i>1 year Al Jazeera Brand Warranty
                    </li>

                    <li class="list__item flex">
                        <i class="fi-rs-refresh"></i>30 days return policy
                    </li>

                    <li class="list__item flex">
                        <i class="fi-rs-credit-card"></i>Card on Delivery available Warranty
                    </li>
                </ul>

                <div class="details__size flex">
                    <span class="details__size-title">Size</span>

                    <ul class="size__list">
                        <li>
                            <a href="#" class="size__link size-active">M</a>
                        </li>
                        <li>
                            <a href="#" class="size__link">L</a>
                        </li>
                        <li>
                            <a href="#" class="size__link">XL</a>
                        </li>
                        <li>
                            <a href="#" class="size__link">XXL</a>
                        </li>
                    </ul>
                </div>

                <div class="details__action">
                    <input type="number" class="quantity" value="3">
                    <a href="#" class="btn btn--sm">Add to Cart</a>

                    <a href="#" class="details__action-btn">
                        <i class="fi fi-rs-heart"></i>
                    </a>
                </div>
            </div>

        </div>--%>
            </section>

            <!--=============== DETAILS TAB ===============-->
            <section class="details__tab container">
                <div class="detail__tabs">
                    <span class="detail__tab active-tab" data-target="#info">Additional Info
                    </span>
                    <span class="detail__tab" data-target="#reviews">Review</span>
                </div>

                <div class="details__tabs-content">
                    <div class="details__tab-content active-tab" content id="info">
                        <table class="info__table">
                            <tr>
                                <th>Stand Up</th>
                                <td>35"L x 24"W x 37-45"H(front to back wheel)</td>
                            </tr>

                            <tr>
                                <th>Folded (w/o wheels)</th>
                                <td>35"L x 24"W x 37-45"H</td>
                            </tr>

                            <tr>
                                <th>Folded (w/ wheels)</th>
                                <td>35"L x 24"W x 37-45"H</td>
                            </tr>

                            <tr>
                                <th>Door Pass Through</th>
                                <td>24</td>
                            </tr>

                            <tr>
                                <th>Frame</th>
                                <td>Aluminum</td>
                            </tr>

                            <tr>
                                <th>Weight (w/o wheels)</th>
                                <td>20 LBS</td>
                            </tr>

                            <tr>
                                <th>Weight Capacity</th>
                                <td>60 LBS</td>
                            </tr>

                            <tr>
                                <th>Width</th>
                                <td>24"</td>
                            </tr>

                            <tr>
                                <th>Handle Height</th>
                                <td>37-45"</td>
                            </tr>

                            <tr>
                                <th>Wheels</th>
                                <td>12" air</td>
                            </tr>

                            <tr>
                                <th>Seat back height</th>
                                <td>21.5"</td>
                            </tr>

                            <tr>
                                <th>Head room</th>
                                <td>25"</td>
                            </tr>

                            <tr>
                                <th>Color</th>
                                <td>Black, Blue, Red, White</td>
                            </tr>

                            <tr>
                                <th>Size</th>
                                <td>M, S</td>
                            </tr>
                        </table>

                    </div>

                    <div class="details__tab-content" content id="reviews">
                        <div class="reviews__container grid">
                            <div class="review__single">
                                <div>
                                    <img src="img/avatar-1.jpg" alt class="review__img">
                                    <h4 class="review__title">Viet Hoang</h4>
                                </div>

                                <div class="review__data">
                                    <div class="review__rating">
                                        <i class="fi fi-rs-star"></i>
                                        <i class="fi fi-rs-star"></i>
                                        <i class="fi fi-rs-star"></i>
                                        <i class="fi fi-rs-star"></i>
                                        <i class="fi fi-rs-star"></i>
                                    </div>

                                    <p class="review__description">
                                        Thank you very fast shipping from Vietnam only 3days
                                    </p>

                                    <span class="review__date">October 5, 2024 at 12:00 pm</span>
                                </div>
                            </div>

                            <div class="review__single">
                                <div>
                                    <img src="img/avatar-2.jpg" alt class="review__img">
                                    <h4 class="review__title">Viet Hoang</h4>
                                </div>

                                <div class="review__data">
                                    <div class="review__rating">
                                        <i class="fi fi-rs-star"></i>
                                        <i class="fi fi-rs-star"></i>
                                        <i class="fi fi-rs-star"></i>
                                        <i class="fi fi-rs-star"></i>
                                        <i class="fi fi-rs-star"></i>
                                    </div>

                                    <p class="review__description">
                                        Thank you very fast shipping from Vietnam only 3days
                                    </p>

                                    <span class="review__date">October 5, 2024 at 12:00 pm</span>
                                </div>
                            </div>

                            <div class="review__single">
                                <div>
                                    <img src="img/avatar-3.jpg" alt class="review__img">
                                    <h4 class="review__title">Viet Hoang</h4>
                                </div>

                                <div class="review__data">
                                    <div class="review__rating">
                                        <i class="fi fi-rs-star"></i>
                                        <i class="fi fi-rs-star"></i>
                                        <i class="fi fi-rs-star"></i>
                                        <i class="fi fi-rs-star"></i>
                                        <i class="fi fi-rs-star"></i>
                                    </div>

                                    <p class="review__description">
                                        Thank you very fast shipping from Vietnam only 3days
                                    </p>

                                    <span class="review__date">October 5, 2024 at 12:00 pm</span>
                                </div>
                            </div>
                        </div>

                        <div class="review__form">
                            <h4 class="review__form-title">Add a review</h4>

                            <div class="rate__product">
                                <i class="fi fi-rs-star"></i>
                                <i class="fi fi-rs-star"></i>
                                <i class="fi fi-rs-star"></i>
                                <i class="fi fi-rs-star"></i>
                                <i class="fi fi-rs-star"></i>
                            </div>

                            <form action class="form grid">
                                <textarea
                                    name id
                                    class="form__input textarea"
                                    placeholder="Write Comment...">
          </textarea>

                                <div class="form__group grid">
                                    <input type="text" placeholder="Name" class="form__input">
                                    <input type="email" placeholder="Email" class="form__input">
                                </div>

                                <div class="form__btn">
                                    <button class="btn">Submit Review</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </section>

            <!--=============== PRODUCTS ===============-->
            <section class="products container section--lg">
                <h3 class="section__title"><span>Related</span> Products</h3>
                <div class="products__container grid">
                    <div class="product__item">
                        <div class="product__banner">
                            <a href="#" class="product__images">
                                <img src="img/product-5-1.jpg"
                                    class="product__img default"></img>
                                <img src="img/product-5-2.jpg"
                                    class="product__img hover"></img>
                            </a>

                            <div class="product__actions">
                                <a href="#" class="action__btn" aria-label="Quick View">
                                    <i class="fi fi-rs-eye"></i>
                                </a>
                                <a href="#" class="action__btn"
                                    aria-label="Add To Wishlist">
                                    <i class="fi fi-rs-heart"></i>
                                </a>
                                <a href="#" class="action__btn" aria-label="Compare">
                                    <i class="fi fi-rs-shuffle"></i>
                                </a>
                            </div>

                            <div class="product__badge light-pink">Hot</div>
                        </div>

                        <div class="product__content">
                            <span class="product__category">Clothing</span>

                            <a href="details.aspx">
                                <h3 class="product__title">Colorful Pattern Shirts</h3>
                            </a>

                            <div class="product__rating">
                                <i class="fi fi-rs-star"></i>
                                <i class="fi fi-rs-star"></i>
                                <i class="fi fi-rs-star"></i>
                                <i class="fi fi-rs-star"></i>
                                <i class="fi fi-rs-star"></i>
                            </div>

                            <div class="product__price flex">
                                <span class="new__price">$238.85</span>
                                <span class="old__price">$245.8</span>
                            </div>

                            <a href="#"
                                class="action__btn cart__btn"
                                aria-label="Add To Cart">
                                <i class="fi fi-rs-shopping-bag-add"></i>
                            </a>
                        </div>
                    </div>

                    <div class="product__item">
                        <div class="product__banner">

                            <a href="#" class="product__images">
                                <img src="img/product-6-1.jpg"
                                    class="product__img default"></img>
                                <img src="img/product-6-2.jpg"
                                    class="product__img hover"></img>
                            </a>

                            <div class="product__actions">
                                <a href="#" class="action__btn" aria-label="Quick View">
                                    <i class="fi fi-rs-eye"></i>
                                </a>
                                <a href="#" class="action__btn"
                                    aria-label="Add To Wishlist">
                                    <i class="fi fi-rs-heart"></i>
                                </a>
                                <a href="#" class="action__btn" aria-label="Compare">
                                    <i class="fi fi-rs-shuffle"></i>
                                </a>
                            </div>

                            <div class="product__badge light-pink">Hot</div>
                        </div>

                        <div class="product__content">
                            <span class="product__category">Clothing</span>

                            <a href="details.aspx">
                                <h3 class="product__title">Colorful Pattern Shirts</h3>
                            </a>

                            <div class="product__rating">
                                <i class="fi fi-rs-star"></i>
                                <i class="fi fi-rs-star"></i>
                                <i class="fi fi-rs-star"></i>
                                <i class="fi fi-rs-star"></i>
                                <i class="fi fi-rs-star"></i>
                            </div>

                            <div class="product__price flex">
                                <span class="new__price">$238.85</span>
                                <span class="old__price">$245.8</span>
                            </div>

                            <a href="#"
                                class="action__btn cart__btn"
                                aria-label="Add To Cart">
                                <i class="fi fi-rs-shopping-bag-add"></i>
                            </a>
                        </div>
                    </div>

                    <div class="product__item">
                        <div class="product__banner">

                            <a href="#" class="product__images">
                                <img src="img/product-7-1.jpg"
                                    class="product__img default"></img>
                                <img src="img/product-7-2.jpg"
                                    class="product__img hover"></img>
                            </a>

                            <div class="product__actions">
                                <a href="#" class="action__btn" aria-label="Quick View">
                                    <i class="fi fi-rs-eye"></i>
                                </a>
                                <a href="#" class="action__btn"
                                    aria-label="Add To Wishlist">
                                    <i class="fi fi-rs-heart"></i>
                                </a>
                                <a href="#" class="action__btn" aria-label="Compare">
                                    <i class="fi fi-rs-shuffle"></i>
                                </a>
                            </div>

                            <div class="product__badge light-pink">Hot</div>
                        </div>

                        <div class="product__content">
                            <span class="product__category">Clothing</span>

                            <a href="details.aspx">
                                <h3 class="product__title">Colorful Pattern Shirts</h3>
                            </a>

                            <div class="product__rating">
                                <i class="fi fi-rs-star"></i>
                                <i class="fi fi-rs-star"></i>
                                <i class="fi fi-rs-star"></i>
                                <i class="fi fi-rs-star"></i>
                                <i class="fi fi-rs-star"></i>
                            </div>

                            <div class="product__price flex">
                                <span class="new__price">$238.85</span>
                                <span class="old__price">$245.8</span>
                            </div>

                            <a href="#"
                                class="action__btn cart__btn"
                                aria-label="Add To Cart">
                                <i class="fi fi-rs-shopping-bag-add"></i>
                            </a>
                        </div>
                    </div>

                    <div class="product__item">
                        <div class="product__banner">

                            <a href="#" class="product__images">
                                <img src="img/product-8-1.jpg"
                                    class="product__img default"></img>
                                <img src="img/product-8-2.jpg"
                                    class="product__img hover"></img>
                            </a>

                            <div class="product__actions">
                                <a href="#" class="action__btn" aria-label="Quick View">
                                    <i class="fi fi-rs-eye"></i>
                                </a>
                                <a href="#" class="action__btn"
                                    aria-label="Add To Wishlist">
                                    <i class="fi fi-rs-heart"></i>
                                </a>
                                <a href="#" class="action__btn" aria-label="Compare">
                                    <i class="fi fi-rs-shuffle"></i>
                                </a>
                            </div>

                            <div class="product__badge light-pink">Hot</div>
                        </div>

                        <div class="product__content">
                            <span class="product__category">Clothing</span>

                            <a href="details.aspx">
                                <h3 class="product__title">Colorful Pattern Shirts</h3>
                            </a>

                            <div class="product__rating">
                                <i class="fi fi-rs-star"></i>
                                <i class="fi fi-rs-star"></i>
                                <i class="fi fi-rs-star"></i>
                                <i class="fi fi-rs-star"></i>
                                <i class="fi fi-rs-star"></i>
                            </div>

                            <div class="product__price flex">
                                <span class="new__price">$238.85</span>
                                <span class="old__price">$245.8</span>
                            </div>

                            <a href="#"
                                class="action__btn cart__btn"
                                aria-label="Add To Cart">
                                <i class="fi fi-rs-shopping-bag-add"></i>
                            </a>
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
    </form>
</body>
</html>
