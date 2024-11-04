﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebQuanAo.home" %>

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
    <!-- Header -->
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

    <!-- main -->
    <main class="main">
        <!-- Home -->
        <section class="home section--lg">
            <div class="home__container container grid">
                <div class="home__content">
                    <span class="home__subtitle">Hot promotions</span>
                    <h1 class="home__title">Fashion Trending <span>Great Collection</span>
                    </h1>
                    <p class="home__description">
                        Save more with coupons & up to 20% off
                    </p>
                    <a href="shop.aspx" class="btn">Shop Now</a>
                </div>

                <img src="img/home-img.png" alt class="home__img">
            </div>
        </section>

        <!-- categories -->
        <!-- <section class="categories">

      </section> -->

        <!-- products -->
        <section class="products section container">
            <div class="tab__btns">
                <span class="tab__btn active-tab" data-target="#featured">Featured</span>
                <span class="tab__btn" data-target="#popular">Popular</span>
                <span class="tab__btn" data-target="#new-added">New Added</span>
            </div>

            <div class="tab__items">
                <div class="tab__item active-tab" content id="featured">
                    <div class="products__container grid">

                        <div class="product__item">
                            <div class="product__banner">
                                <a href="#" class="product__images">
                                    <img src="img/product-1-1.jpg"
                                        class="product__img default"></img>
                                    <img src="img/product-1-2.jpg"
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
                                    <img src="img/product-2-1.jpg"
                                        class="product__img default"></img>
                                    <img src="img/product-2-2.jpg"
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
                                    <img src="img/product-3-1.jpg"
                                        class="product__img default"></img>
                                    <img src="img/product-3-2.jpg"
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
                                    <img src="img/product-4-1.jpg"
                                        class="product__img default"></img>
                                    <img src="img/product-4-2.jpg"
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
                </div>

                <div class="tab__item" content id="popular">
                    <div class="products__container grid">

                        <div class="product__item">
                            <div class="product__banner">
                                <a href="#" class="product__images">
                                    <img src="img/product-10-1.jpg"
                                        class="product__img default"></img>
                                    <img src="img/product-10-2.jpg"
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
                                    <img src="img/product-2-1.jpg"
                                        class="product__img default"></img>
                                    <img src="img/product-2-2.jpg"
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
                                    <img src="img/product-3-1.jpg"
                                        class="product__img default"></img>
                                    <img src="img/product-3-2.jpg"
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
                                    <img src="img/product-4-1.jpg"
                                        class="product__img default"></img>
                                    <img src="img/product-4-2.jpg"
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
                </div>

                <div class="tab__item" content id="new-added">
                    <div class="products__container grid">

                        <div class="product__item">
                            <div class="product__banner">
                                <a href="#" class="product__images">
                                    <img src="img/product-1-1.jpg"
                                        class="product__img default"></img>
                                    <img src="img/product-1-2.jpg"
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
                                    <img src="img/product-9-1.jpg"
                                        class="product__img default"></img>
                                    <img src="img/product-9-2.jpg"
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
                                    <img src="img/product-3-1.jpg"
                                        class="product__img default"></img>
                                    <img src="img/product-3-2.jpg"
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
                                    <img src="img/product-4-1.jpg"
                                        class="product__img default"></img>
                                    <img src="img/product-4-2.jpg"
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
                </div>
            </div>
        </section>

        <!-- deals -->
        <section class="deals section">
            <div class="deals__container container grid">
                <div class="deals__item">
                    <div class="deals__group">
                        <h3 class="deals__brand">Deal of the Day</h3>
                        <span class="deals__category">Limited Quantities</span>
                    </div>

                    <h4 class="deals__title">Summer Collection New Modern Design</h4>

                    <div class="deals__price flex">
                        <span class="new-price">$139.00</span>
                        <span class="old-price">$160.99</span>
                    </div>

                    <div class="deals__group">
                        <p class="deals__countdown-text">Hurry Up! Offer End In:</p>
                        <div class="countdown">
                            <div class="countdown__amount">
                                <p class="countdown__period">02</p>
                                <span class="unit">Days</span>
                            </div>

                            <div class="countdown__amount">
                                <p class="countdown__period">22</p>
                                <span class="unit">Hours</span>
                            </div>

                            <div class="countdown__amount">
                                <p class="countdown__period">57</p>
                                <span class="unit">Mins</span>
                            </div>

                            <div class="countdown__amount">
                                <p class="countdown__period">24</p>
                                <span class="unit">Sec</span>
                            </div>
                        </div>
                    </div>

                    <div class="deals__btn">
                        <a href="details.aspx" class="btn btn--md">Shop Now</a>
                    </div>
                </div>

                <div class="deals__item">
                    <div class="deals__group">
                        <h3 class="deals__brand">Women Clothing</h3>
                        <span class="deals__category">Shirt & Bag</span>
                    </div>

                    <h4 class="deals__title">Try something new on vacation</h4>

                    <div class="deals__price flex">
                        <span class="new-price">$179.00</span>
                        <span class="old-price">$250.99</span>
                    </div>

                    <div class="deals__group">
                        <p class="deals__countdown-text">Hurry Up! Offer End In:</p>
                        <div class="countdown">
                            <div class="countdown__amount">
                                <p class="countdown__period">02</p>
                                <span class="unit">Days</span>
                            </div>

                            <div class="countdown__amount">
                                <p class="countdown__period">22</p>
                                <span class="unit">Hours</span>
                            </div>

                            <div class="countdown__amount">
                                <p class="countdown__period">57</p>
                                <span class="unit">Mins</span>
                            </div>

                            <div class="countdown__amount">
                                <p class="countdown__period">24</p>
                                <span class="unit">Sec</span>
                            </div>
                        </div>
                    </div>

                    <div class="deals__btn">
                        <a href="details.aspx" class="btn btn--md">Shop Now</a>
                    </div>
                </div>
            </div>
        </section>

        <!-- Showcase -->
        <section class="showcase section">
            <div class="showcase__container container grid">
                <div class="showcase__wrapper">
                    <h3 class="section__title">Hot Release</h3>

                    <div class="showcase__item">
                        <a href="details.aspx" class="showcase__img-box">
                            <img
                                src="img/showcase-img-1.jpg"
                                alt=""
                                class="showcase__img">
                        </a>

                        <div class="showcase__content">
                            <a href="details.aspx">
                                <h4 class="showcase__title">Floral Print Casual Cotton Dress</h4>
                            </a>

                            <div class="showcase__price flex">
                                <span class="new__price">$238.85</span>
                                <span class="old__price">$245.00</span>
                            </div>
                        </div>
                    </div>

                    <div class="showcase__item">
                        <a href="details.aspx" class="showcase__img-box">
                            <img
                                src="img/showcase-img-2.jpg"
                                alt=""
                                class="showcase__img">
                        </a>

                        <div class="showcase__content">
                            <a href="details.aspx">
                                <h4 class="showcase__title">Floral Print Casual Cotton Dress</h4>
                            </a>

                            <div class="showcase__price flex">
                                <span class="new__price">$238.85</span>
                                <span class="old__price">$245.00</span>
                            </div>
                        </div>
                    </div>

                    <div class="showcase__item">
                        <a href="details.aspx" class="showcase__img-box">
                            <img
                                src="img/showcase-img-3.jpg"
                                alt=""
                                class="showcase__img">
                        </a>

                        <div class="showcase__content">
                            <a href="details.aspx">
                                <h4 class="showcase__title">Floral Print Casual Cotton Dress</h4>
                            </a>

                            <div class="showcase__price flex">
                                <span class="new__price">$238.85</span>
                                <span class="old__price">$245.00</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="showcase__wrapper">
                    <h3 class="section__title">Deals & Outlet</h3>

                    <div class="showcase__item">
                        <a href="details.aspx" class="showcase__img-box">
                            <img
                                src="img/showcase-img-4.jpg"
                                alt=""
                                class="showcase__img">
                        </a>

                        <div class="showcase__content">
                            <a href="details.aspx">
                                <h4 class="showcase__title">Floral Print Casual Cotton Dress</h4>
                            </a>

                            <div class="showcase__price flex">
                                <span class="new__price">$238.85</span>
                                <span class="old__price">$245.00</span>
                            </div>
                        </div>
                    </div>

                    <div class="showcase__item">
                        <a href="details.aspx" class="showcase__img-box">
                            <img
                                src="img/showcase-img-5.jpg"
                                alt=""
                                class="showcase__img">
                        </a>

                        <div class="showcase__content">
                            <a href="details.aspx">
                                <h4 class="showcase__title">Floral Print Casual Cotton Dress</h4>
                            </a>

                            <div class="showcase__price flex">
                                <span class="new__price">$238.85</span>
                                <span class="old__price">$245.00</span>
                            </div>
                        </div>
                    </div>

                    <div class="showcase__item">
                        <a href="details.aspx" class="showcase__img-box">
                            <img
                                src="img/showcase-img-6.jpg"
                                alt=""
                                class="showcase__img">
                        </a>

                        <div class="showcase__content">
                            <a href="details.aspx">
                                <h4 class="showcase__title">Floral Print Casual Cotton Dress</h4>
                            </a>

                            <div class="showcase__price flex">
                                <span class="new__price">$238.85</span>
                                <span class="old__price">$245.00</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="showcase__wrapper">
                    <h3 class="section__title">Top Selling</h3>

                    <div class="showcase__item">
                        <a href="details.aspx" class="showcase__img-box">
                            <img
                                src="img/showcase-img-7.jpg"
                                alt=""
                                class="showcase__img">
                        </a>

                        <div class="showcase__content">
                            <a href="details.aspx">
                                <h4 class="showcase__title">Floral Print Casual Cotton Dress</h4>
                            </a>

                            <div class="showcase__price flex">
                                <span class="new__price">$238.85</span>
                                <span class="old__price">$245.00</span>
                            </div>
                        </div>
                    </div>

                    <div class="showcase__item">
                        <a href="details.aspx" class="showcase__img-box">
                            <img
                                src="img/showcase-img-8.jpg"
                                alt=""
                                class="showcase__img">
                        </a>

                        <div class="showcase__content">
                            <a href="details.aspx">
                                <h4 class="showcase__title">Floral Print Casual Cotton Dress</h4>
                            </a>

                            <div class="showcase__price flex">
                                <span class="new__price">$238.85</span>
                                <span class="old__price">$245.00</span>
                            </div>
                        </div>
                    </div>

                    <div class="showcase__item">
                        <a href="details.aspx" class="showcase__img-box">
                            <img
                                src="img/showcase-img-9.jpg"
                                alt=""
                                class="showcase__img">
                        </a>

                        <div class="showcase__content">
                            <a href="details.aspx">
                                <h4 class="showcase__title">Floral Print Casual Cotton Dress</h4>
                            </a>

                            <div class="showcase__price flex">
                                <span class="new__price">$238.85</span>
                                <span class="old__price">$245.00</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="showcase__wrapper">
                    <h3 class="section__title">Trendy</h3>

                    <div class="showcase__item">
                        <a href="details.aspx" class="showcase__img-box">
                            <img
                                src="img/showcase-img-1.jpg"
                                alt=""
                                class="showcase__img">
                        </a>

                        <div class="showcase__content">
                            <a href="details.aspx">
                                <h4 class="showcase__title">Floral Print Casual Cotton Dress</h4>
                            </a>

                            <div class="showcase__price flex">
                                <span class="new__price">$238.85</span>
                                <span class="old__price">$245.00</span>
                            </div>
                        </div>
                    </div>

                    <div class="showcase__item">
                        <a href="details.aspx" class="showcase__img-box">
                            <img
                                src="img/showcase-img-3.jpg"
                                alt=""
                                class="showcase__img">
                        </a>

                        <div class="showcase__content">
                            <a href="details.aspx">
                                <h4 class="showcase__title">Floral Print Casual Cotton Dress</h4>
                            </a>

                            <div class="showcase__price flex">
                                <span class="new__price">$238.85</span>
                                <span class="old__price">$245.00</span>
                            </div>
                        </div>
                    </div>

                    <div class="showcase__item">
                        <a href="details.aspx" class="showcase__img-box">
                            <img
                                src="img/showcase-img-5.jpg"
                                alt=""
                                class="showcase__img">
                        </a>

                        <div class="showcase__content">
                            <a href="details.aspx">
                                <h4 class="showcase__title">Floral Print Casual Cotton Dress</h4>
                            </a>

                            <div class="showcase__price flex">
                                <span class="new__price">$238.85</span>
                                <span class="old__price">$245.00</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <!-- footer -->
    <footer class="footer container">
        <div class="footer__container grid">
            <div class="footer__content">
                <a href="index.aspx" class="footer__logo">
                    <img src="img/logo.svg" alt="" class="footer__logo-img">
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
                                alt=""
                                class="footer__social-icon">
                        </a>

                        <a href="#">
                            <img
                                src="img/icon-instagram.svg"
                                alt=""
                                class="footer__social-icon">
                        </a>
                        <a href="#">
                            <img
                                src="img/icon-pinterest.svg"
                                alt=""
                                class="footer__social-icon">
                        </a>
                        <a href="#">
                            <img
                                src="img/icon-twitter.svg"
                                alt=""
                                class="footer__social-icon">
                        </a>

                        <a href="#">
                            <img
                                src="img/icon-youtube.svg"
                                alt=""
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
                    alt=""
                    class="paymen__img">
            </div>
        </div>

        <div class="footer__bottom">
            <p class="design">Design by Doan Viet Hoang</p>
        </div>
    </footer>

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="main.js"></script>
</body>
</html>
