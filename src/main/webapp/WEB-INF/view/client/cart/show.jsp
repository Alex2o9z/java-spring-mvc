<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

                <!DOCTYPE html>
                <html lang="en">

                <jsp:include page="../layout/head.jsp">
                    <jsp:param name="pageTitle" value="Giỏ hàng (${sessionScope.sum})" />
                </jsp:include>

                <body class="single single-product">

                    <jsp:include page="../layout/header.jsp" />

                    <!--  Content Start -->
                    <div class="banner-wrapper no_background">
                        <div class="banner-wrapper-inner">
                            <nav class="kobolg-breadcrumb container"><a href="/">Trang chủ</a>
                                <i class="fa fa-angle-right"></i>Giỏ hàng
                            </nav>
                        </div>
                    </div>

                    <main class="site-main main-container no-sidebar pt-3">
                        <div class="container">
                            <div class="row">
                                <div class="main-content col-md-12">
                                    <div class="page-main-content">
                                        <div class="kobolg">

                                            <div class="kobolg-notices-wrapper"></div>

                                            <!-- Cart content -->
                                            <!-- <form class="kobolg-cart-form"> -->
                                            <div class="kobolg-cart-form">
                                                <table
                                                    class="shop_table shop_table_responsive cart kobolg-cart-form__contents"
                                                    cellspacing="0">
                                                    <thead>
                                                        <tr>
                                                            <th class="product-remove">&nbsp;</th>
                                                            <th class="product-thumbnail">&nbsp;</th>
                                                            <th class="product-name">Sản phẩm</th>
                                                            <th class="product-price">Giá</th>
                                                            <th class="product-quantity">Số lượng</th>
                                                            <th class="product-subtotal">Thành tiền</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:if test="${ empty cartDetails}">
                                                            <tr>
                                                                <td colspan="6" class="text-center p-5">
                                                                    Không có sản phẩm trong giỏ hàng
                                                                </td>
                                                            </tr>
                                                        </c:if>
                                                        <c:forEach var="cartDetail" items="${cartDetails}"
                                                            varStatus="status">
                                                            <tr class="kobolg-cart-form__cart-item cart_item">
                                                                <td class="product-remove">
                                                                    <form id="cart-item-delete-${status.index}"
                                                                        method="post"
                                                                        action="/delete-cart-product/${cartDetail.id}">
                                                                        <input type="hidden"
                                                                            name="${_csrf.parameterName}"
                                                                            value="${_csrf.token}" />
                                                                        <a href="javascript:$('#cart-item-delete-${status.index}').submit();"
                                                                            class="remove"
                                                                            aria-label="Remove this item">×</a>
                                                                    </form>
                                                                </td>
                                                                <td class="product-thumbnail">
                                                                    <a href="#"><img
                                                                            src="/admin/images/product/${cartDetail.product.image}"
                                                                            class="attachment-kobolg_thumbnail size-kobolg_thumbnail"
                                                                            alt="img" width="600" height="778"></a>
                                                                </td>
                                                                <td class="product-name" data-title="Product">
                                                                    <a
                                                                        href="/product/${cartDetail.product.id}">${cartDetail.product.name}</a>
                                                                </td>
                                                                <td class="product-price" data-title="Price">
                                                                    <span class="kobolg-Price-amount amount">
                                                                        <fmt:formatNumber type="number"
                                                                            value="${cartDetail.price}" /> <span
                                                                            class="kobolg-Price-currencySymbol">
                                                                            đ</span>
                                                                    </span>
                                                                    </span>
                                                                </td>
                                                                <td class="product-quantity" data-title="Quantity">
                                                                    <div class="quantity">
                                                                        <span class="qty-label">Số lượng:</span>
                                                                        <div class="control">
                                                                            <a class="btn-number qtyminus quantity-minus"
                                                                                href="#">-</a>
                                                                            <input type="text" title="Qty" data-step="1"
                                                                                min="1" max=""
                                                                                class="input-qty input-text qty text"
                                                                                size="4" pattern="[0-9]*"
                                                                                inputmode="numeric" name="quantity"
                                                                                value="${cartDetail.quantity}"
                                                                                data-cart-detail-id="${cartDetail.id}"
                                                                                data-cart-detail-price="${cartDetail.price}"
                                                                                data-cart-detail-index="${status.index}">
                                                                            <a class="btn-number qtyplus quantity-plus"
                                                                                href="#">+</a>
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                                <td class="product-subtotal" data-title="Total">
                                                                    <span class="kobolg-Price-amount amount"
                                                                        data-cart-detail-id="${cartDetail.id}">
                                                                        <fmt:formatNumber type="number"
                                                                            value="${cartDetail.price * cartDetail.quantity}" />
                                                                        <span class="kobolg-Price-currencySymbol">
                                                                            đ</span>
                                                                    </span>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                        <tr>
                                                            <td colspan="6" class="actions">
                                                                <div class="coupon">
                                                                    <label for="coupon_code">Mã khuyến mãi:</label>
                                                                    <input type="text" name="coupon_code"
                                                                        class="input-text" id="coupon_code" value=""
                                                                        placeholder="Mã khuyến mã">
                                                                    <button type="submit" class="button"
                                                                        name="apply_coupon" value="Apply coupon">Nhập mã
                                                                    </button>
                                                                </div>
                                                                <button type="submit" class="button" name="update_cart"
                                                                    value="Update cart" disabled="">Cập nhật giỏ hàng
                                                                </button>
                                                                <input type="hidden" id="kobolg-cart-nonce"
                                                                    name="kobolg-cart-nonce" value="f41b5bf554"><input
                                                                    type="hidden" name="_wp_http_referer"
                                                                    value="/kobolg/cart/">
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <!-- </form> -->

                                            <!-- Cart totals -->
                                            <c:if test="${not empty cartDetails}">
                                                <div class="cart-collaterals">
                                                    <div class="cart_totals ">
                                                        <h2>Tổng đơn hàng</h2>
                                                        <table class="shop_table shop_table_responsive" cellspacing="0">
                                                            <tbody>
                                                                <tr class="cart-subtotal">
                                                                    <th>Tạm tính</th>
                                                                    <td data-title="Subtotal">
                                                                        <span class="kobolg-Price-amount amount"
                                                                            data-cart-total-price="${totalPrice}">
                                                                            <fmt:formatNumber type="number"
                                                                                value="${totalPrice}" />
                                                                            <span class="kobolg-Price-currencySymbol">
                                                                                đ</span>
                                                                        </span>
                                                                    </td>
                                                                </tr>
                                                                <tr class="order-total">
                                                                    <th>Tổng tiền</th>
                                                                    <td data-title="Total">
                                                                        <strong>
                                                                            <span class="kobolg-Price-amount amount"
                                                                                data-cart-total-price="${totalPrice}">
                                                                                <fmt:formatNumber type="number"
                                                                                    value="${totalPrice}" />
                                                                                <span
                                                                                    class="kobolg-Price-currencySymbol">
                                                                                    đ</span>
                                                                            </span>
                                                                        </strong>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                        <div class="kobolg-proceed-to-checkout">

                                                            <form:form id="confirm-checkout" action="/confirm-checkout"
                                                                method="post" modelAttribute="cart">
                                                                <input type="hidden" name="${_csrf.parameterName}"
                                                                    value="${_csrf.token}" />
                                                                <div style="display: none;">
                                                                    <c:forEach var="cartDetail"
                                                                        items="${cart.cartDetails}" varStatus="status">
                                                                        <div class="mb-3">
                                                                            <div class="form-group">
                                                                                <label>Id:</label>
                                                                                <form:input class="form-control"
                                                                                    type="text" value="${cartDetail.id}"
                                                                                    path="cartDetails[${status.index}].id" />
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label>Quantity:</label>
                                                                                <form:input class="form-control"
                                                                                    type="text"
                                                                                    value="${cartDetail.quantity}"
                                                                                    path="cartDetails[${status.index}].quantity" />
                                                                            </div>
                                                                        </div>
                                                                    </c:forEach>
                                                                </div>

                                                                <a href="javascript:$('#confirm-checkout').submit();"
                                                                    class="checkout-button button alt kobolg-forward">
                                                                    Đi đến thanh toán</a>
                                                            </form:form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:if>

                                            <!-- Cross sell products -->
                                            <!-- <div class="col-md-12 col-sm-12 dreaming_crosssell-product">
                                                <div class="block-title">
                                                    <h2 class="product-grid-title">
                                                        <span>Cross Sell Products</span>
                                                    </h2>
                                                </div>
                                                <div class="owl-slick owl-products equal-container better-height"
                                                    data-slick="{&quot;arrows&quot;:false,&quot;slidesMargin&quot;:30,&quot;dots&quot;:true,&quot;infinite&quot;:false,&quot;slidesToShow&quot;:4}"
                                                    data-responsive="[{&quot;breakpoint&quot;:480,&quot;settings&quot;:{&quot;slidesToShow&quot;:2,&quot;slidesMargin&quot;:&quot;10&quot;}},{&quot;breakpoint&quot;:768,&quot;settings&quot;:{&quot;slidesToShow&quot;:2,&quot;slidesMargin&quot;:&quot;10&quot;}},{&quot;breakpoint&quot;:992,&quot;settings&quot;:{&quot;slidesToShow&quot;:3,&quot;slidesMargin&quot;:&quot;20&quot;}},{&quot;breakpoint&quot;:1200,&quot;settings&quot;:{&quot;slidesToShow&quot;:3,&quot;slidesMargin&quot;:&quot;20&quot;}},{&quot;breakpoint&quot;:1500,&quot;settings&quot;:{&quot;slidesToShow&quot;:3,&quot;slidesMargin&quot;:&quot;30&quot;}}]">
                                                    <div
                                                        class="product-item style-01 post-278 page type-page status-publish hentry">
                                                        <div class="product-inner tooltip-left">
                                                            <div class="product-thumb">
                                                                <a class="thumb-link" href="#" tabindex="0">
                                                                    <img class="img-responsive"
                                                                        src="/client/images/apro51012-1-600x778.jpg"
                                                                        alt="Multi Cellphone" width="600" height="778">
                                                                </a>
                                                                <div class="flash">
                                                                    <span class="onsale"><span
                                                                            class="number">-21%</span></span>
                                                                    <span class="onnew"><span
                                                                            class="text">New</span></span>
                                                                </div>
                                                                <div class="group-button">
                                                                    <div class="yith-wcwl-add-to-wishlist">
                                                                        <div class="yith-wcwl-add-button show">
                                                                            <a href="#" class="add_to_wishlist">
                                                                                Add to Wishlist</a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="kobolg product compare-button"><a
                                                                            href="#" class="compare button">Compare</a>
                                                                    </div>
                                                                    <a href="#" class="button yith-wcqv-button">Quick
                                                                        View</a>
                                                                    <div class="add-to-cart">
                                                                        <a href="#"
                                                                            class="button product_type_simple add_to_cart_button ajax_add_to_cart">Add
                                                                            to cart
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="product-info equal-elem">
                                                                <h3 class="product-name product_title">
                                                                    <a href="#" tabindex="0">Multi Cellphone</a>
                                                                </h3>
                                                                <div class="rating-wapper nostar">
                                                                    <div class="star-rating"><span
                                                                            style="width:0%">Rated <strong
                                                                                class="rating">0</strong> out of
                                                                            5</span></div>
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
                                                        class="product-item style-01 post-36 product type-product status-publish has-post-thumbnail product_cat-table product_cat-bed product_tag-light product_tag-table product_tag-sock first instock sale shipping-taxable purchasable product-type-simple">
                                                        <div class="product-inner tooltip-left">
                                                            <div class="product-thumb">
                                                                <a class="thumb-link" href="#" tabindex="0">
                                                                    <img class="img-responsive"
                                                                        src="/client/images/apro71-1-600x778.jpg"
                                                                        alt="Gaming Mouse" width="600" height="778">
                                                                </a>
                                                                <div class="flash">
                                                                    <span class="onsale"><span
                                                                            class="number">-18%</span></span>
                                                                    <span class="onnew"><span
                                                                            class="text">New</span></span>
                                                                </div>
                                                                <div class="group-button">
                                                                    <div class="yith-wcwl-add-to-wishlist">
                                                                        <div class="yith-wcwl-add-button show">
                                                                            <a href="#" class="add_to_wishlist">
                                                                                Add to Wishlist</a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="kobolg product compare-button"><a
                                                                            href="#" class="compare button">Compare</a>
                                                                    </div>
                                                                    <a href="#" class="button yith-wcqv-button">Quick
                                                                        View</a>
                                                                    <div class="add-to-cart">
                                                                        <a href="#"
                                                                            class="button product_type_simple add_to_cart_button ajax_add_to_cart">Add
                                                                            to cart
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="product-info equal-elem">
                                                                <h3 class="product-name product_title">
                                                                    <a href="#" tabindex="0">Gaming Mouse</a>
                                                                </h3>
                                                                <div class="rating-wapper nostar">
                                                                    <div class="star-rating"><span
                                                                            style="width:0%">Rated <strong
                                                                                class="rating">0</strong> out of
                                                                            5</span></div>
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
                                                        class="product-item style-01 post-32 product type-product status-publish has-post-thumbnail product_cat-light product_cat-chair product_cat-sofas product_tag-hat product_tag-sock  instock sale featured shipping-taxable purchasable product-type-simple">
                                                        <div class="product-inner tooltip-left">
                                                            <div class="product-thumb">
                                                                <a class="thumb-link" href="#" tabindex="0">
                                                                    <img class="img-responsive"
                                                                        src="/client/images/apro91-1-600x778.jpg"
                                                                        alt="Classic Watches" width="600" height="778">
                                                                </a>
                                                                <div class="flash">
                                                                    <span class="onnew"><span
                                                                            class="text">New</span></span>
                                                                </div>
                                                                <div class="group-button">
                                                                    <div class="yith-wcwl-add-to-wishlist">
                                                                        <div class="yith-wcwl-add-button show">
                                                                            <a href="#" class="add_to_wishlist">
                                                                                Add to Wishlist</a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="kobolg product compare-button"><a
                                                                            href="#" class="compare button">Compare</a>
                                                                    </div>
                                                                    <a href="#" class="button yith-wcqv-button">Quick
                                                                        View</a>
                                                                    <div class="add-to-cart">
                                                                        <a href="#"
                                                                            class="button product_type_simple add_to_cart_button ajax_add_to_cart">Add
                                                                            to cart
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="product-info equal-elem">
                                                                <h3 class="product-name product_title">
                                                                    <a href="#" tabindex="0">Classic Watches</a>
                                                                </h3>
                                                                <div class="rating-wapper nostar">
                                                                    <div class="star-rating"><span
                                                                            style="width:0%">Rated <strong
                                                                                class="rating">0</strong> out of
                                                                            5</span></div>
                                                                    <span class="review">(0)</span>
                                                                </div>
                                                                <span class="price"><span
                                                                        class="kobolg-Price-amount amount"><span
                                                                            class="kobolg-Price-currencySymbol">$</span>89.00</span>
                                                                    – <span class="kobolg-Price-amount amount"><span
                                                                            class="kobolg-Price-currencySymbol">$</span>139.00</span></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div> -->

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </main>
                    <!-- Content End -->

                    <jsp:include page="../layout/footer.jsp" />
                    <jsp:include page="../layout/foot.jsp" />
                </body>

                </html>