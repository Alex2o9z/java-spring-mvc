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

                    <div class="section-045">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-12 col-md-6 col-lg-6">
                                    <div class="kobolg-banner style-01">
                                        <div class="banner-inner">
                                            <figure class="banner-thumb">
                                                <img src="/client/images/home_banner_001.png"
                                                    class="attachment-full size-full" alt="img">
                                            </figure>
                                            <div class="banner-info">
                                                <div class="banner-content">
                                                    <div class="title-wrap">
                                                        <!-- <div class="banner-label">
                                                            Modern Mobile
                                                        </div> -->
                                                        <h6 class="title">
                                                            Hàng mới về </h6>
                                                    </div>
                                                    <div class="button-wrap">
                                                        <a class="button" target="_self" href="/products">
                                                            <span>Mua ngay</span></a>
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
                                                <img src="/client/images/home_banner_002.png"
                                                    class="attachment-full size-full" alt="img">
                                            </figure>
                                            <div class="banner-info">
                                                <div class="banner-content">
                                                    <div class="title-wrap">
                                                        <!-- <div class="banner-label">
                                                            Smart Watcher
                                                        </div> -->
                                                        <h6 class="title">
                                                            Bán chạy nhất</h6>
                                                    </div>
                                                    <div class="button-wrap">
                                                        <a class="button" target="_self" href="/products">
                                                            <span>Mua ngay</span></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="section-022">
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
                                                                    <a href="/product/${product.id}"
                                                                        class="button yith-wcqv-button">
                                                                        Xem thêm
                                                                    </a>
                                                                    <div class="add-to-cart">
                                                                        <a href="#" data-product-id="${product.id}"
                                                                            class="btnAddToCartHomepage button product_type_simple add_to_cart_button ajax_add_to_cart">
                                                                            Thêm giỏ hàng
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
                                                                    <a href="/product/${product.id}"
                                                                        class="button yith-wcqv-button">
                                                                        Xem thêm
                                                                    </a>
                                                                    <div class="add-to-cart">
                                                                        <a href="#" data-product-id="${product.id}"
                                                                            class="btnAddToCartHomepage button product_type_simple add_to_cart_button ajax_add_to_cart">
                                                                            Thêm giỏ hàng
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
                                    <div class="tab-panel " id="1547652725565-7e88bea3-ede2-5d80aefaa70e2">
                                        <div class="kobolg-products style-01   kobolg_custom_5d67efefee7c9 ">
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
                                                                    <a href="/product/${product.id}"
                                                                        class="button yith-wcqv-button">
                                                                        Xem thêm
                                                                    </a>
                                                                    <div class="add-to-cart">
                                                                        <a href="#" data-product-id="${product.id}"
                                                                            class="btnAddToCartHomepage button product_type_simple add_to_cart_button ajax_add_to_cart">
                                                                            Thêm giỏ hàng
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
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Content End -->

                <!-- <jsp:include page="../components/newsletter.jsp" /> -->
                <jsp:include page="../layout/footer.jsp" />
                <jsp:include page="../layout/foot.jsp" />
            </body>

            </html>