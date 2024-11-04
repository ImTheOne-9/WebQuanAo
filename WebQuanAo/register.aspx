<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebQuanAo.register" %>


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
                <li><span class="breadcrumb__link">Login & Register</span></li>
            </ul>
        </section>

        <!--=============== LOGIN-REGISTER ===============-->
        <section class="login-register section--lg">
            <div class="login-register__container container grid">

                <div class="register" id="form-register">
                    <div class="login__title">
                        <h3 class="section__title">Create an Account</h3>
                        <a href="login.aspx" class="section__title" style="color:black">Login</a>
                    </div>
                    <form action="" class="form grid"  method="post" runat="server" onsubmit = "return btnRegister()">
                        
                        <input
                            type="text"
                            name="username"
                            id="txtUsernameRes"
                            placeholder="Your username..."
                            class="form__input">
                        <input
                            type="text"
                            name="email"
                            id="txtEmail"
                            placeholder="Your email..."
                            class="form__input">
                        <input
                            type="password"
                            name="password"
                            id="txtPasswordRes"
                            placeholder="Your password..."
                            class="form__input">
                        

                        <input
                            type="password"
                            name="rep-password"
                            id="txtRePassword"
                            placeholder="Comfirm your password..."
                            class="form__input">

                        <div class="errorMessage" id="errorMessage" runat="server" style="color:red"></div>
                        <div class="form__btn">
                            <button type="submit" class="btn" runat="server">Submit & Register</button>
                        </div>
                    </form>
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
    <script>

        function btnRegister() {
            var username = document.getElementById('txtUsernameRes').value;
            var email = document.getElementById('txtEmail').value;
            var password = document.getElementById('txtPasswordRes').value;
            var repassword = document.getElementById('txtRePassword').value;
            var infor = document.getElementById('errorMessage');

            if (username == "") {
                infor.innerHTML = 'Username đang để trống, vui lòng nhập thông tin';
                return false;
            }
            if (email == "") {
                infor.innerHTML = 'Email đang để trống, vui lòng nhập thông tin';
                return false;
            }
            if (password == "") {
                infor.innerHTML = 'Password đang để trống, vui lòng nhập thông tin';
                return false;
            }
            if (repassword == "") {
                infor.innerHTML = 'Repasswor đang để trống, vui lòng nhập thông tin';
                return false;
            }
            if (username != "" && email != "" && password != "" && repassword != "") {
                return true;
            }
        }
        //const formRegister = document.getElementById('form-register');
        //const formLogin = document.getElementById('form-login');

        //const username = document.getElementById('txtUsername');
        //const passWord = document.getElementById('txtPassword');

        //const usernameError = document.getElementById('usernameError');
        //const passwordError = document.getElementById('passwordError');

        //const userNameRes = document.getElementById('txtUsernameRes');
        //const passWordRes = document.getElementById('txtPasswordRes');
        //const email = document.getElementById('txtEmail');
        //const rePassword = document.getElementById('txtRePassword');

        //const emailError = document.getElementById('emailError');
        //const usernameErrorRes = document.getElementById('usernameErrorRes');
        //const passwordErrorRes = document.getElementById('passwordErrorRes');
        //const repasswordError = document.getElementById('repasswordError');

        //function validateEmail(email) {
        //    return String(email)
        //        .match(
        //            /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|.(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
        //        );
        //};


        //function validateUsername(username) {
        //    return String(username)
        //        .match(
        //            /^(?=.*[a-zA-Z])(?=.*[0-9])[a-zA-Z0-9]{6,16}$/
        //        );
        //};

        //function validatePassword(password) {
        //    return String(password)
        //        .match(
        //            /^(?=.*?[0-9])(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[^0-9A-Za-z]).{8,32}$/
        //        );
        //};

        //formRegister.addEventListener('submit', function (e) {
        //    e.preventDefault();

        //    if (!email.value) {
        //        emailError.style.display = "block";
        //        emailError.innerHTML = "Required"
        //    }
        //    else {
        //        emailError.style.display = "none";
        //        if (!validateEmail(email.value)) {
        //            emailError.style.display = "block";
        //            emailError.innerHTML = "Not Valid"
        //        }
        //    }

        //    if (!userNameRes.value) {
        //        usernameErrorRes.style.display = "block";
        //        usernameErrorRes.innerHTML = "Required"
        //    }
        //    else {
        //        usernameErrorRes.style.display = "none";
        //        if (!validateUsername(userNameRes.value)) {
        //            usernameErrorRes.style.display = "block";
        //            usernameErrorRes.innerHTML = "Not Valid"
        //        }
        //    }

        //    if (!passWordRes.value) {
        //        passwordErrorRes.style.display = "block";
        //        passwordErrorRes.innerHTML = "Required"
        //    }
        //    else {
        //        passwordErrorRes.style.display = "none";
        //        if (!validatePassword(passWordRes.value)) {
        //            passwordErrorRes.style.display = "block";
        //            passwordErrorRes.innerHTML = "Not Valid"
        //        }
        //    }

        //    if (!rePassword.value) {
        //        repasswordError.style.display = "block";
        //        repasswordError.innerHTML = "Required"
        //    }
        //    else {
        //        repasswordError.style.display = "none";
        //        if (passWordRes.value !== rePassword.value) {
        //            repasswordError.style.display = "block";
        //            repasswordError.innerHTML = "Passwords do not match"
        //        }
        //    }
        //    if (
        //        userNameRes.value &&
        //        email.value &&
        //        passWordRes.value &&
        //        rePassword.value &&
        //        passWordRes.value === rePassword.value &&
        //        validateEmail(email.value) &&
        //        validateUsername(userNameRes.value) &&
        //        validatePassword(passWordRes.value)) {
        //        console.log('submit')
        //    }
        //})

        //formLogin.addEventListener('submit', function (e) {
        //    e.preventDefault();

        //    if (!username.value) {
        //        usernameError.style.display = "block";
        //        usernameError.innerHTML = "Required"
        //    }
        //    else {
        //        usernameError.style.display = "none";
        //        if (!validateUsername(username.value)) {
        //            usernameError.style.display = "block";
        //            usernameError.innerHTML = "Not Valid"
        //        }
        //    }

        //    if (!passWord.value) {
        //        passwordError.style.display = "block";
        //        passwordError.innerHTML = "Required"
        //    }
        //    else {
        //        passwordError.style.display = "none";
        //        if (!validatePassword(passWord.value)) {
        //            passwordError.style.display = "block";
        //            passwordError.innerHTML = "Not Valid"
        //        }
        //    }

        //    if (
        //        username.value &&
        //        passWord.value &&
        //        validateUsername(username.value) &&
        //        validatePassword(passWord.value)) {
        //        console.log('submit')
        //    }
        //})
    </script>

    <!--=============== MAIN JS ===============-->
    <script
        src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="main.js"></script>
</body>
</html>

