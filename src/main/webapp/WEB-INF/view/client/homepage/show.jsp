<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

            <!DOCTYPE html>
            <html lang="en">

            <jsp:include page="../layout/head.jsp">
                <jsp:param name="pageTitle" value="Trang chủ" />
            </jsp:include>

            <body>

                <jsp:include page="../layout/header.jsp" />

                <!--  Content Start -->
                <div class="fullwidth-template">

                    <!--  Banner -->
                    <jsp:include page="../layout/banner.jsp" />

                    <!-- <div class="section-045">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-12 col-md-6 col-lg-6">
                                    <div class="kobolg-banner style-01">
                                        <div class="banner-inner">
                                            <figure class="banner-thumb">
                                                <img src="/client/images/banner41.jpg" class="attachment-full size-full"
                                                    alt="img">
                                            </figure>
                                            <div class="banner-info">
                                                <div class="banner-content">
                                                    <div class="title-wrap">
                                                        <div class="banner-label">
                                                            Modern Mobile
                                                        </div>
                                                        <h6 class="title">
                                                            New Collection </h6>
                                                    </div>
                                                    <div class="button-wrap">
                                                        <a class="button" target="_self" href="#"><span>Shop
                                                                now</span></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-6 col-lg-6">
                                    <div class="kobolg-banner style-01">
                                        <div class="banner-inner">
                                            <figure class="banner-thumb">
                                                <img src="/client/images/banner42.jpg" class="attachment-full size-full"
                                                    alt="img">
                                            </figure>
                                            <div class="banner-info">
                                                <div class="banner-content">
                                                    <div class="title-wrap">
                                                        <div class="banner-label">
                                                            Smart Watcher
                                                        </div>
                                                        <h6 class="title">
                                                            Best Seller </h6>
                                                    </div>
                                                    <div class="button-wrap">
                                                        <a class="button" target="_self" href="#"><span>Shop
                                                                now</span></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> -->

                    <div class="section-022" style="margin-top: -13rem;">
                        <div class="container">
                            <div class="kobolg-tabs style-01">
                                <div class="tab-head">
                                    <ul class="tab-link equal-container " data-loop="1">
                                        <li class="active">
                                            <a class="loaded" data-ajax="0" data-animate=""
                                                data-section="1547652538969-4e9e849f-123a" data-id="330"
                                                href="#1547652538969-4e9e849f-123a-5d80aefaa70e2">
                                                <span>Mẫu mới</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a class="" data-ajax="0" data-animate=""
                                                data-section="1547652726354-2b0cdba5-80e9" data-id="330"
                                                href="#1547652726354-2b0cdba5-80e9-5d80aefaa70e2">
                                                <span>Bán chạy</span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a class="" data-ajax="0" data-animate=""
                                                data-section="1547652725565-7e88bea3-ede2" data-id="330"
                                                href="#1547652725565-7e88bea3-ede2-5d80aefaa70e2">
                                                <span>Nổi bật</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="tab-container">
                                    <div class="tab-panel active" id="1547652538969-4e9e849f-123a-5d80aefaa70e2">
                                        <div class="kobolg-products style-01">
                                            <div
                                                class="response-product product-list-grid row auto-clear equal-container better-height ">

                                                <!-- Start product items -->
                                                <c:forEach var="product" items="${products}">
                                                    <div
                                                        class="product-item recent-product style-01 rows-space-30 col-bg-3 col-xl-3 col-lg-4 col-md-4 col-sm-6 col-ts-6 post-36 product type-product status-publish has-post-thumbnail product_cat-table product_cat-bed product_tag-light product_tag-table product_tag-sock first instock sale shipping-taxable purchasable product-type-simple">
                                                        <div class="product-inner tooltip-left">
                                                            <div class="product-thumb">
                                                                <a class="thumb-link" href="#">
                                                                    <img class="img-responsive"
                                                                        src="/admin/images/product/${product.image}"
                                                                        alt="${product.name}" width="270" height="350">
                                                                </a>

                                                                <!-- <div class="flash">
                                                                    <span class="onsale"><span
                                                                            class="number">-21%</span></span>
                                                                    <span class="onnew"><span
                                                                            class="text">New</span></span>
                                                                </div> -->

                                                                <!-- <form class="variations_form cart">
                                                                    <table class="variations">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td class="value">
                                                                                    <select title="box_style"
                                                                                        data-attributetype="box_style"
                                                                                        data-id="pa_color"
                                                                                        class="attribute-select "
                                                                                        name="attribute_pa_color"
                                                                                        data-attribute_name="attribute_pa_color"
                                                                                        data-show_option_none="yes">
                                                                                        <option data-type=""
                                                                                            data-pa_color="" value="">
                                                                                            Choose
                                                                                            an
                                                                                            option
                                                                                        </option>
                                                                                        <option data-width="30"
                                                                                            data-height="30"
                                                                                            data-type="color"
                                                                                            data-pa_color="#000000"
                                                                                            value="black"
                                                                                            class="attached enabled">
                                                                                            Black
                                                                                        </option>
                                                                                        <option data-width="30"
                                                                                            data-height="30"
                                                                                            data-type="color"
                                                                                            data-pa_color="#db2b00"
                                                                                            value="red"
                                                                                            class="attached enabled">Red
                                                                                        </option>
                                                                                    </select>
                                                                                    <div class="data-val attribute-pa_color"
                                                                                        data-attributetype="box_style">
                                                                                        <a class="change-value color"
                                                                                            href="#"
                                                                                            style="background: #000000;"
                                                                                            data-value="black"></a><a
                                                                                            class="change-value color"
                                                                                            href="#"
                                                                                            style="background: #db2b00;"
                                                                                            data-value="red"></a>
                                                                                    </div>
                                                                                    <a class="reset_variations" href="#"
                                                                                        style="visibility: hidden;">Clear</a>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </form> -->

                                                                <div class="group-button">
                                                                    <!-- <div class="yith-wcwl-add-to-wishlist">
                                                                        <div class="yith-wcwl-add-button show">
                                                                            <a href="#" class="add_to_wishlist">Add to
                                                                                Wishlist</a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="kobolg product compare-button">
                                                                        <a href="#" class="compare button">Compare</a>
                                                                    </div> -->
                                                                    <a href="#" class="button yith-wcqv-button">
                                                                        Quick View
                                                                    </a>
                                                                    <div class="add-to-cart">
                                                                        <a href="#" data-product-id="${product.id}"
                                                                            class="btnAddToCartHomepage button product_type_simple add_to_cart_button ajax_add_to_cart">
                                                                            Add to cart
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="product-info equal-elem">
                                                                <h3 class="product-name product_title">
                                                                    <a href="/product/${product.id}">${product.name}</a>
                                                                </h3>
                                                                <!-- <div class="rating-wapper nostar">
                                                                    <div class="star-rating"><span
                                                                            style="width:0%">Rated
                                                                            <strong class="rating">0</strong> out of
                                                                            5</span></div>
                                                                    <span class="review">(0)</span>
                                                                </div> -->

                                                                <!-- <div class="rating-wapper ">
                                                                    <div class="star-rating">
                                                                        <span style="width:100%">
                                                                            Rated <strong class="rating">5.00</strong> out of 5
                                                                        </span>
                                                                    </div>
                                                                    <span class="review">(1)</span>
                                                                </div> -->

                                                                <span class="price">
                                                                    <span class="kobolg-Price-amount amount">
                                                                        <fmt:formatNumber type="number"
                                                                            value="${product.price}" />
                                                                        <span class="kobolg-Price-currencySymbol">
                                                                            đ</span>
                                                                    </span>
                                                                </span>

                                                                <!-- <span class="price"><del><span
                                                                            class="kobolg-Price-amount amount"><span
                                                                                class="kobolg-Price-currencySymbol">$</span>125.00</span></del>
                                                                    <ins><span class="kobolg-Price-amount amount"><span
                                                                                class="kobolg-Price-currencySymbol">$</span>99.00</span></ins></span> -->

                                                                <!-- <span class="price"><span
                                                                    class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>56.00</span>
                                                                – <span class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>60.00</span></span> -->
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                                <!-- End product items -->

                                            </div>
                                            <!-- OWL Products -->
                                        </div>
                                    </div>
                                    <div class="tab-panel " id="1547652726354-2b0cdba5-80e9-5d80aefaa70e2">
                                        <div class="kobolg-products style-01   kobolg_custom_5d67efefedff9 ">
                                            <div
                                                class="response-product product-list-grid row auto-clear equal-container better-height ">
                                                <div
                                                    class="product-item top-rated style-01 rows-space-30 col-bg-3 col-xl-3 col-lg-4 col-md-4 col-sm-6 col-ts-6 post-26 product type-product status-publish has-post-thumbnail product_cat-light product_cat-chair product_cat-sofas product_tag-light product_tag-hat last instock featured shipping-taxable product-type-external">
                                                    <div class="product-inner tooltip-left">
                                                        <div class="product-thumb">
                                                            <a class="thumb-link" href="#">
                                                                <img class="img-responsive"
                                                                    src="/client/images/apro141-1-270x350.jpg"
                                                                    alt="Smart Monitor" width="270" height="350">
                                                            </a>
                                                            <div class="flash">
                                                                <span class="onnew"><span class="text">New</span></span>
                                                            </div>
                                                            <div class="group-button">
                                                                <div class="yith-wcwl-add-to-wishlist">
                                                                    <div class="yith-wcwl-add-button show">
                                                                        <a href="#" class="add_to_wishlist">Add to
                                                                            Wishlist</a>
                                                                    </div>
                                                                </div>
                                                                <div class="kobolg product compare-button">
                                                                    <a href="#" class="compare button">Compare</a>
                                                                </div>
                                                                <a href="#" class="button yith-wcqv-button">Quick
                                                                    View</a>
                                                                <div class="add-to-cart">
                                                                    <a href="#"
                                                                        class="button product_type_simple add_to_cart_button ajax_add_to_cart">Buy
                                                                        it on Amazon</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="product-info equal-elem">
                                                            <h3 class="product-name product_title">
                                                                <a href="#">Dining Accessories</a>
                                                            </h3>
                                                            <div class="rating-wapper ">
                                                                <div class="star-rating"><span style="width:100%">Rated
                                                                        <strong class="rating">5.00</strong> out of
                                                                        5</span></div>
                                                                <span class="review">(1)</span>
                                                            </div>
                                                            <span class="price"><span
                                                                    class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>207.00</span></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- OWL Products -->
                                        </div>
                                    </div>
                                    <div class="tab-panel " id="1547652725565-7e88bea3-ede2-5d80aefaa70e2">
                                        <div class="kobolg-products style-01   kobolg_custom_5d67efefee7c9 ">
                                            <div
                                                class="response-product product-list-grid row auto-clear equal-container better-height ">
                                                <div
                                                    class="product-item featured_products style-01 rows-space-30 col-bg-3 col-xl-3 col-lg-4 col-md-4 col-sm-6 col-ts-6 post-34 product type-product status-publish has-post-thumbnail product_cat-light product_cat-new-arrivals product_tag-light product_tag-hat product_tag-sock  instock sale featured shipping-taxable product-type-grouped">
                                                    <div class="product-inner tooltip-left">
                                                        <div class="product-thumb">
                                                            <a class="thumb-link" href="#">
                                                                <img class="img-responsive"
                                                                    src="/client/images/apro61-1-270x350.jpg"
                                                                    alt="Black Watches" width="270" height="350">
                                                            </a>
                                                            <div class="flash">
                                                                <span class="onnew"><span class="text">New</span></span>
                                                            </div>
                                                            <div class="group-button">
                                                                <div class="yith-wcwl-add-to-wishlist">
                                                                    <div class="yith-wcwl-add-button show">
                                                                        <a href="#" class="add_to_wishlist">Add to
                                                                            Wishlist</a>
                                                                    </div>
                                                                </div>
                                                                <div class="kobolg product compare-button">
                                                                    <a href="#" class="compare button">Compare</a>
                                                                </div>
                                                                <a href="#" class="button yith-wcqv-button">Quick
                                                                    View</a>
                                                                <div class="add-to-cart">
                                                                    <a href="#"
                                                                        class="button product_type_simple add_to_cart_button ajax_add_to_cart">Add
                                                                        to cart</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="product-info equal-elem">
                                                            <h3 class="product-name product_title">
                                                                <a href="#">Black Watches</a>
                                                            </h3>
                                                            <div class="rating-wapper nostar">
                                                                <div class="star-rating"><span style="width:0%">Rated
                                                                        <strong class="rating">0</strong> out of
                                                                        5</span></div>
                                                                <span class="review">(0)</span>
                                                            </div>
                                                            <span class="price"><span
                                                                    class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>79.00</span>
                                                                – <span class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>139.00</span></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- OWL Products -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="section-023">
                        <div class="kobolg-banner style-11 left-center">
                            <div class="banner-inner">
                                <figure class="banner-thumb">
                                    <img src="/client/images/banner4-41.jpg" class="attachment-full size-full"
                                        alt="img">
                                </figure>
                                <div class="banner-info container">
                                    <div class="banner-content">
                                        <div class="title-wrap">
                                            <div class="banner-label">
                                                Super Sale!
                                            </div>
                                            <h6 class="title">
                                                Up To 40% Off </h6>
                                        </div>
                                        <div class="button-wrap">
                                            <div class="subtitle">
                                                Lorem ipsum dolor sit amet consectetur adipiscing, elit at porttitor
                                                tincidunt venenatis sapien,
                                                eros scelerisque lobortis ac pharetra.
                                            </div>
                                            <a class="button" target=" _blank" href="#"><span>Shop now</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="section-001">
                        <div class="container">
                            <div class="kobolg-heading style-01">
                                <div class="heading-inner">
                                    <h3 class="title">
                                        Follow Us </h3>
                                    <div class="subtitle">
                                        @kobolgshop
                                    </div>
                                </div>
                            </div>
                            <div class="kobolg-instagram style-01">
                                <div class="instagram-owl owl-slick"
                                    data-slick="{&quot;arrows&quot;:false,&quot;slidesMargin&quot;:10,&quot;dots&quot;:false,&quot;infinite&quot;:false,&quot;speed&quot;:300,&quot;slidesToShow&quot;:4,&quot;rows&quot;:1}"
                                    data-responsive="[{&quot;breakpoint&quot;:480,&quot;settings&quot;:{&quot;slidesToShow&quot;:2,&quot;slidesMargin&quot;:&quot;10&quot;}},{&quot;breakpoint&quot;:768,&quot;settings&quot;:{&quot;slidesToShow&quot;:2,&quot;slidesMargin&quot;:&quot;10&quot;}},{&quot;breakpoint&quot;:992,&quot;settings&quot;:{&quot;slidesToShow&quot;:3,&quot;slidesMargin&quot;:&quot;10&quot;}},{&quot;breakpoint&quot;:1200,&quot;settings&quot;:{&quot;slidesToShow&quot;:3,&quot;slidesMargin&quot;:&quot;10&quot;}},{&quot;breakpoint&quot;:1500,&quot;settings&quot;:{&quot;slidesToShow&quot;:4,&quot;slidesMargin&quot;:&quot;10&quot;}}]">
                                    <div class="rows-space-0">
                                        <a target="_blank" href="#" class="item" tabindex="0">
                                            <img class="img-responsive lazy" src="/client/images/insta1.jpg"
                                                alt="Home 04">
                                            <span class="instagram-info">
                                                <span class="social-wrap">
                                                    <span class="social-info">1
                                                        <i class="flaticon-chat"></i>
                                                    </span>
                                                    <span class="social-info">0
                                                        <i class="flaticon-heart-shape-outline"></i>
                                                    </span>
                                                </span>
                                            </span>
                                        </a>
                                    </div>
                                    <div class="rows-space-0">
                                        <a target="_blank" href="#" class="item" tabindex="0">
                                            <img class="img-responsive lazy" src="/client/images/insta2.jpg"
                                                alt="Home 04">
                                            <span class="instagram-info">
                                                <span class="social-wrap">
                                                    <span class="social-info">1
                                                        <i class="flaticon-chat"></i>
                                                    </span>
                                                    <span class="social-info">0
                                                        <i class="flaticon-heart-shape-outline"></i>
                                                    </span>
                                                </span>
                                            </span>
                                        </a>
                                    </div>
                                    <div class="rows-space-0">
                                        <a target="_blank" href="#" class="item" tabindex="0">
                                            <img class="img-responsive lazy" src="/client/images/insta3.jpg"
                                                alt="Home 04">
                                            <span class="instagram-info">
                                                <span class="social-wrap">
                                                    <span class="social-info">1
                                                        <i class="flaticon-chat"></i>
                                                    </span>
                                                    <span class="social-info">0
                                                        <i class="flaticon-heart-shape-outline"></i>
                                                    </span>
                                                </span>
                                            </span>
                                        </a>
                                    </div>
                                    <div class="rows-space-0">
                                        <a target="_blank" href="#" class="item" tabindex="0">
                                            <img class="img-responsive lazy" src="/client/images/insta4.jpg"
                                                alt="Home 04">
                                            <span class="instagram-info">
                                                <span class="social-wrap">
                                                    <span class="social-info">1
                                                        <i class="flaticon-chat"></i>
                                                    </span>
                                                    <span class="social-info">0
                                                        <i class="flaticon-heart-shape-outline"></i>
                                                    </span>
                                                </span>
                                            </span>
                                        </a>
                                    </div>
                                    <div class="rows-space-0">
                                        <a target="_blank" href="#" class="item" tabindex="0">
                                            <img class="img-responsive lazy" src="/client/images/insta5.jpg"
                                                alt="Home 04">
                                            <span class="instagram-info">
                                                <span class="social-wrap">
                                                    <span class="social-info">1
                                                        <i class="flaticon-chat"></i>
                                                    </span>
                                                    <span class="social-info">0
                                                        <i class="flaticon-heart-shape-outline"></i>
                                                    </span>
                                                </span>
                                            </span>
                                        </a>
                                    </div>
                                    <div class="rows-space-0">
                                        <a target="_blank" href="#" class="item" tabindex="0">
                                            <img class="img-responsive lazy" src="/client/images/insta6.jpg"
                                                alt="Home 04">
                                            <span class="instagram-info">
                                                <span class="social-wrap">
                                                    <span class="social-info">1
                                                        <i class="flaticon-chat"></i>
                                                    </span>
                                                    <span class="social-info">0
                                                        <i class="flaticon-heart-shape-outline"></i>
                                                    </span>
                                                </span>
                                            </span>
                                        </a>
                                    </div>
                                    <div class="rows-space-0">
                                        <a target="_blank" href="#" class="item" tabindex="0">
                                            <img class="img-responsive lazy" src="/client/images/insta7.jpg"
                                                alt="Home 04">
                                            <span class="instagram-info">
                                                <span class="social-wrap">
                                                    <span class="social-info">1
                                                        <i class="flaticon-chat"></i>
                                                    </span>
                                                    <span class="social-info">0
                                                        <i class="flaticon-heart-shape-outline"></i>
                                                    </span>
                                                </span>
                                            </span>
                                        </a>
                                    </div>
                                    <div class="rows-space-0">
                                        <a target="_blank" href="#" class="item" tabindex="0">
                                            <img class="img-responsive lazy" src="/client/images/insta8.jpg"
                                                alt="Home 04">
                                            <span class="instagram-info">
                                                <span class="social-wrap">
                                                    <span class="social-info">1
                                                        <i class="flaticon-chat"></i>
                                                    </span>
                                                    <span class="social-info">0
                                                        <i class="flaticon-heart-shape-outline"></i>
                                                    </span>
                                                </span>
                                            </span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="container">
                        <div class="border-top-1"></div>
                    </div>
                    <div class="section-001 section-024">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12 col-lg-4">
                                    <div class="kobolg-products style-06">
                                        <h3 class="title">
                                            <span>Best selling</span>
                                        </h3>
                                        <div class="response-product product-list-owl owl-slick equal-container better-height"
                                            data-slick="{&quot;arrows&quot;:true,&quot;slidesMargin&quot;:30,&quot;dots&quot;:false,&quot;infinite&quot;:false,&quot;speed&quot;:300,&quot;slidesToShow&quot;:1,&quot;rows&quot;:3}"
                                            data-responsive="[{&quot;breakpoint&quot;:480,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesMargin&quot;:&quot;10&quot;}},{&quot;breakpoint&quot;:768,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesMargin&quot;:&quot;10&quot;}},{&quot;breakpoint&quot;:992,&quot;settings&quot;:{&quot;slidesToShow&quot;:2,&quot;slidesMargin&quot;:&quot;20&quot;}},{&quot;breakpoint&quot;:1200,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesMargin&quot;:&quot;20&quot;}},{&quot;breakpoint&quot;:1500,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesMargin&quot;:&quot;30&quot;}}]">
                                            <div
                                                class="product-item best-selling style-06 rows-space-30 post-25 product type-product status-publish has-post-thumbnail product_cat-light product_cat-chair product_cat-specials product_tag-light product_tag-sock first instock sale featured shipping-taxable purchasable product-type-simple">
                                                <div class="product-inner">
                                                    <div class="product-thumb">
                                                        <a class="thumb-link" href="#" tabindex="0">
                                                            <img class="img-responsive"
                                                                src="/client/images/apro151-1-90x90.jpg"
                                                                alt="Cellphone Factory" width="90" height="90">
                                                        </a>
                                                    </div>
                                                    <div class="product-info">
                                                        <h3 class="product-name product_title">
                                                            <a href="#" tabindex="0">Cellphone Factory</a>
                                                        </h3>
                                                        <div class="rating-wapper nostar">
                                                            <div class="star-rating"><span style="width:0%">Rated
                                                                    <strong class="rating">0</strong> out of 5</span>
                                                            </div>
                                                            <span class="review">(0)</span>
                                                        </div>
                                                        <span class="price"><del><span
                                                                    class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>89.00</span></del>
                                                            <ins><span class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>79.00</span></ins></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div
                                                class="product-item best-selling style-06 rows-space-30 post-23 product type-product status-publish has-post-thumbnail product_cat-chair product_cat-lamp product_cat-sofas product_tag-hat  instock shipping-taxable purchasable product-type-variable has-default-attributes">
                                                <div class="product-inner">
                                                    <div class="product-thumb">
                                                        <a class="thumb-link" href="#" tabindex="0">
                                                            <img class="img-responsive"
                                                                src="/client/images/apro171-1-90x90.jpg"
                                                                alt="Photo Camera" width="90" height="90">
                                                        </a>
                                                    </div>
                                                    <div class="product-info">
                                                        <h3 class="product-name product_title">
                                                            <a href="#" tabindex="0">Photo Camera</a>
                                                        </h3>
                                                        <div class="rating-wapper nostar">
                                                            <div class="star-rating"><span style="width:0%">Rated
                                                                    <strong class="rating">0</strong> out of 5</span>
                                                            </div>
                                                            <span class="review">(0)</span>
                                                        </div>
                                                        <span class="price"><span
                                                                class="kobolg-Price-amount amount"><span
                                                                    class="kobolg-Price-currencySymbol">$</span>105.00</span>
                                                            – <span class="kobolg-Price-amount amount"><span
                                                                    class="kobolg-Price-currencySymbol">$</span>110.00</span></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div
                                                class="product-item best-selling style-06 rows-space-30 post-32 product type-product status-publish has-post-thumbnail product_cat-light product_cat-chair product_cat-sofas product_tag-hat product_tag-sock last instock sale featured shipping-taxable purchasable product-type-simple">
                                                <div class="product-inner">
                                                    <div class="product-thumb">
                                                        <a class="thumb-link" href="#" tabindex="0">
                                                            <img class="img-responsive"
                                                                src="/client/images/apro71-1-90x90.jpg"
                                                                alt="Gaming Mouse" width="90" height="90">
                                                        </a>
                                                    </div>
                                                    <div class="product-info">
                                                        <h3 class="product-name product_title">
                                                            <a href="#" tabindex="0">Gaming Mouse</a>
                                                        </h3>
                                                        <div class="rating-wapper nostar">
                                                            <div class="star-rating"><span style="width:0%">Rated
                                                                    <strong class="rating">0</strong> out of 5</span>
                                                            </div>
                                                            <span class="review">(0)</span>
                                                        </div>
                                                        <span class="price"><del><span
                                                                    class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>109.00</span></del>
                                                            <ins><span class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>89.00</span></ins></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div
                                                class="product-item best-selling style-06 rows-space-30 post-20 product type-product status-publish has-post-thumbnail product_cat-light product_cat-new-arrivals product_cat-specials product_tag-table product_tag-hat product_tag-sock first instock sale featured shipping-taxable purchasable product-type-simple">
                                                <div class="product-inner">
                                                    <div class="product-thumb">
                                                        <a class="thumb-link" href="#" tabindex="-1">
                                                            <img class="img-responsive"
                                                                src="/client/images/apro201-1-90x90.jpg"
                                                                alt="Smart Monitor" width="90" height="90">
                                                        </a>
                                                    </div>
                                                    <div class="product-info">
                                                        <h3 class="product-name product_title">
                                                            <a href="#" tabindex="-1">Smart Monitor</a>
                                                        </h3>
                                                        <div class="rating-wapper nostar">
                                                            <div class="star-rating"><span style="width:0%">Rated
                                                                    <strong class="rating">0</strong> out of 5</span>
                                                            </div>
                                                            <span class="review">(0)</span>
                                                        </div>
                                                        <span class="price"><del><span
                                                                    class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>150.00</span></del>
                                                            <ins><span class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>139.00</span></ins></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div
                                                class="product-item best-selling style-06 rows-space-30 post-36 product type-product status-publish has-post-thumbnail product_cat-table product_cat-bed product_tag-light product_tag-table product_tag-sock  instock sale shipping-taxable purchasable product-type-simple">
                                                <div class="product-inner">
                                                    <div class="product-thumb">
                                                        <a class="thumb-link" href="#" tabindex="-1">
                                                            <img class="img-responsive"
                                                                src="/client/images/apro51012-1-90x90.jpg"
                                                                alt="Multi Cellphone" width="90" height="90">
                                                        </a>
                                                    </div>
                                                    <div class="product-info">
                                                        <h3 class="product-name product_title">
                                                            <a href="#" tabindex="-1">Multi Cellphone</a>
                                                        </h3>
                                                        <div class="rating-wapper nostar">
                                                            <div class="star-rating"><span style="width:0%">Rated
                                                                    <strong class="rating">0</strong> out of 5</span>
                                                            </div>
                                                            <span class="review">(0)</span>
                                                        </div>
                                                        <span class="price"><del><span
                                                                    class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>125.00</span></del>
                                                            <ins><span class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>99.00</span></ins></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div
                                                class="product-item best-selling style-06 rows-space-30 post-49 product type-product status-publish has-post-thumbnail product_cat-light product_cat-bed product_cat-sofas product_tag-multi product_tag-lamp last instock shipping-taxable purchasable product-type-simple">
                                                <div class="product-inner">
                                                    <div class="product-thumb">
                                                        <a class="thumb-link" href="#" tabindex="-1">
                                                            <img class="img-responsive"
                                                                src="/client/images/apro302-90x90.jpg"
                                                                alt="Circle Watches" width="90" height="90">
                                                        </a>
                                                    </div>
                                                    <div class="product-info">
                                                        <h3 class="product-name product_title">
                                                            <a href="#" tabindex="-1">Circle Watches</a>
                                                        </h3>
                                                        <div class="rating-wapper nostar">
                                                            <div class="star-rating"><span style="width:0%">Rated
                                                                    <strong class="rating">0</strong> out of 5</span>
                                                            </div>
                                                            <span class="review">(0)</span>
                                                        </div>
                                                        <span class="price"><span
                                                                class="kobolg-Price-amount amount"><span
                                                                    class="kobolg-Price-currencySymbol">$</span>79.00</span></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div
                                                class="product-item best-selling style-06 rows-space-30 post-93 product type-product status-publish has-post-thumbnail product_cat-light product_cat-table product_cat-new-arrivals product_tag-table product_tag-sock first instock shipping-taxable purchasable product-type-simple">
                                                <div class="product-inner">
                                                    <div class="product-thumb">
                                                        <a class="thumb-link" href="#" tabindex="-1">
                                                            <img class="img-responsive"
                                                                src="/client/images/apro13-1-90x90.jpg"
                                                                alt="Meta Watches                                                "
                                                                width="90" height="90">
                                                        </a>
                                                    </div>
                                                    <div class="product-info">
                                                        <h3 class="product-name product_title">
                                                            <a href="#" tabindex="-1">Meta Watches </a>
                                                        </h3>
                                                        <div class="rating-wapper nostar">
                                                            <div class="star-rating"><span style="width:0%">Rated
                                                                    <strong class="rating">0</strong> out of 5</span>
                                                            </div>
                                                            <span class="review">(0)</span>
                                                        </div>
                                                        <span class="price"><span
                                                                class="kobolg-Price-amount amount"><span
                                                                    class="kobolg-Price-currencySymbol">$</span>109.00</span></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div
                                                class="product-item best-selling style-06 rows-space-30 post-28 product type-product status-publish has-post-thumbnail product_cat-light product_cat-chair product_cat-sofas product_tag-light product_tag-sock  instock sale featured shipping-taxable purchasable product-type-simple">
                                                <div class="product-inner">
                                                    <div class="product-thumb">
                                                        <a class="thumb-link" href="#" tabindex="-1">
                                                            <img class="img-responsive"
                                                                src="/client/images/apro1211-2-90x90.jpg"
                                                                alt="Modern Watches" width="90" height="90">
                                                        </a>
                                                    </div>
                                                    <div class="product-info">
                                                        <h3 class="product-name product_title">
                                                            <a href="#" tabindex="-1">Modern Watches</a>
                                                        </h3>
                                                        <div class="rating-wapper ">
                                                            <div class="star-rating"><span style="width:100%">Rated
                                                                    <strong class="rating">5.00</strong> out of 5</span>
                                                            </div>
                                                            <span class="review">(1)</span>
                                                        </div>
                                                        <span class="price"><del><span
                                                                    class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>138.00</span></del>
                                                            <ins><span class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>119.00</span></ins></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div
                                                class="product-item best-selling style-06 rows-space-30 post-22 product type-product status-publish has-post-thumbnail product_cat-table product_cat-bed product_cat-lamp product_tag-table product_tag-hat product_tag-sock last instock featured downloadable shipping-taxable purchasable product-type-simple">
                                                <div class="product-inner">
                                                    <div class="product-thumb">
                                                        <a class="thumb-link" href="#" tabindex="-1">
                                                            <img class="img-responsive"
                                                                src="/client/images/apro181-2-90x90.jpg" alt="Red Mouse"
                                                                width="90" height="90">
                                                        </a>
                                                    </div>
                                                    <div class="product-info">
                                                        <h3 class="product-name product_title">
                                                            <a href="#" tabindex="-1">Red Mouse</a>
                                                        </h3>
                                                        <div class="rating-wapper nostar">
                                                            <div class="star-rating"><span style="width:0%">Rated
                                                                    <strong class="rating">0</strong> out of 5</span>
                                                            </div>
                                                            <span class="review">(0)</span>
                                                        </div>
                                                        <span class="price"><span
                                                                class="kobolg-Price-amount amount"><span
                                                                    class="kobolg-Price-currencySymbol">$</span>98.00</span></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-6 col-lg-4">
                                    <div class="kobolg-products style-06">
                                        <h3 class="title">
                                            <span>On Sale</span>
                                        </h3>
                                        <div class="response-product product-list-owl owl-slick equal-container better-height"
                                            data-slick="{&quot;arrows&quot;:true,&quot;slidesMargin&quot;:30,&quot;dots&quot;:false,&quot;infinite&quot;:false,&quot;speed&quot;:300,&quot;slidesToShow&quot;:1,&quot;rows&quot;:3}"
                                            data-responsive="[{&quot;breakpoint&quot;:480,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesMargin&quot;:&quot;10&quot;}},{&quot;breakpoint&quot;:768,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesMargin&quot;:&quot;10&quot;}},{&quot;breakpoint&quot;:992,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesMargin&quot;:&quot;20&quot;}},{&quot;breakpoint&quot;:1200,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesMargin&quot;:&quot;20&quot;}},{&quot;breakpoint&quot;:1500,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesMargin&quot;:&quot;30&quot;}}]">
                                            <div
                                                class="product-item on_sale style-06 rows-space-30 post-36 product type-product status-publish has-post-thumbnail product_cat-table product_cat-bed product_tag-light product_tag-table product_tag-sock first instock sale shipping-taxable purchasable product-type-simple">
                                                <div class="product-inner">
                                                    <div class="product-thumb">
                                                        <a class="thumb-link" href="#" tabindex="0">
                                                            <img class="img-responsive"
                                                                src="/client/images/apro51012-1-90x90.jpg"
                                                                alt="Multi Cellphone" width="90" height="90">
                                                        </a>
                                                    </div>
                                                    <div class="product-info">
                                                        <h3 class="product-name product_title">
                                                            <a href="#" tabindex="0">Multi Cellphone</a>
                                                        </h3>
                                                        <div class="rating-wapper nostar">
                                                            <div class="star-rating"><span style="width:0%">Rated
                                                                    <strong class="rating">0</strong> out of 5</span>
                                                            </div>
                                                            <span class="review">(0)</span>
                                                        </div>
                                                        <span class="price"><del><span
                                                                    class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>125.00</span></del>
                                                            <ins><span class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>99.00</span></ins></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div
                                                class="product-item on_sale style-06 rows-space-30 post-32 product type-product status-publish has-post-thumbnail product_cat-light product_cat-chair product_cat-sofas product_tag-hat product_tag-sock  instock sale featured shipping-taxable purchasable product-type-simple">
                                                <div class="product-inner">
                                                    <div class="product-thumb">
                                                        <a class="thumb-link" href="#" tabindex="0">
                                                            <img class="img-responsive"
                                                                src="/client/images/apro71-1-90x90.jpg"
                                                                alt="Gaming Mouse" width="90" height="90">
                                                        </a>
                                                    </div>
                                                    <div class="product-info">
                                                        <h3 class="product-name product_title">
                                                            <a href="#" tabindex="0">Gaming Mouse</a>
                                                        </h3>
                                                        <div class="rating-wapper nostar">
                                                            <div class="star-rating"><span style="width:0%">Rated
                                                                    <strong class="rating">0</strong> out of 5</span>
                                                            </div>
                                                            <span class="review">(0)</span>
                                                        </div>
                                                        <span class="price"><del><span
                                                                    class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>109.00</span></del>
                                                            <ins><span class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>89.00</span></ins></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div
                                                class="product-item on_sale style-06 rows-space-30 post-28 product type-product status-publish has-post-thumbnail product_cat-light product_cat-chair product_cat-sofas product_tag-light product_tag-sock last instock sale featured shipping-taxable purchasable product-type-simple">
                                                <div class="product-inner">
                                                    <div class="product-thumb">
                                                        <a class="thumb-link" href="#" tabindex="0">
                                                            <img class="img-responsive"
                                                                src="/client/images/apro1211-2-90x90.jpg"
                                                                alt="Modern Watches" width="90" height="90">
                                                        </a>
                                                    </div>
                                                    <div class="product-info">
                                                        <h3 class="product-name product_title">
                                                            <a href="#" tabindex="0">Modern Watches</a>
                                                        </h3>
                                                        <div class="rating-wapper ">
                                                            <div class="star-rating"><span style="width:100%">Rated
                                                                    <strong class="rating">5.00</strong> out of 5</span>
                                                            </div>
                                                            <span class="review">(1)</span>
                                                        </div>
                                                        <span class="price"><del><span
                                                                    class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>138.00</span></del>
                                                            <ins><span class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>119.00</span></ins></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div
                                                class="product-item on_sale style-06 rows-space-30 post-25 product type-product status-publish has-post-thumbnail product_cat-light product_cat-chair product_cat-specials product_tag-light product_tag-sock first instock sale featured shipping-taxable purchasable product-type-simple">
                                                <div class="product-inner">
                                                    <div class="product-thumb">
                                                        <a class="thumb-link" href="#" tabindex="-1">
                                                            <img class="img-responsive"
                                                                src="/client/images/apro151-1-90x90.jpg"
                                                                alt="Cellphone Factory" width="90" height="90">
                                                        </a>
                                                    </div>
                                                    <div class="product-info">
                                                        <h3 class="product-name product_title">
                                                            <a href="#" tabindex="-1">Cellphone Factory</a>
                                                        </h3>
                                                        <div class="rating-wapper nostar">
                                                            <div class="star-rating"><span style="width:0%">Rated
                                                                    <strong class="rating">0</strong> out of 5</span>
                                                            </div>
                                                            <span class="review">(0)</span>
                                                        </div>
                                                        <span class="price"><del><span
                                                                    class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>89.00</span></del>
                                                            <ins><span class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>79.00</span></ins></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div
                                                class="product-item on_sale style-06 rows-space-30 post-20 product type-product status-publish has-post-thumbnail product_cat-light product_cat-new-arrivals product_cat-specials product_tag-table product_tag-hat product_tag-sock  instock sale featured shipping-taxable purchasable product-type-simple">
                                                <div class="product-inner">
                                                    <div class="product-thumb">
                                                        <a class="thumb-link" href="#" tabindex="-1">
                                                            <img class="img-responsive"
                                                                src="/client/images/apro201-1-90x90.jpg"
                                                                alt="Smart Monitor" width="90" height="90">
                                                        </a>
                                                    </div>
                                                    <div class="product-info">
                                                        <h3 class="product-name product_title">
                                                            <a href="#" tabindex="-1">Smart Monitor</a>
                                                        </h3>
                                                        <div class="rating-wapper nostar">
                                                            <div class="star-rating"><span style="width:0%">Rated
                                                                    <strong class="rating">0</strong> out of 5</span>
                                                            </div>
                                                            <span class="review">(0)</span>
                                                        </div>
                                                        <span class="price"><del><span
                                                                    class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>150.00</span></del>
                                                            <ins><span class="kobolg-Price-amount amount"><span
                                                                        class="kobolg-Price-currencySymbol">$</span>139.00</span></ins></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-6 col-lg-4">
                                    <div class="kobolg-banner style-12">
                                        <div class="banner-inner">
                                            <figure class="banner-thumb">
                                                <img src="/client/images/banner4-6.jpg"
                                                    class="attachment-full size-full" alt="img">
                                            </figure>
                                            <div class="banner-info ">
                                                <div class="banner-content">
                                                    <div class="banner-label">
                                                        New
                                                    </div>
                                                    <div class="title-wrap">
                                                        <h6 class="title">Collection</h6>
                                                    </div>
                                                    <div class="button-wrap">
                                                        <a class="button" target="_self" href="#"><span>Show
                                                                now</span></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="section-001 section-009">
                        <div class="container">
                            <div class="kobolg-slide">
                                <div class="owl-slick equal-container better-height"
                                    data-slick="{&quot;arrows&quot;:true,&quot;slidesMargin&quot;:60,&quot;dots&quot;:false,&quot;infinite&quot;:false,&quot;speed&quot;:300,&quot;slidesToShow&quot;:5,&quot;rows&quot;:1}"
                                    data-responsive="[{&quot;breakpoint&quot;:480,&quot;settings&quot;:{&quot;slidesToShow&quot;:2,&quot;slidesMargin&quot;:&quot;30&quot;}},{&quot;breakpoint&quot;:768,&quot;settings&quot;:{&quot;slidesToShow&quot;:3,&quot;slidesMargin&quot;:&quot;30&quot;}},{&quot;breakpoint&quot;:992,&quot;settings&quot;:{&quot;slidesToShow&quot;:4,&quot;slidesMargin&quot;:&quot;40&quot;}},{&quot;breakpoint&quot;:1200,&quot;settings&quot;:{&quot;slidesToShow&quot;:4,&quot;slidesMargin&quot;:&quot;50&quot;}},{&quot;breakpoint&quot;:1500,&quot;settings&quot;:{&quot;slidesToShow&quot;:5,&quot;slidesMargin&quot;:&quot;60&quot;}}]">
                                    <div class="dreaming_single_image dreaming_content_element az_align_center">
                                        <figure class="dreaming_wrapper az_figure">
                                            <div class="az_single_image-wrapper   az_box_border_grey effect bounce-in ">
                                                <img src="/client/images/brand-logo-1.png"
                                                    class="az_single_image-img attachment-full" alt="img" width="200"
                                                    height="100">
                                            </div>
                                        </figure>
                                    </div>
                                    <div class="dreaming_single_image dreaming_content_element az_align_center">
                                        <figure class="dreaming_wrapper az_figure">
                                            <div class="az_single_image-wrapper   az_box_border_grey effect bounce-in ">
                                                <img src="/client/images/brand-logo-5.png"
                                                    class="az_single_image-img attachment-full" alt="img" width="200"
                                                    height="100">
                                            </div>
                                        </figure>
                                    </div>
                                    <div class="dreaming_single_image dreaming_content_element az_align_center">
                                        <figure class="dreaming_wrapper az_figure">
                                            <div class="az_single_image-wrapper   az_box_border_grey effect bounce-in ">
                                                <img src="/client/images/brand-logo-4.png"
                                                    class="az_single_image-img attachment-full" alt="img" width="200"
                                                    height="100">
                                            </div>
                                        </figure>
                                    </div>
                                    <div class="dreaming_single_image dreaming_content_element az_align_center">
                                        <figure class="dreaming_wrapper az_figure">
                                            <div class="az_single_image-wrapper   az_box_border_grey effect bounce-in ">
                                                <img src="/client/images/brand-logo-3.png"
                                                    class="az_single_image-img attachment-full" alt="img" width="200"
                                                    height="100">
                                            </div>
                                        </figure>
                                    </div>
                                    <div class="dreaming_single_image dreaming_content_element az_align_center">
                                        <figure class="dreaming_wrapper az_figure">
                                            <div class="az_single_image-wrapper   az_box_border_grey effect bounce-in ">
                                                <img src="/client/images/brand-logo-2.png"
                                                    class="az_single_image-img attachment-full" alt="img" width="200"
                                                    height="100">
                                            </div>
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="section-001">
                        <div class="container">
                            <div class="kobolg-heading style-01">
                                <div class="heading-inner">
                                    <h3 class="title">
                                        From Our Blog</h3>
                                    <div class="subtitle">
                                        Lorem ipsum dolor sit amet consectetur adipiscing elit erat vehicula ad, mollis
                                        viverra
                                        vulputate
                                    </div>
                                </div>
                            </div>
                            <div class="kobolg-blog style-01">
                                <div class="blog-list-owl owl-slick equal-container better-height"
                                    data-slick="{&quot;arrows&quot;:false,&quot;slidesMargin&quot;:30,&quot;dots&quot;:true,&quot;infinite&quot;:false,&quot;speed&quot;:300,&quot;slidesToShow&quot;:3,&quot;rows&quot;:1}"
                                    data-responsive="[{&quot;breakpoint&quot;:480,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesMargin&quot;:&quot;10&quot;}},{&quot;breakpoint&quot;:768,&quot;settings&quot;:{&quot;slidesToShow&quot;:1,&quot;slidesMargin&quot;:&quot;10&quot;}},{&quot;breakpoint&quot;:992,&quot;settings&quot;:{&quot;slidesToShow&quot;:2,&quot;slidesMargin&quot;:&quot;20&quot;}},{&quot;breakpoint&quot;:1200,&quot;settings&quot;:{&quot;slidesToShow&quot;:2,&quot;slidesMargin&quot;:&quot;20&quot;}},{&quot;breakpoint&quot;:1500,&quot;settings&quot;:{&quot;slidesToShow&quot;:3,&quot;slidesMargin&quot;:&quot;30&quot;}}]">
                                    <article
                                        class="post-item post-grid rows-space-0 post-195 post type-post status-publish format-standard has-post-thumbnail hentry category-light category-table category-life-style tag-light tag-life-style">
                                        <div class="post-inner blog-grid">
                                            <div class="post-thumb">
                                                <a href="#" tabindex="0">
                                                    <img src="/client/images/blogpost1-370x330.jpg"
                                                        class="img-responsive attachment-370x330 size-370x330" alt="img"
                                                        width="370" height="330"> </a>
                                                <a class="datebox" href="#" tabindex="0">
                                                    <span>19</span>
                                                    <span>Dec</span>
                                                </a>
                                            </div>
                                            <div class="post-content">
                                                <div class="post-meta">
                                                    <div class="post-author">
                                                        By:<a href="#" tabindex="0">
                                                            admin </a>
                                                    </div>
                                                    <div class="post-comment-icon">
                                                        <a href="#" tabindex="0">
                                                            0 </a>
                                                    </div>
                                                </div>
                                                <div class="post-info equal-elem">
                                                    <h2 class="post-title"><a href="#" tabindex="0">Not your ordinary
                                                            multi service.</a></h2>
                                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Malesuada
                                                    sodales
                                                    quisque litora dapibus primis lacinia
                                                </div>
                                            </div>
                                        </div>
                                    </article>
                                    <article
                                        class="post-item post-grid rows-space-0 post-192 post type-post status-publish format-standard has-post-thumbnail hentry category-light category-fashion category-multi category-life-style tag-light tag-fashion tag-multi">
                                        <div class="post-inner blog-grid">
                                            <div class="post-thumb">
                                                <a href="#" tabindex="0">
                                                    <img src="/client/images/blogpost5-370x330.jpg"
                                                        class="img-responsive attachment-370x330 size-370x330" alt="img"
                                                        width="370" height="330"> </a>
                                                <a class="datebox" href="#" tabindex="0">
                                                    <span>19</span>
                                                    <span>Dec</span>
                                                </a>
                                            </div>
                                            <div class="post-content">
                                                <div class="post-meta">
                                                    <div class="post-author">
                                                        By:<a href="#" tabindex="0">
                                                            admin </a>
                                                    </div>
                                                    <div class="post-comment-icon">
                                                        <a href="#" tabindex="0">
                                                            0 </a>
                                                    </div>
                                                </div>
                                                <div class="post-info equal-elem">
                                                    <h2 class="post-title"><a href="#" tabindex="0">We bring you the
                                                            best by working</a></h2>
                                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Malesuada
                                                    sodales
                                                    quisque litora dapibus primis lacinia
                                                </div>
                                            </div>
                                        </div>
                                    </article>
                                    <article
                                        class="post-item post-grid rows-space-0 post-189 post type-post status-publish format-video has-post-thumbnail hentry category-table category-life-style tag-multi tag-life-style post_format-post-format-video">
                                        <div class="post-inner blog-grid">
                                            <div class="post-thumb">
                                                <a href="#" tabindex="0">
                                                    <img src="/client/images/blogpost9-370x330.jpg"
                                                        class="img-responsive attachment-370x330 size-370x330" alt="img"
                                                        width="370" height="330"> </a>
                                                <a class="datebox" href="#" tabindex="0">
                                                    <span>19</span>
                                                    <span>Dec</span>
                                                </a>
                                            </div>
                                            <div class="post-content">
                                                <div class="post-meta">
                                                    <div class="post-author">
                                                        By:<a href="#" tabindex="0">
                                                            admin </a>
                                                    </div>
                                                    <div class="post-comment-icon">
                                                        <a href="#" tabindex="0">
                                                            0 </a>
                                                    </div>
                                                </div>
                                                <div class="post-info equal-elem">
                                                    <h2 class="post-title"><a href="#" tabindex="0">We design functional
                                                            best multi</a></h2>
                                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Malesuada
                                                    sodales
                                                    quisque litora dapibus primis lacinia
                                                </div>
                                            </div>
                                        </div>
                                    </article>
                                    <article
                                        class="post-item post-grid rows-space-0 post-186 post type-post status-publish format-standard has-post-thumbnail hentry category-light category-life-style tag-life-style">
                                        <div class="post-inner blog-grid">
                                            <div class="post-thumb">
                                                <a href="#" tabindex="-1">
                                                    <img src="/client/images/blogpost4-370x330.jpg"
                                                        class="img-responsive attachment-370x330 size-370x330" alt="img"
                                                        width="370" height="330"> </a>
                                                <a class="datebox" href="#" tabindex="-1">
                                                    <span>19</span>
                                                    <span>Dec</span>
                                                </a>
                                            </div>
                                            <div class="post-content">
                                                <div class="post-meta">
                                                    <div class="post-author">
                                                        By:<a href="#" tabindex="-1">
                                                            admin </a>
                                                    </div>
                                                    <div class="post-comment-icon">
                                                        <a href="#" tabindex="-1">
                                                            0 </a>
                                                    </div>
                                                </div>
                                                <div class="post-info equal-elem">
                                                    <h2 class="post-title"><a href="#" tabindex="-1">The child is
                                                            swimming with a buoy</a></h2>
                                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Malesuada
                                                    sodales
                                                    quisque litora dapibus primis lacinia
                                                </div>
                                            </div>
                                        </div>
                                    </article>
                                    <article
                                        class="post-item post-grid rows-space-0 post-183 post type-post status-publish format-standard has-post-thumbnail hentry category-light category-fashion tag-light tag-multi">
                                        <div class="post-inner blog-grid">
                                            <div class="post-thumb">
                                                <a href="#" tabindex="-1">
                                                    <img src="/client/images/blogpost2-370x330.jpg"
                                                        class="img-responsive attachment-370x330 size-370x330" alt="img"
                                                        width="370" height="330"> </a>
                                                <a class="datebox" href="#" tabindex="-1">
                                                    <span>19</span>
                                                    <span>Dec</span>
                                                </a>
                                            </div>
                                            <div class="post-content">
                                                <div class="post-meta">
                                                    <div class="post-author">
                                                        By:<a href="#" tabindex="-1">
                                                            admin </a>
                                                    </div>
                                                    <div class="post-comment-icon">
                                                        <a href="#" tabindex="-1">
                                                            0 </a>
                                                    </div>
                                                </div>
                                                <div class="post-info equal-elem">
                                                    <h2 class="post-title"><a href="#" tabindex="-1">Collection hiding
                                                            beside beige wall</a></h2>
                                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Malesuada
                                                    sodales
                                                    quisque litora dapibus primis lacinia
                                                </div>
                                            </div>
                                        </div>
                                    </article>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Content End -->

                <jsp:include page="../components/newsletter.jsp" />
                <jsp:include page="../layout/footer.jsp" />
                <jsp:include page="../layout/foot.jsp" />
            </body>

            </html>