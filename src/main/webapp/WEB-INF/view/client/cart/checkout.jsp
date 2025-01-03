<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


                    <!DOCTYPE html>
                    <html lang="en">

                    <jsp:include page="../layout/head.jsp">
                        <jsp:param name="pageTitle" value="Thanh toán" />
                    </jsp:include>

                    <body class="single single-product">

                        <jsp:include page="../layout/header.jsp" />

                        <!--  Content Start -->
                        <div class="banner-wrapper no_background">
                            <div class="banner-wrapper-inner">
                                <nav class="kobolg-breadcrumb container"><a href="/">Trang chủ</a>
                                    <i class="fa fa-angle-right"></i>Thanh toán
                                </nav>
                            </div>
                        </div>

                        <main class="site-main  main-container no-sidebar pt-3">
                            <div class="container">
                                <div class="row">
                                    <div class="main-content col-md-12">
                                        <div class="page-main-content">
                                            <div class="kobolg">
                                                <div class="kobolg-notices-wrapper"></div>

                                                <c:if test="${not empty cartDetails}">
                                                    <form:form name="checkout" class="checkout kobolg-checkout"
                                                        action="/checkout" method="post"
                                                        modelAttribute="orderRequestDTO">

                                                        <c:set var="errorReceiverName">
                                                            <form:errors path="receiverName"
                                                                cssClass="invalid-feedback" />
                                                        </c:set>
                                                        <c:set var="errorReceiverAddress">
                                                            <form:errors path="receiverAddress"
                                                                cssClass="invalid-feedback" />
                                                        </c:set>
                                                        <c:set var="errorReceiverPhone">
                                                            <form:errors path="receiverPhone"
                                                                cssClass="invalid-feedback" />
                                                        </c:set>

                                                        <input type="hidden" name="${_csrf.parameterName}"
                                                            value="${_csrf.token}" />

                                                        <c:if test="${not empty cartDetails}">
                                                            <div class="col2-set" id="customer_details">
                                                                <div class="col-1">
                                                                    <div class="kobolg-billing-fields">
                                                                        <h3>Thông tin người nhận</h3>
                                                                        <div
                                                                            class="kobolg-billing-fields__field-wrapper">
                                                                            <p class="form-row form-row-wide">
                                                                                <label for="receiver_name" class="">
                                                                                    Tên người nhận&nbsp;
                                                                                    <abbr class="required"
                                                                                        title="required">*</abbr>
                                                                                </label>
                                                                                <span class="kobolg-input-wrapper">
                                                                                    <form:input type="text"
                                                                                        class="input-text form-control ${not empty errorReceiverName ? 'is-invalid' : ''}"
                                                                                        name="receiverName"
                                                                                        path="receiverName"
                                                                                        id="receiver_name" value=""
                                                                                        autocomplete="receiverName" />
                                                                                    ${errorReceiverName}
                                                                                </span>
                                                                            </p>
                                                                            <p class="form-row form-row-wide">
                                                                                <label for="receiver_address" class="">
                                                                                    Địa chỉ người nhận&nbsp;
                                                                                    <abbr class="required"
                                                                                        title="required">*</abbr>
                                                                                </label>
                                                                                <span class="kobolg-input-wrapper">
                                                                                    <form:input type="text"
                                                                                        class="input-text form-control ${not empty errorReceiverAddress ? 'is-invalid' : ''}"
                                                                                        name="receiverAddress"
                                                                                        path="receiverAddress"
                                                                                        id="receiver_address" value=""
                                                                                        autocomplete="receiverAddress" />
                                                                                    ${errorReceiverAddress}
                                                                                </span>
                                                                            </p>
                                                                            <p class="form-row form-row-wide">
                                                                                <label for="receiver_phone" class="">
                                                                                    Số điện thoại&nbsp;
                                                                                    <abbr class="required"
                                                                                        title="required">*</abbr>
                                                                                </label>
                                                                                <span class="kobolg-input-wrapper">
                                                                                    <form:input type="text"
                                                                                        class="input-text form-control ${not empty errorReceiverPhone ? 'is-invalid' : ''}"
                                                                                        name="receiverPhone"
                                                                                        path="receiverPhone"
                                                                                        id="receiver_phone" value=""
                                                                                        autocomplete="receiverPhone" />
                                                                                    ${errorReceiverPhone}
                                                                                    <span id="receiverPhone.errors"
                                                                                        class="invalid-feedback">
                                                                                        <form:errors
                                                                                            path="receiverPhone"
                                                                                            cssClass="invalid-feedback"
                                                                                            var="errorReceiverPhone">
                                                                                            <span>${errorReceiverPhone.split(',')[0]}</span>
                                                                                        </form:errors>
                                                                                    </span>

                                                                                </span>
                                                                                <script>console.log('${errorReceiverPhone}')</script>
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </c:if>

                                                        <h3 id="order_review_heading">Chi tiết đơn hàng</h3>
                                                        <div id="order_review" class="kobolg-checkout-review-order">
                                                            <table
                                                                class="shop_table kobolg-checkout-review-order-table">
                                                                <thead>
                                                                    <tr>
                                                                        <th class="product-name">Sản phẩm</th>
                                                                        <th class="product-total">Tổng tiền</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>

                                                                    <c:if test="${ empty cartDetails}">
                                                                        <tr class="cart_item">
                                                                            <td class="product-name">
                                                                                Không có sản phẩm trong giỏ hàng
                                                                            </td>
                                                                        </tr>
                                                                    </c:if>

                                                                    <c:forEach var="cartDetail" items="${cartDetails}">
                                                                        <tr class="cart_item">
                                                                            <td class="product-name">
                                                                                ${cartDetail.product.name}&nbsp;&nbsp;
                                                                                <strong class="product-quantity">×
                                                                                    ${cartDetail.quantity}</strong>
                                                                            </td>
                                                                            <td class="product-total">
                                                                                <span class="kobolg-Price-amount amount"
                                                                                    data-cart-detail-id="${cartDetail.id}">
                                                                                    <fmt:formatNumber type="number"
                                                                                        value="${cartDetail.price * cartDetail.quantity}" />
                                                                                    <span
                                                                                        class="kobolg-Price-currencySymbol"></span>
                                                                                    đ
                                                                                </span>
                                                                            </td>
                                                                        </tr>
                                                                    </c:forEach>

                                                                </tbody>
                                                                <tfoot>
                                                                    <tr class="cart-subtotal">
                                                                        <th>Tạm tính</th>
                                                                        <td>
                                                                            <span class="kobolg-Price-amount amount"
                                                                                data-cart-total-price="${totalPrice}">
                                                                                <fmt:formatNumber type="number"
                                                                                    value="${totalPrice}" /><span
                                                                                    class="kobolg-Price-currencySymbol">
                                                                                    đ</span>
                                                                            </span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="order-total">
                                                                        <th>Tổng tiền</th>
                                                                        <td>
                                                                            <strong>
                                                                                <span class="kobolg-Price-amount amount"
                                                                                    data-cart-total-price="${totalPrice}">
                                                                                    <fmt:formatNumber type="number"
                                                                                        value="${totalPrice}" /><span
                                                                                        class="kobolg-Price-currencySymbol">
                                                                                        đ</span>
                                                                                </span>
                                                                            </strong>
                                                                        </td>
                                                                    </tr>
                                                                </tfoot>
                                                            </table>
                                                            <input type="hidden" name="lang" value="en">
                                                            <div id="payment" class="kobolg-checkout-payment">
                                                                <ul class="wc_payment_methods payment_methods methods">
                                                                    <li class="wc_payment_method payment_method_cod">
                                                                        <input id="payment_method_cod" type="radio"
                                                                            class="input-radio" name="paymentMethod"
                                                                            value="COD" checked="checked">
                                                                        <label for="payment_method_cod">
                                                                            Thanh toán khi nhận hàng </label>
                                                                        <div class="payment_box payment_method_cod"
                                                                            style="display:none;">
                                                                            <p>Thanh toán bằng tiền mặt khi giao hàng.
                                                                            </p>
                                                                        </div>
                                                                    </li>

                                                                    <li class="wc_payment_method payment_method_vnpay">
                                                                        <input id="payment_method_vnpay" type="radio"
                                                                            class="input-radio" name="paymentMethod"
                                                                            value="BANKING">
                                                                        <label for="payment_method_vnpay">
                                                                            Thanh toán qua VNPAY
                                                                        </label>
                                                                        <div class="payment_box payment_method_vnpay"
                                                                            style="display:none;">
                                                                            <p>Thanh toán qua VNPAY; có thể thanh toán
                                                                                bằng
                                                                                thẻ tín dụng nếu không có tài khoản
                                                                                VNPAY.
                                                                            </p>
                                                                        </div>
                                                                        <input type="hidden" value="${totalPrice}"
                                                                            name="totalPrice" />
                                                                    </li>
                                                                </ul>
                                                                <div class="form-row place-order">
                                                                    <button type="submit" class="button alt"
                                                                        name="kobolg_checkout_place_order"
                                                                        id="place_order" value="Place order">
                                                                        Xác nhận thanh toán
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </form:form>
                                                </c:if>
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