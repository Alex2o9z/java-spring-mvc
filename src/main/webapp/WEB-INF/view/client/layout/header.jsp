<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <header id="header" class="header style-04 header-dark bg-white border border-bottom-1 fixed-top">
            <!-- bg-light fixed-top -->
            <!-- <div class="header-top">
                <div class="container">
                    <div class="header-top-inner">
                        <ul id="menu-top-left-menu" class="kobolg-nav top-bar-menu">
                            <li id="menu-item-864"
                                class="menu-item menu-item-type-custom menu-item-object-custom menu-item-864"><a
                                    class="kobolg-menu-item-title" title="Store Direction" href="#"><span
                                        class="icon flaticon-placeholder"></span>Store
                                    Direction</a></li>
                            <li id="menu-item-865"
                                class="menu-item menu-item-type-custom menu-item-object-custom menu-item-865"><a
                                    class="kobolg-menu-item-title" title="Order Tracking" href="#"><span
                                        class="icon flaticon-box"></span>Order
                                    Tracking</a></li>
                        </ul>
                        <div class="kobolg-nav top-bar-menu right">
                            <ul class="wpml-menu">
                                <li class="menu-item kobolg-dropdown block-language">
                                    <a href="#" data-kobolg="kobolg-dropdown">
                                        <img src="/client/images/en.png" alt="en" width="18" height="12">
                                        English
                                    </a>
                                    <span class="toggle-submenu"></span>
                                    <ul class="sub-menu">
                                        <li class="menu-item">
                                            <a href="#">
                                                <img src="/client/images/it.png" alt="it" width="18" height="12">
                                                Italiano
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="menu-item">
                                    <div class="wcml-dropdown product wcml_currency_switcher">
                                        <ul>
                                            <li class="wcml-cs-active-currency">
                                                <a class="wcml-cs-item-toggle">USD</a>
                                                <ul class="wcml-cs-submenu">
                                                    <li>
                                                        <a>EUR</a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div> -->

            <div class="header-middle">
                <div class="container">
                    <div class="header-middle-inner">
                        <div class="header-logo-menu">
                            <div class="block-menu-bar">
                                <a class="menu-bar menu-toggle" href="#">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </a>
                            </div>
                            <div class="header-logo">
                                <a href="/"><img alt="Kobolg" src="/client/images/general/logo.png" class="logo"></a>
                            </div>
                        </div>
                        <div class="header-search-mid">
                            <div class="header-nav-inner">
                                <div class="box-header-nav menu-nocenter">
                                    <ul id="menu-primary-menu"
                                        class="clone-main-menu kobolg-clone-mobile-menu kobolg-nav main-menu">
                                        <li id="menu-item-237"
                                            class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-237 parent">
                                            <a class="kobolg-menu-item-title" title="Trang chủ" href="/">Trang chủ</a>
                                        </li>
                                        <li id="menu-item-237"
                                            class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-237 parent">
                                            <a class="kobolg-menu-item-title" title="Sản phẩm" href="/products">Sản
                                                phẩm</a>
                                        </li>
                                        <li id="menu-item-237"
                                            class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-237 parent">
                                            <a class="kobolg-menu-item-title" title="Liên hệ" href="/contact">Liên
                                                hệ</a>
                                        </li>
                                        <!-- <li id="menu-item-237"
                                            class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-237 parent">
                                            <a class="kobolg-menu-item-title" title="Pages" href="#">Pages</a>
                                            <span class="toggle-submenu"></span>
                                            <ul role="menu" class="submenu">
                                                <li id="menu-item-987"
                                                    class="menu-item menu-item-type-custom menu-item-object-custom menu-item-987">
                                                    <a class="kobolg-menu-item-title" title="About"
                                                        href="about.html">About</a>
                                                </li>
                                                <li id="menu-item-988"
                                                    class="menu-item menu-item-type-custom menu-item-object-custom menu-item-988">
                                                    <a class="kobolg-menu-item-title" title="Contact"
                                                        href="contact.html">Contact</a>
                                                </li>
                                                <li id="menu-item-990"
                                                    class="menu-item menu-item-type-custom menu-item-object-custom menu-item-990">
                                                    <a class="kobolg-menu-item-title" title="Page 404"
                                                        href="404.html">Page 404</a>
                                                </li>
                                            </ul>
                                        </li> -->
                                    </ul>
                                </div>

                                <!-- block search start -->
                                <div class="header-search">
                                    <div class="block-search">
                                        <form role="search" method="get"
                                            class="form-search block-search-form kobolg-live-search-form">
                                            <div class="form-content search-box results-search">
                                                <div class="inner">
                                                    <input autocomplete="off" class="searchfield txt-livesearch input"
                                                        name="s" value="" placeholder="Tìm kiếm..." type="text">
                                                </div>
                                            </div>
                                            <input name="post_type" value="product" type="hidden">
                                            <input name="taxonomy" value="product_cat" type="hidden">

                                            <button type="submit" class="btn-submit">
                                                <span class="flaticon-search"></span>
                                            </button>
                                        </form>
                                    </div>
                                </div>
                                <!-- block search end -->
                            </div>
                        </div>
                        <div class="header-control">
                            <div class="header-control-inner">
                                <div class="meta-dreaming">
                                    <c:if test="${not empty pageContext.request.userPrincipal}">
                                        <div class="menu-item block-user block-dreaming kobolg-dropdown">
                                            <a class="block-link" href="#">
                                                <span class="flaticon-profile"></span>
                                            </a>
                                            <ul class="sub-menu">
                                                <li
                                                    class="menu-item kobolg-MyAccount-navigation-link kobolg-MyAccount-navigation-link--customer-account">
                                                    <a href="#">Quản lí tài khoản</a>
                                                </li>
                                                <li
                                                    class="menu-item kobolg-MyAccount-navigation-link kobolg-MyAccount-navigation-link--face-register is-active">
                                                    <a href="/face-register">Thiết lập khuôn mặt</a>
                                                </li>
                                                <li
                                                    class="menu-item kobolg-MyAccount-navigation-link kobolg-MyAccount-navigation-link--orders-history">
                                                    <a href="/order-history">Lịch sử mua hàng</a>
                                                </li>
                                                <li
                                                    class="menu-item kobolg-MyAccount-navigation-link kobolg-MyAccount-navigation-link--customer-logout">
                                                    <form id="logout" method="post" action="/logout">
                                                        <input type="hidden" name="${_csrf.parameterName}"
                                                            value="${_csrf.token}" />
                                                        <a href="javascript:$('#logout').submit();">Đăng xuất</a>
                                                        <!-- <button type="submit" class="kobolg-Button button" name="logout"
                                                            value="Log out">Đăng xuất
                                                        </button> -->
                                                    </form>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="block-minicart block-dreaming kobolg-mini-cart kobolg-dropdown">
                                            <div class="shopcart-dropdown block-cart-link">
                                                <!-- data-kobolg="kobolg-dropdown" -->
                                                <a class="block-link link-dropdown" href="/cart">
                                                    <span class="flaticon-online-shopping-cart"></span>
                                                    <span class="count" id="sumCart">${sessionScope.sum}</span>
                                                </a>
                                            </div>
                                            <div class="widget kobolg widget_shopping_cart">
                                                <div class="widget_shopping_cart_content">
                                                    <h3 class="minicart-title">Giỏ hàng<span
                                                            class="minicart-number-items">${sessionScope.sum}</span>
                                                    </h3>
                                                    <ul class="kobolg-mini-cart cart_list product_list_widget">
                                                        <li class="kobolg-mini-cart-item mini_cart_item">
                                                            <a href="#" class="remove remove_from_cart_button">×</a>
                                                            <a href="#">
                                                                <img src="/client/images/apro134-1-600x778.jpg"
                                                                    class="attachment-kobolg_thumbnail size-kobolg_thumbnail"
                                                                    alt="img" width="600" height="778">T-shirt with
                                                                skirt –
                                                                Pink&nbsp;
                                                            </a>
                                                            <span class="quantity">1 × <span
                                                                    class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>150.00</span></span>
                                                        </li>
                                                        <li class="kobolg-mini-cart-item mini_cart_item">
                                                            <a href="#" class="remove remove_from_cart_button">×</a>
                                                            <a href="#">
                                                                <img src="/client/images/apro1113-600x778.jpg"
                                                                    class="attachment-kobolg_thumbnail size-kobolg_thumbnail"
                                                                    alt="img" width="600" height="778">Red
                                                                Consoles&nbsp;
                                                            </a>
                                                            <span class="quantity">1 × <span
                                                                    class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>129.00</span></span>
                                                        </li>
                                                        <li class="kobolg-mini-cart-item mini_cart_item">
                                                            <a href="#" class="remove remove_from_cart_button">×</a>
                                                            <a href="#">
                                                                <img src="/client/images/apro201-1-600x778.jpg"
                                                                    class="attachment-kobolg_thumbnail size-kobolg_thumbnail"
                                                                    alt="img" width="600" height="778">Smart
                                                                Monitor&nbsp;
                                                            </a>
                                                            <span class="quantity">1 × <span
                                                                    class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>139.00</span></span>
                                                        </li>
                                                    </ul>
                                                    <p class="kobolg-mini-cart__total total"><strong>Subtotal:</strong>
                                                        <span class="kobolg-Price-amount amount"><span
                                                                class="kobolg-Price-currencySymbol">$</span>418.00</span>
                                                    </p>
                                                    <p class="kobolg-mini-cart__buttons buttons">
                                                        <a href="/cart" class="button kobolg-forward">Xem giỏ hàng</a>
                                                        <a href="#" class="button checkout kobolg-forward">Thanh
                                                            toán</a>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </c:if>
                                    <c:if test="${empty pageContext.request.userPrincipal}">
                                        <div class="header-nav-inner">
                                            <div class="box-header-nav menu-nocenter">
                                                <ul id="menu-primary-menu"
                                                    class="clone-main-menu kobolg-clone-mobile-menu kobolg-nav main-menu">
                                                    <li id="menu-item-237"
                                                        class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-237 parent">
                                                        <a class="kobolg-menu-item-title" title="Đăng nhập"
                                                            href="/login">Đăng nhập</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="header-mobile">
                <div class="header-mobile-left">
                    <div class="block-menu-bar">
                        <a class="menu-bar menu-toggle" href="#">
                            <span></span>
                            <span></span>
                            <span></span>
                        </a>
                    </div>
                    <div class="header-search kobolg-dropdown">
                        <div class="header-search-inner" data-kobolg="kobolg-dropdown">
                            <a href="#" class="link-dropdown block-link">
                                <span class="flaticon-search"></span>
                            </a>
                        </div>
                        <div class="block-search">
                            <form role="search" method="get"
                                class="form-search block-search-form kobolg-live-search-form">
                                <div class="form-content search-box results-search">
                                    <div class="inner">
                                        <input autocomplete="off" class="searchfield txt-livesearch input" name="s"
                                            value="" placeholder="Tìm kiếm..." type="text">
                                    </div>
                                </div>
                                <input name="post_type" value="product" type="hidden">
                                <input name="taxonomy" value="product_cat" type="hidden">
                                <div class="category">
                                    <select title="product_cat" name="product_cat" id="1770352541"
                                        class="category-search-option" tabindex="-1" style="display: none;">
                                        <option value="0">All Categories</option>
                                        <option class="level-0" value="light">Camera</option>
                                        <option class="level-0" value="chair">Accessories</option>
                                        <option class="level-0" value="table">Game & Consoles</option>
                                        <option class="level-0" value="bed">Life style</option>
                                        <option class="level-0" value="new-arrivals">New arrivals</option>
                                        <option class="level-0" value="lamp">Summer Sale</option>
                                        <option class="level-0" value="specials">Specials</option>
                                        <option class="level-0" value="sofas">Featured</option>
                                    </select>
                                </div>
                                <button type="submit" class="btn-submit">
                                    <span class="flaticon-search"></span>
                                </button>
                            </form><!-- block search -->
                        </div>
                    </div>
                    <ul class="wpml-menu">
                        <li class="menu-item kobolg-dropdown block-language">
                            <a href="#" data-kobolg="kobolg-dropdown">
                                <img src="/client/images/en.png" alt="en" width="18" height="12">
                                English
                            </a>
                            <span class="toggle-submenu"></span>
                            <ul class="sub-menu">
                                <li class="menu-item">
                                    <a href="#">
                                        <img src="/client/images/it.png" alt="it" width="18" height="12">
                                        Italiano
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="menu-item">
                            <div class="wcml-dropdown product wcml_currency_switcher">
                                <ul>
                                    <li class="wcml-cs-active-currency">
                                        <a class="wcml-cs-item-toggle">USD</a>
                                        <ul class="wcml-cs-submenu">
                                            <li>
                                                <a>EUR</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="header-mobile-mid">
                    <div class="header-logo">
                        <a href="/"><img alt="Kobolg" src="/client/images/general/logo.png" class="logo"></a>
                    </div>
                </div>
                <div class="header-mobile-right">
                    <div class="header-control-inner">
                        <div class="meta-dreaming">
                            <div class="menu-item block-user block-dreaming kobolg-dropdown">
                                <a class="block-link" href="#">
                                    <span class="flaticon-profile"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li
                                        class="menu-item kobolg-MyAccount-navigation-link kobolg-MyAccount-navigation-link--dashboard is-active">
                                        <a href="#">Dashboard</a>
                                    </li>
                                    <li
                                        class="menu-item kobolg-MyAccount-navigation-link kobolg-MyAccount-navigation-link--orders">
                                        <a href="#">Orders</a>
                                    </li>
                                    <li
                                        class="menu-item kobolg-MyAccount-navigation-link kobolg-MyAccount-navigation-link--downloads">
                                        <a href="#">Downloads</a>
                                    </li>
                                    <li
                                        class="menu-item kobolg-MyAccount-navigation-link kobolg-MyAccount-navigation-link--edit-addresses">
                                        <a href="#">Addresses</a>
                                    </li>
                                    <li
                                        class="menu-item kobolg-MyAccount-navigation-link kobolg-MyAccount-navigation-link--edit-account">
                                        <a href="#">Account details</a>
                                    </li>
                                    <li
                                        class="menu-item kobolg-MyAccount-navigation-link kobolg-MyAccount-navigation-link--customer-logout">
                                        <a href="#">Logout</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="block-minicart block-dreaming kobolg-mini-cart kobolg-dropdown">
                                <div class="shopcart-dropdown block-cart-link" data-kobolg="kobolg-dropdown">
                                    <a class="block-link link-dropdown" href="/cart">
                                        <span class="flaticon-online-shopping-cart"></span>
                                        <span class="count" id="sumCart">${sessionScope.sum}</span>
                                    </a>
                                </div>
                                <div class="widget kobolg widget_shopping_cart">
                                    <div class="widget_shopping_cart_content">
                                        <h3 class="minicart-title">Giỏ hàng<span
                                                class="minicart-number-items">${sessionScope.sum}</span>
                                        </h3>
                                        <ul class="kobolg-mini-cart cart_list product_list_widget">
                                            <li class="kobolg-mini-cart-item mini_cart_item">
                                                <a href="#" class="remove remove_from_cart_button">×</a>
                                                <a href="#">
                                                    <img src="/client/images/apro134-1-600x778.jpg"
                                                        class="attachment-kobolg_thumbnail size-kobolg_thumbnail"
                                                        alt="img" width="600" height="778">T-shirt with skirt –
                                                    Pink&nbsp;
                                                </a>
                                                <span class="quantity">1 × <span
                                                        class="kobolg-Price-amount amount"><span
                                                            class="kobolg-Price-currencySymbol">$</span>150.00</span></span>
                                            </li>
                                            <li class="kobolg-mini-cart-item mini_cart_item">
                                                <a href="#" class="remove remove_from_cart_button">×</a>
                                                <a href="#">
                                                    <img src="/client/images/apro1113-600x778.jpg"
                                                        class="attachment-kobolg_thumbnail size-kobolg_thumbnail"
                                                        alt="img" width="600" height="778">Red Consoles&nbsp;
                                                </a>
                                                <span class="quantity">1 × <span
                                                        class="kobolg-Price-amount amount"><span
                                                            class="kobolg-Price-currencySymbol">$</span>129.00</span></span>
                                            </li>
                                            <li class="kobolg-mini-cart-item mini_cart_item">
                                                <a href="#" class="remove remove_from_cart_button">×</a>
                                                <a href="#">
                                                    <img src="/client/images/apro201-1-600x778.jpg"
                                                        class="attachment-kobolg_thumbnail size-kobolg_thumbnail"
                                                        alt="img" width="600" height="778">Smart Monitor&nbsp;
                                                </a>
                                                <span class="quantity">1 × <span
                                                        class="kobolg-Price-amount amount"><span
                                                            class="kobolg-Price-currencySymbol">$</span>139.00</span></span>
                                            </li>
                                        </ul>
                                        <p class="kobolg-mini-cart__total total"><strong>Subtotal:</strong>
                                            <span class="kobolg-Price-amount amount"><span
                                                    class="kobolg-Price-currencySymbol">$</span>418.00</span>
                                        </p>
                                        <p class="kobolg-mini-cart__buttons buttons">
                                            <a href="/cart" class="button kobolg-forward">Xem giỏ hàng</a>
                                            <a href="#" class="button checkout kobolg-forward">
                                                Thanh toán</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>