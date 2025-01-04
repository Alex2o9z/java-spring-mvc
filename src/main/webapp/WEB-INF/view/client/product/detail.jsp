<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

                <!DOCTYPE html>
                <html lang="en">

                <jsp:include page="../layout/head.jsp">
                    <jsp:param name="pageTitle" value="${product.name}" />
                </jsp:include>

                <body class="single single-product">

                    <jsp:include page="../layout/header.jsp" />

                    <!--  Content Start -->
                    <div class="banner-wrapper no_background">
                        <div class="banner-wrapper-inner">
                            <nav class="kobolg-breadcrumb container"><a href="/">Trang chủ</a><i
                                    class="fa fa-angle-right"></i><a href="/products">Sản phẩm</a>
                                <i class="fa fa-angle-right"></i>${product.name}
                            </nav>
                        </div>
                    </div>

                    <div class="single-thumb-vertical main-container shop-page left-sidebar">
                        <div class="container">
                            <div class="row">
                                <div class="main-content col-xl-9 col-lg-8 col-md-8 col-sm-12 has-sidebar">
                                    <div class="kobolg-notices-wrapper"></div>
                                    <div id="product-27"
                                        class="post-27 product type-product status-publish has-post-thumbnail product_cat-table product_cat-new-arrivals product_cat-lamp product_tag-table product_tag-sock first instock shipping-taxable purchasable product-type-variable has-default-attributes">
                                        <div class="main-contain-summary">
                                            <div class="contain-left has-gallery">
                                                <div class="single-left">
                                                    <div
                                                        class="kobolg-product-gallery kobolg-product-gallery--with-images kobolg-product-gallery--columns-4 images">
                                                        <!-- <a href="#" class="kobolg-product-gallery__trigger">
                                                            <img draggable="false" class="emoji" alt="🔍"
                                                                src="https://s.w.org/images/core/emoji/11/svg/1f50d.svg"></a> -->

                                                        <div class="flex-viewport">
                                                            <figure class="kobolg-product-gallery__wrapper">
                                                                <c:forEach var="productImage" items="${product.image}">
                                                                    <div class="kobolg-product-gallery__image">
                                                                        <img alt="img"
                                                                            src="/admin/images/product/${productImage}">
                                                                    </div>
                                                                </c:forEach>
                                                            </figure>
                                                        </div>

                                                        <ol class="flex-control-nav flex-control-thumbs">
                                                            <c:forEach var="productImage" items="${product.image}">
                                                                <li><img src="/admin/images/product/${productImage}"
                                                                        alt="img">
                                                                </li>
                                                            </c:forEach>
                                                        </ol>

                                                    </div>
                                                </div>
                                                <div class="summary entry-summary">
                                                    <div class="flash">
                                                        <span class="onnew"><span class="text">New</span></span>
                                                    </div>
                                                    <h1 class="product_title entry-title">${product.name}</h1>
                                                    <p class="price">
                                                        <fmt:formatNumber type="number" value="${product.price}" />
                                                        <span class="kobolg-Price-currencySymbol"> đ</span>
                                                    </p>
                                                    <c:if test="${product.quantity > 0}">
                                                        <p class="stock in-stock">
                                                            Tình trạng: <span> Còn hàng </span>
                                                        </p>
                                                    </c:if>
                                                    <c:if test="${product.quantity == 0}">
                                                        <p class="stock out-stock">
                                                            Tình trạng: <span> Hết hàng </span>
                                                        </p>
                                                    </c:if>
                                                    <div class="kobolg-product-details__short-description">
                                                        <p>${product.shortDesc}</p>
                                                    </div>
                                                    <form class="variations_form cart">
                                                        <!-- <table class="variations">
                                                            <tbody>
                                                                <tr>
                                                                    <td class="label"><label>Color</label></td>
                                                                    <td class="value">
                                                                        <select title="box_style"
                                                                            data-attributetype="box_style"
                                                                            data-id="pa_color" class="attribute-select "
                                                                            name="attribute_pa_color"
                                                                            data-attribute_name="attribute_pa_color"
                                                                            data-show_option_none="yes">
                                                                            <option data-type="" data-pa_color=""
                                                                                value="">Choose an option
                                                                            </option>
                                                                            <option data-width="30" data-height="30"
                                                                                data-type="color"
                                                                                data-pa_color="#3155e2" value="blue"
                                                                                class="attached enabled">Blue
                                                                            </option>
                                                                            <option data-width="30" data-height="30"
                                                                                data-type="color"
                                                                                data-pa_color="#ff63cb" value="pink"
                                                                                class="attached enabled">Pink
                                                                            </option>
                                                                            <option data-width="30" data-height="30"
                                                                                data-type="color"
                                                                                data-pa_color="#db2b00" value="red"
                                                                                class="attached enabled">Red
                                                                            </option>
                                                                            <option data-width="30" data-height="30"
                                                                                data-type="color"
                                                                                data-pa_color="#e8e120" value="yellow"
                                                                                class="attached enabled">Yellow
                                                                            </option>
                                                                        </select>
                                                                        <div class="data-val attribute-pa_color"
                                                                            data-attributetype="box_style">
                                                                            <a class="change-value color" href="#"
                                                                                style="background: #3155e2;"
                                                                                data-value="blue"></a><a
                                                                                class="change-value color" href="#"
                                                                                style="background: #ff63cb;"
                                                                                data-value="pink"></a><a
                                                                                class="change-value color" href="#"
                                                                                style="background: #db2b00;"
                                                                                data-value="red"></a><a
                                                                                class="change-value color" href="#"
                                                                                style="background: #e8e120;"
                                                                                data-value="yellow"></a>
                                                                        </div>
                                                                        <a class="reset_variations" href="#"
                                                                            style="visibility: hidden;">Clear</a>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table> -->

                                                        <div class="single_variation_wrap">
                                                            <div class="kobolg-variation single_variation"></div>
                                                            <div class="kobolg-variation-add-to-cart variations_button">
                                                                <div class="quantity">
                                                                    <span class="qty-label">Số lượng:</span>
                                                                    <div class="control">
                                                                        <a class="btn-number qtyminus quantity-minus"
                                                                            href="#">-</a>
                                                                        <input type="text" data-step="1" min="0" max=""
                                                                            name="quantity" value="1" title="Qty"
                                                                            class="input-qty input-text qty text"
                                                                            size="4" pattern="[0-9]*"
                                                                            inputmode="numeric"
                                                                            id="cartDetails0.quantity">
                                                                        <a class="btn-number qtyplus quantity-plus"
                                                                            href="#">+</a>
                                                                    </div>
                                                                </div>
                                                                <input type="hidden" name="${_csrf.parameterName}"
                                                                    value="${_csrf.token}" />
                                                                <input class="form-control d-none" type="text"
                                                                    value="${product.id}" name="id" />
                                                                <button type="submit" data-product-id="${product.id}"
                                                                    class="btnAddToCartDetail single_add_to_cart_button button alt kobolg-variation-selection-needed">
                                                                    Thêm giỏ hàng
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </form>

                                                    <!-- <div class="yith-wcwl-add-to-wishlist">
                                                        <div class="yith-wcwl-add-button show">
                                                            <a href="#" rel="nofollow" data-product-id="27"
                                                                data-product-type="variable" class="add_to_wishlist">
                                                                Add to Wishlist</a>
                                                        </div>
                                                    </div>
                                                    <div class="clear"></div>
                                                    <a href="#" class="compare button" data-product_id="27"
                                                        rel="nofollow">Compare</a> -->

                                                    <div class="product_meta">

                                                        <!-- <div class="wcml-dropdown product wcml_currency_switcher">
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
                                                        </div> -->

                                                        <!-- <span class="sku_wrapper">SKU: <span
                                                                class="sku">885B712</span></span> -->

                                                        <span class="posted_in">
                                                            Danh mục:
                                                            <c:forEach var="productTarget" items="${product.target}">
                                                                <a href="#" rel="tag">
                                                                    <c:if test="${productTarget == 'GAMING'}">Gaming
                                                                    </c:if>
                                                                    <c:if
                                                                        test="${productTarget == 'SINHVIEN-VANPHONG'}">
                                                                        Sinh viên - văn phòng</c:if>
                                                                    <c:if test="${productTarget == 'THIET-KE-DO-HOA'}">
                                                                        Thiết kế đồ hoạ</c:if>
                                                                    <c:if test="${productTarget == 'DOANH-NHAN'}">Doanh
                                                                        nhân</c:if>
                                                                    <c:if test="${productTarget == 'MONG-NHE'}">Mỏng nhẹ
                                                                    </c:if>
                                                                </a>
                                                            </c:forEach>
                                                        </span>

                                                        <!-- <span class="tagged_as">Tags: <a href="#" rel="tag">Game &
                                                                Consoles</a>, <a href="#" rel="tag">Sock</a></span> -->

                                                    </div>
                                                    <!-- <div class="kobolg-share-socials">
                                                        <h5 class="social-heading">Share: </h5>
                                                        <a target="_blank" class="facebook" href="#">
                                                            <i class="fa fa-facebook-f"></i>
                                                        </a>
                                                        <a target="_blank" class="twitter" href="#"><i
                                                                class="fa fa-twitter"></i>
                                                        </a>
                                                        <a target="_blank" class="pinterest" href="#"> <i
                                                                class="fa fa-pinterest"></i>
                                                        </a>
                                                        <a target="_blank" class="googleplus" href="#"><i
                                                                class="fa fa-google-plus"></i>
                                                        </a>
                                                    </div> -->
                                                </div>
                                            </div>
                                        </div>
                                        <div class="kobolg-tabs kobolg-tabs-wrapper">
                                            <ul class="tabs dreaming-tabs" role="tablist">
                                                <li class="description_tab active" id="tab-title-description" role="tab"
                                                    aria-controls="tab-description">
                                                    <a href="#tab-description">Mô tả</a>
                                                </li>
                                                <li class="additional_information_tab"
                                                    id="tab-title-additional_information" role="tab"
                                                    aria-controls="tab-additional_information">
                                                    <a href="#tab-additional_information">Thông số kỹ thuật</a>
                                                </li>
                                                <!-- <li class="reviews_tab" id="tab-title-reviews" role="tab"
                                                    aria-controls="tab-reviews">
                                                    <a href="#tab-reviews">Đánh giá (0)</a>
                                                </li> -->
                                            </ul>
                                            <div class="kobolg-Tabs-panel kobolg-Tabs-panel--description panel entry-content kobolg-tab"
                                                id="tab-description" role="tabpanel"
                                                aria-labelledby="tab-title-description">
                                                <h2>Description</h2>
                                                <div class="container-table">
                                                    <!-- <div class="container-cell">
                                                        <div class="az_single_image-wrapper az_box_border_grey">
                                                            <img src="https://cdn.tgdd.vn/Products/Images/44/328235/Kit/asus-gaming-tuf-f15-fx507zc4-i5-hn330w-note.jpg"
                                                                class="az_single_image-img attachment-full" alt="img">
                                                        </div>
                                                    </div> -->
                                                    ${product.detailDesc}
                                                </div>
                                            </div>
                                            <div class="kobolg-Tabs-panel kobolg-Tabs-panel--additional_information panel entry-content kobolg-tab"
                                                id="tab-additional_information" role="tabpanel"
                                                aria-labelledby="tab-title-additional_information">
                                                <h2>Additional information</h2>
                                                <table class="shop_attributes">
                                                    <tbody>
                                                        <tr>
                                                            <th>Model</th>
                                                            <td>
                                                                <p>ASUS TUF Gaming</p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <th>Vì xử lý</th>
                                                            <td>
                                                                <p>Intel Core i5-11400H</p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <th>Card đồ họa</th>
                                                            <td>
                                                                <p>NVIDIA GeForce RTX 3060</p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <th>RAM</th>
                                                            <td>
                                                                <p>16GB DDR4</p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <th>Bộ nhớ trong</th>
                                                            <td>
                                                                <p>512GB SSD</p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <th>Màn hình</th>
                                                            <td>
                                                                <p>15.6 inch Full HD (1920x1080), 144Hz</p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <th>Thời gian sử dụng pin</th>
                                                            <td>
                                                                <p>Lên đến 8 giờ</p>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <th>Hệ điều hành</th>
                                                            <td>
                                                                <p>Windows 11 Home</p>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>

                                            </div>
                                            <!-- <div class="kobolg-Tabs-panel kobolg-Tabs-panel--reviews panel entry-content kobolg-tab"
                                                id="tab-reviews" role="tabpanel" aria-labelledby="tab-title-reviews">
                                                <div id="reviews" class="kobolg-Reviews">
                                                    <div id="comments">
                                                        <h2 class="kobolg-Reviews-title">Reviews</h2>
                                                        <p class="kobolg-noreviews">There are no reviews yet.</p>
                                                    </div>
                                                    <div id="review_form_wrapper">
                                                        <div id="review_form">
                                                            <div id="respond" class="comment-respond">
                                                                <span id="reply-title" class="comment-reply-title">Be
                                                                    the first to review “T-shirt with skirt”</span>
                                                                <form id="commentform" class="comment-form">
                                                                    <p class="comment-notes"><span id="email-notes">Your
                                                                            email addresses will not be
                                                                            published.</span>
                                                                        Required fields are marked <span
                                                                            class="required">*</span></p>
                                                                    <p class="comment-form-author">
                                                                        <label for="author">Name&nbsp;<span
                                                                                class="required">*</span></label>
                                                                        <input id="author" name="author" value=""
                                                                            size="30" required="" type="text">
                                                                    </p>
                                                                    <p class="comment-form-email"><label
                                                                            for="email">Email&nbsp;
                                                                            <span class="required">*</span></label>
                                                                        <input id="email" name="email" value=""
                                                                            size="30" required="" type="email">
                                                                    </p>
                                                                    <div class="comment-form-rating"><label
                                                                            for="rating">Your rating</label>
                                                                        <p class="stars">
                                                                            <span>
                                                                                <a class="star-1" href="#">1</a>
                                                                                <a class="star-2" href="#">2</a>
                                                                                <a class="star-3" href="#">3</a>
                                                                                <a class="star-4" href="#">4</a>
                                                                                <a class="star-5" href="#">5</a>
                                                                            </span>
                                                                        </p>
                                                                        <select title="product_cat" name="rating"
                                                                            id="rating" required=""
                                                                            style="display: none;">
                                                                            <option value="">Rate…</option>
                                                                            <option value="5">Perfect</option>
                                                                            <option value="4">Good</option>
                                                                            <option value="3">Average</option>
                                                                            <option value="2">Not that bad</option>
                                                                            <option value="1">Very poor</option>
                                                                        </select>
                                                                    </div>
                                                                    <p class="comment-form-comment"><label
                                                                            for="comment">Your
                                                                            review&nbsp;<span
                                                                                class="required">*</span></label><textarea
                                                                            id="comment" name="comment" cols="45"
                                                                            rows="8" required=""></textarea></p><input
                                                                        name="wpml_language_code" value="en"
                                                                        type="hidden">
                                                                    <p class="form-submit"><input name="submit"
                                                                            id="submit" class="submit" value="Submit"
                                                                            type="submit"> <input name="comment_post_ID"
                                                                            value="27" id="comment_post_ID"
                                                                            type="hidden">
                                                                        <input name="comment_parent" id="comment_parent"
                                                                            value="0" type="hidden">
                                                                    </p>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="clear"></div>
                                                </div>
                                            </div> -->
                                        </div>
                                    </div>
                                </div>
                                <div class="sidebar col-xl-3 col-lg-4 col-md-4 col-sm-12">
                                    <div id="widget-area" class="widget-area shop-sidebar">

                                        <div id="kobolg_products-2" class="widget kobolg widget_products d-none">
                                            <h2 class="widgettitle">Sản phẩm dành cho bạn<span class="arrow"></span>
                                            </h2>
                                            <ul id="product-list" class="product_list_widget">

                                            </ul>
                                        </div>

                                        <div id="kobolg_product_categories-2"
                                            class="widget kobolg widget_product_categories">
                                            <h2 class="widgettitle">Danh mục sản phẩm<span class="arrow"></span></h2>
                                            <ul class="product-categories">
                                                <li
                                                    class="cat-item cat-item-GAMING ${product.target == 'GAMING'? 'current-cat' : ''}">
                                                    <a href="#">Gaming</a>
                                                </li>
                                                <li
                                                    class="cat-item cat-item-SINHVIEN-VANPHONG ${product.target == 'SINHVIEN-VANPHONG'? 'current-cat' : ''}">
                                                    <a href="#">Sinh viên - văn phòng</a>
                                                </li>
                                                <li
                                                    class="cat-item cat-item-THIET-KE-DO-HOA ${product.target == 'THIET-KE-DO-HOA'? 'current-cat' : ''}">
                                                    <a href="#">Thiết kế đồ hoạ</a>
                                                </li>
                                                <li
                                                    class="cat-item cat-item-DOANH-NHAN ${product.target == 'DOANH-NHAN'? 'current-cat' : ''}">
                                                    <a href="#">Doanh nhân</a>
                                                </li>
                                                <li
                                                    class="cat-item cat-item-MONG-NHE ${product.target == 'MONG-NHE'? 'current-cat' : ''}">
                                                    <a href="#">Mỏng nhẹ</a>
                                                </li>
                                                </li>
                                            </ul>
                                        </div>
                                    </div><!-- .widget-area -->
                                </div>
                                <!-- <div class="col-md-12 col-sm-12 dreaming_related-product">
                                    <div class="block-title">
                                        <h2 class="product-grid-title">
                                            <span>Related Products</span>
                                        </h2>
                                    </div>
                                    <div class="owl-slick owl-products equal-container better-height"
                                        data-slick="{&quot;arrows&quot;:false,&quot;slidesMargin&quot;:30,&quot;dots&quot;:true,&quot;infinite&quot;:false,&quot;slidesToShow&quot;:4}"
                                        data-responsive="[{&quot;breakpoint&quot;:480,&quot;settings&quot;:{&quot;slidesToShow&quot;:2,&quot;slidesMargin&quot;:&quot;10&quot;}},{&quot;breakpoint&quot;:768,&quot;settings&quot;:{&quot;slidesToShow&quot;:2,&quot;slidesMargin&quot;:&quot;10&quot;}},{&quot;breakpoint&quot;:992,&quot;settings&quot;:{&quot;slidesToShow&quot;:3,&quot;slidesMargin&quot;:&quot;20&quot;}},{&quot;breakpoint&quot;:1200,&quot;settings&quot;:{&quot;slidesToShow&quot;:3,&quot;slidesMargin&quot;:&quot;20&quot;}},{&quot;breakpoint&quot;:1500,&quot;settings&quot;:{&quot;slidesToShow&quot;:3,&quot;slidesMargin&quot;:&quot;30&quot;}}]">
                                        <div
                                            class="product-item style-01 post-27 product type-product status-publish has-post-thumbnail product_cat-table product_cat-new-arrivals product_cat-lamp product_tag-table product_tag-sock  instock shipping-taxable purchasable product-type-variable has-default-attributes ">
                                            <div class="product-inner tooltip-left">
                                                <div class="product-thumb">
                                                    <a class="thumb-link" href="#" tabindex="0">
                                                        <img class="img-responsive"
                                                            src="/client/images/apro101-1-600x778.jpg" alt="Mac 27 Inch"
                                                            width="600" height="778">
                                                    </a>
                                                    <div class="flash"><span class="onnew"><span
                                                                class="text">New</span></span></div>
                                                    <div class="group-button">
                                                        <div class="yith-wcwl-add-to-wishlist">
                                                            <div class="yith-wcwl-add-button show">
                                                                <a href="#" class="add_to_wishlist">Add to Wishlist</a>
                                                            </div>
                                                        </div>
                                                        <div class="kobolg product compare-button">
                                                            <a href="#" class="compare button">Compare</a>
                                                        </div>
                                                        <a href="#" class="button yith-wcqv-button">Quick View</a>
                                                        <div class="add-to-cart">
                                                            <a href="#"
                                                                class="button product_type_variable add_to_cart_button">Add
                                                                to
                                                                cart</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-info equal-elem">
                                                    <h3 class="product-name product_title">
                                                        <a href="#" tabindex="0">Mac 27 Inch</a>
                                                    </h3>
                                                    <div class="rating-wapper nostar">
                                                        <div class="star-rating"><span style="width:0%">Rated <strong
                                                                    class="rating">0</strong> out of 5</span></div>
                                                        <span class="review">(0)</span>
                                                    </div>
                                                    <span class="price"><span class="kobolg-Price-amount amount"><span
                                                                class="kobolg-Price-currencySymbol">$</span>60.00</span></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div
                                            class="product-item style-01 post-30 product type-product status-publish has-post-thumbnail product_cat-light product_cat-bed product_cat-specials product_tag-light product_tag-table product_tag-sock last instock featured downloadable shipping-taxable purchasable product-type-simple  ">
                                            <div class="product-inner tooltip-left">
                                                <div class="product-thumb">
                                                    <a class="thumb-link" href="#" tabindex="0">
                                                        <img class="img-responsive"
                                                            src="/client/images/apro41-1-600x778.jpg"
                                                            alt="White Watches" width="600" height="778">
                                                    </a>
                                                    <div class="flash">
                                                        <span class="onnew"><span class="text">New</span></span>
                                                    </div>
                                                    <div class="group-button">
                                                        <div class="yith-wcwl-add-to-wishlist">
                                                            <div class="yith-wcwl-add-button show">
                                                                <a href="#" class="add_to_wishlist">Add to Wishlist</a>
                                                            </div>
                                                        </div>
                                                        <div class="kobolg product compare-button">
                                                            <a href="#" class="compare button">Compare</a>
                                                        </div>
                                                        <a href="#" class="button yith-wcqv-button">Quick View</a>
                                                        <div class="add-to-cart">
                                                            <a href="#"
                                                                class="button product_type_variable add_to_cart_button">Add
                                                                to
                                                                cart</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-info equal-elem">
                                                    <h3 class="product-name product_title">
                                                        <a href="#" tabindex="0">White Watches</a>
                                                    </h3>
                                                    <div class="rating-wapper nostar">
                                                        <div class="star-rating"><span style="width:0%">Rated <strong
                                                                    class="rating">0</strong> out of 5</span></div>
                                                        <span class="review">(0)</span>
                                                    </div>
                                                    <span class="price"><span class="kobolg-Price-amount amount"><span
                                                                class="kobolg-Price-currencySymbol">$</span>134.00</span></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div
                                            class="product-item style-01 post-35 product type-product status-publish has-post-thumbnail product_cat-chair product_cat-new-arrivals product_cat-lamp product_tag-light product_tag-hat product_tag-sock first instock shipping-taxable purchasable product-type-simple  ">
                                            <div class="product-inner tooltip-left">
                                                <div class="product-thumb">
                                                    <a class="thumb-link" href="#" tabindex="0">
                                                        <img class="img-responsive"
                                                            src="/client/images/apro151-1-600x778.jpg"
                                                            alt="Cellphone Factory" width="600" height="778">
                                                    </a>
                                                    <div class="flash">
                                                        <span class="onsale"><span class="number">-11%</span></span>
                                                        <span class="onnew"><span class="text">New</span></span>
                                                    </div>
                                                    <div class="group-button">
                                                        <div class="yith-wcwl-add-to-wishlist">
                                                            <div class="yith-wcwl-add-button show">
                                                                <a href="#" class="add_to_wishlist">Add to Wishlist</a>
                                                            </div>
                                                        </div>
                                                        <div class="kobolg product compare-button">
                                                            <a href="#" class="compare button">Compare</a>
                                                        </div>
                                                        <a href="#" class="button yith-wcqv-button">Quick View</a>
                                                        <div class="add-to-cart">
                                                            <a href="#"
                                                                class="button product_type_variable add_to_cart_button">Add
                                                                to
                                                                cart</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-info equal-elem">
                                                    <h3 class="product-name product_title">
                                                        <a href="#" tabindex="0">Cellphone Factory</a>
                                                    </h3>
                                                    <div class="rating-wapper nostar">
                                                        <div class="star-rating"><span style="width:0%">Rated <strong
                                                                    class="rating">0</strong> out of 5</span></div>
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
                                            class="product-item style-01 post-25 product type-product status-publish has-post-thumbnail product_cat-light product_cat-chair product_cat-specials product_tag-light product_tag-sock  instock sale featured shipping-taxable purchasable product-type-simple ">
                                            <div class="product-inner tooltip-left">
                                                <div class="product-thumb">
                                                    <a class="thumb-link" href="#" tabindex="-1">
                                                        <img class="img-responsive"
                                                            src="/client/images/apro13-1-600x778.jpg"
                                                            alt="Meta Watches                                                "
                                                            width="600" height="778">
                                                    </a>
                                                    <div class="flash">
                                                        <span class="onnew"><span class="text">New</span></span>
                                                    </div>
                                                    <div class="group-button">
                                                        <div class="yith-wcwl-add-to-wishlist">
                                                            <div class="yith-wcwl-add-button show">
                                                                <a href="#" class="add_to_wishlist">Add to Wishlist</a>
                                                            </div>
                                                        </div>
                                                        <div class="kobolg product compare-button">
                                                            <a href="#" class="compare button">Compare</a>
                                                        </div>
                                                        <a href="#" class="button yith-wcqv-button">Quick View</a>
                                                        <div class="add-to-cart">
                                                            <a href="#"
                                                                class="button product_type_variable add_to_cart_button">Add
                                                                to
                                                                cart</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-info equal-elem">
                                                    <h3 class="product-name product_title">
                                                        <a href="#" tabindex="-1">Meta Watches </a>
                                                    </h3>
                                                    <div class="rating-wapper nostar">
                                                        <div class="star-rating"><span style="width:0%">Rated <strong
                                                                    class="rating">0</strong> out of 5</span></div>
                                                        <span class="review">(0)</span>
                                                    </div>
                                                    <span class="price"><span class="kobolg-Price-amount amount"><span
                                                                class="kobolg-Price-currencySymbol">$</span>109.00</span></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div
                                            class="product-item style-01 post-93 product type-product status-publish has-post-thumbnail product_cat-light product_cat-table product_cat-new-arrivals product_tag-table product_tag-sock last instock shipping-taxable purchasable product-type-simple ">
                                            <div class="product-inner tooltip-left">
                                                <div class="product-thumb">
                                                    <a class="thumb-link" href="#" tabindex="-1">
                                                        <img class="img-responsive"
                                                            src="/client/images/apro181-2-600x778.jpg" alt="Red Mouse"
                                                            width="600" height="778">
                                                    </a>
                                                    <div class="flash">
                                                        <span class="onnew"><span class="text">New</span></span>
                                                    </div>
                                                    <div class="group-button">
                                                        <div class="yith-wcwl-add-to-wishlist">
                                                            <div class="yith-wcwl-add-button show">
                                                                <a href="#" class="add_to_wishlist">Add to Wishlist</a>
                                                            </div>
                                                        </div>
                                                        <div class="kobolg product compare-button">
                                                            <a href="#" class="compare button">Compare</a>
                                                        </div>
                                                        <a href="#" class="button yith-wcqv-button">Quick View</a>
                                                        <div class="add-to-cart">
                                                            <a href="#"
                                                                class="button product_type_variable add_to_cart_button">Add
                                                                to
                                                                cart</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-info equal-elem">
                                                    <h3 class="product-name product_title">
                                                        <a href="#" tabindex="-1">City
                                                            life jumpers</a>
                                                    </h3>
                                                    <div class="rating-wapper nostar">
                                                        <div class="star-rating"><span style="width:0%">Rated <strong
                                                                    class="rating">0</strong> out of 5</span></div>
                                                        <span class="review">(0)</span>
                                                    </div>
                                                    <span class="price"><span class="kobolg-Price-amount amount"><span
                                                                class="kobolg-Price-currencySymbol">$</span>98.00</span></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div
                                            class="product-item style-01 post-22 product type-product status-publish has-post-thumbnail product_cat-table product_cat-bed product_cat-lamp product_tag-table product_tag-hat product_tag-sock first instock featured downloadable shipping-taxable purchasable product-type-simple ">
                                            <div class="product-inner tooltip-left">
                                                <div class="product-thumb">
                                                    <a class="thumb-link" href="#" tabindex="-1">
                                                        <img class="img-responsive"
                                                            src="/client/images/apro171-1-600x778.jpg"
                                                            alt="Photo Camera" width="600" height="778">
                                                    </a>
                                                    <div class="flash">
                                                        <span class="onnew"><span class="text">New</span></span>
                                                    </div>
                                                    <form class="variations_form cart">
                                                        <table class="variations">
                                                            <tbody>
                                                                <tr>
                                                                    <td class="value">
                                                                        <select title="box_style"
                                                                            data-attributetype="box_style"
                                                                            data-id="pa_color" class="attribute-select "
                                                                            name="attribute_pa_color"
                                                                            data-attribute_name="attribute_pa_color"
                                                                            data-show_option_none="yes" tabindex="-1">
                                                                            <option data-type="" data-pa_color=""
                                                                                value="">Choose an
                                                                                option
                                                                            </option>
                                                                            <option data-width="30" data-height="30"
                                                                                data-type="color"
                                                                                data-pa_color="#ff63cb" value="pink"
                                                                                class="attached enabled">Pink
                                                                            </option>
                                                                            <option data-width="30" data-height="30"
                                                                                data-type="color"
                                                                                data-pa_color="#a825ea" value="purple"
                                                                                class="attached enabled">Purple
                                                                            </option>
                                                                            <option data-width="30" data-height="30"
                                                                                data-type="color"
                                                                                data-pa_color="#db2b00" value="red"
                                                                                class="attached enabled">Red
                                                                            </option>
                                                                        </select>
                                                                        <div class="data-val attribute-pa_color"
                                                                            data-attributetype="box_style"><a
                                                                                class="change-value color" href="#"
                                                                                style="background: #ff63cb;"
                                                                                data-value="pink"></a><a
                                                                                class="change-value color" href="#"
                                                                                style="background: #a825ea;"
                                                                                data-value="purple"></a><a
                                                                                class="change-value color" href="#"
                                                                                style="background: #db2b00;"
                                                                                data-value="red"></a></div>
                                                                        <a class="reset_variations" href="#"
                                                                            tabindex="-1"
                                                                            style="visibility: hidden;">Clear</a>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </form>
                                                    <div class="group-button">
                                                        <div class="yith-wcwl-add-to-wishlist">
                                                            <div class="yith-wcwl-add-button show">
                                                                <a href="#" class="add_to_wishlist">Add to Wishlist</a>
                                                            </div>
                                                        </div>
                                                        <div class="kobolg product compare-button">
                                                            <a href="#" class="compare button">Compare</a>
                                                        </div>
                                                        <a href="#" class="button yith-wcqv-button">Quick View</a>
                                                        <div class="add-to-cart">
                                                            <a href="#"
                                                                class="button product_type_variable add_to_cart_button">Select
                                                                options</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-info equal-elem">
                                                    <h3 class="product-name product_title">
                                                        <a href="#" tabindex="-1">Photo Camera</a>
                                                    </h3>
                                                    <div class="rating-wapper nostar">
                                                        <div class="star-rating"><span style="width:0%">Rated <strong
                                                                    class="rating">0</strong> out of 5</span></div>
                                                        <span class="review">(0)</span>
                                                    </div>
                                                    <span class="price"><span class="kobolg-Price-amount amount"><span
                                                                class="kobolg-Price-currencySymbol">$</span>105.00</span>
                                                        – <span class="kobolg-Price-amount amount"><span
                                                                class="kobolg-Price-currencySymbol">$</span>110.00</span></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div> -->
                            </div>
                        </div>
                    </div>
                    <!-- Content End -->

                    <jsp:include page="../layout/footer.jsp" />
                    <jsp:include page="../layout/foot.jsp" />
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

                    <script>
                        $(document).ready(function () {
                            const a = "${user.type_views_1}";
                            const b = "${user.type_views_2}";
                            const c = "${user.type_views_3}";
                            const d = "${user.type_views_4}";

                            // Tạo đối tượng chứa dữ liệu gửi đến server
                            const data = {
                                gaming_view: a,
                                mac_view: b,
                                office_view: c,
                                workstation_view: d
                            };

                            // Gửi dữ liệu tới server bằng AJAX
                            $.ajax({
                                url: 'http://127.0.0.1:5000/recommend',
                                type: 'POST',
                                contentType: 'application/json',
                                data: JSON.stringify(data),
                                success: function (response) {
                                    console.log('Response from server:', response);

                                    // Gắn kết quả từ response
                                    const result = response.result;

                                    // Debug: Kiểm tra xem `result` là gì
                                    console.log('Result:', result);

                                    // Kiểm tra nếu `result` tồn tại và là mảng
                                    if (Array.isArray(result) && result.length > 0) {
                                        const productList = $("#product-list");

                                        // Tạo đối tượng định dạng số
                                        const formatter = new Intl.NumberFormat('vi-VN', {
                                            style: 'currency',
                                            currency: 'VND'
                                        });

                                        // Tạo HTML động
                                        let htmlContent = "";
                                        result.forEach(element => {
                                            // Debug: Kiểm tra từng phần tử
                                            console.log('Element:', element);

                                            // Truy cập các thuộc tính của đối tượng
                                            const product_id = element.id || 'Unknown ID';
                                            const product_name = element.name || 'No Name';
                                            const product_image = element.image || 'no-image.png'; // sửa lại từ price -> image
                                            const product_price = formatter.format(element.price || 0); // sửa lại từ image -> price và sử dụng formatter

                                            htmlContent += `
                                                <li>
                                                    <a href="/product/`+ product_id + `">
                                                        <img src="/admin/images/product/`+ product_image + `"
                                                            class="attachment-kobolg_thumbnail size-kobolg_thumbnail"
                                                            alt="`+ product_name + `" width="600" height="778">
                                                        <span class="product-title">`+ product_name + `</span>
                                                    </a>
                    
                                                    <span class="kobolg-Price-amount amount">
                                                        `+ product_price + `
                                                        <!-- <span class="kobolg-Price-currencySymbol"> đ</span> -->
                                                    </span>
                                                </li>
                                            `;
                                        });

                                        // Thêm HTML động vào container
                                        productList.html(htmlContent);
                                        $('#kobolg_products-2').removeClass('d-none');
                                    } else {
                                        console.warn('Result is empty or not an array.');
                                    }
                                },
                                error: function (xhr, status, error) {
                                    console.error('Error:', error);
                                }
                            });
                        });
                    </script>

                </body>

                </html>