<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shop.aspx.cs" Inherits="WebQuanAo.shop" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!--=============== FLATICON ===============-->
    <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.6.0/uicons-regular-rounded/css/uicons-regular-rounded.css'>

    <!--=============== SWIPER CSS ===============-->
    <link rel="stylesheet" href />

    <!--=============== CSS ===============-->
    <link rel="stylesheet" href="styles.css" />

    <style>
        .table__Product{
            grid-template-columns: repeat(4,1fr);
        }
    </style>
    <title>Ecommerce Website</title>
</head>
<body>
    <form id="form" runat="server" onsubmit="return btnThem()">
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
                            class="form__input"
                            id="search_text"
                            name="search"
                            runat="server" />
                        <button type="submit" class="search__btn" id="search_btn" runat="server" onserverclick="searchButton_Click">
                            <i class="fi fi-rr-search"></i>
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
                </ul>
            </section>

            <!--=============== PRODUCTS ===============-->
            <section class="products section--lg container">
                <div class="filter">
                  <h3 class="filter__heading">Bộ lọc | </h3>
                  <ul class="filter__list">
                      <li class="filter__item"><a href="shop.aspx?filter=01" runat="server" >&le; 50$</a></li>
                      <li class="filter__item"><a href="shop.aspx?filter=02" runat="server" >50$ - 100$</a></li>
                      <li class="filter__item"><a href="shop.aspx?filter=03" runat="server" >&ge; 100$</a></li>
                  </ul>
                </div>

                <p class="total__products" runat="server" id="total_products">
                </p>

                <div class="products__container">
                    <div id="tableProduct" name="tableProduct" runat="server" class="table__Product grid"> </div>
                    <div id="error" name="bang" runat="server"> </div>
                    <div id="tableProduct1" name="tableProduct1" runat="server" class="table__Product grid"> </div>
                    <%--<div class="product__item">
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
                    </div>--%>
                </div>

                <ul class="pagination">
                    <li><a href="" class="pagination__link active">01</a></li>
                    <li><a href="" class="pagination__link">02</a></li>
                    <li><a href="" class="pagination__link">03</a></li>
                    <li><a href="" class="pagination__link">...</a></li>
                    <li><a href="" class="pagination__link">16</a></li>
                    <li><a href="" class="pagination__link icon">
                        <i class="fi-rs-angle-double-small-right"></i>
                    </a></li>
                </ul>
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
        <script>
            function btnThem() {
                var search = document.getElementById('search_text').value;
                var infoSearch = document.getElementById('total_products');
                if (search == "") {
                    infoSearch.innerHTML = 'Tìm kiếm đang trống, Vui lòng nhập tên sản phẩm';
                    tableProduct.innerHTML = '';
                    tableProduct1.innerHTML = '';
                    return false;
                }
            }
        </script>

        <!--=============== MAIN JS ===============-->
        <script
            src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script src="main.js"></script>
    </form>
</body>
</html>
