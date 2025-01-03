<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

            <!DOCTYPE html>
            <html lang="en">

            <jsp:include page="../layout/head.jsp">
                <jsp:param name="pageTitle" value="Lịch sử mua hàng" />
            </jsp:include>

            <body class="single single-product">

                <jsp:include page="../layout/header.jsp" />

                <!--  Content Start -->
                <div class="banner-wrapper no_background">
                    <div class="banner-wrapper-inner">
                        <nav class="kobolg-breadcrumb container"><a href="/">Trang chủ</a>
                            <i class="fa fa-angle-right"></i>Lịch sử mua hàng
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
                                        <form class="kobolg-cart-form">
                                            <table
                                                class="shop_table shop_table_responsive cart kobolg-cart-form__contents"
                                                cellspacing="0">
                                                <thead>
                                                    <tr class="bg-primary">
                                                        <th class="product-remove text-white">Mã đơn</th>
                                                        <th class="product-thumbnail text-white">&nbsp;</th>
                                                        <th class="product-name text-white">Sản phẩm</th>
                                                        <th class="product-price text-white">Giá</th>
                                                        <th class="product-quantity text-white">Số lượng</th>
                                                        <th class="product-subtotal text-white">Thành tiền</th>
                                                        <th class="product-status text-white">Trạng thái</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:if test="${ empty orders}">
                                                        <tr>
                                                            <td colspan="6">
                                                                Chưa có đơn hàng nào được tạo
                                                            </td>
                                                        </tr>
                                                    </c:if>
                                                    <c:forEach var="order" items="${orders}" varStatus="status">
                                                        <tr
                                                            class="kobolg-cart-form__cart-item cart_item border border-top table-secondary">
                                                            <td class="product-subtotal">
                                                                #${order.id}
                                                            </td>
                                                            <td class="product-remove"></td>
                                                            <td class="product-remove"></td>
                                                            <td class="product-remove"></td>
                                                            <td class="product-remove"></td>
                                                            <td class="product-subtotal">
                                                                <fmt:formatNumber type="number"
                                                                    value="${order.totalPrice}" />
                                                                <span class="kobolg-Price-currencySymbol">
                                                                    đ</span>
                                                            </td>
                                                            <td class="product-subtotal">
                                                                <!-- ${order.status} -->
                                                                <c:choose>
                                                                    <c:when test="${order.status eq 'PENDING'}">
                                                                        <span class="text-primary">Chờ xử lí</span>
                                                                    </c:when>
                                                                    <c:when test="${order.status eq 'SHIPPING'}">
                                                                        <span class="text-warning">Đang vận
                                                                            chuyển</span>
                                                                    </c:when>
                                                                    <c:when test="${order.status eq 'COMPLETE'}">
                                                                        <span class="text-success">Đã hoàn thành</span>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <span class="text-danger">Đã huỷ</span>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </td>
                                                        </tr>
                                                        <c:forEach var="orderDetail" items="${order.orderDetails}">
                                                            <tr class="kobolg-cart-form__cart-item cart_item">
                                                                <td class="product-remove"></td>
                                                                <td class="product-thumbnail">
                                                                    <a href="/product/${orderDetail.product.id}"><img
                                                                            src="/admin/images/product/${orderDetail.product.image}"
                                                                            class="attachment-kobolg_thumbnail size-kobolg_thumbnail"
                                                                            alt="${orderDetail.product.name}"
                                                                            width="600" height="778"></a>
                                                                </td>
                                                                <td class="product-name" data-title="Product">
                                                                    <a
                                                                        href="/product/${orderDetail.product.id}">${orderDetail.product.name}</a>
                                                                </td>
                                                                <td class="product-price" data-title="Price">
                                                                    <span class="kobolg-Price-amount amount">
                                                                        <fmt:formatNumber type="number"
                                                                            value="${orderDetail.price}" /> <span
                                                                            class="kobolg-Price-currencySymbol">
                                                                            đ</span>
                                                                    </span>
                                                                    </span>
                                                                </td>
                                                                <td class="product-quantity" data-title="Quantity">
                                                                    <!-- <div class="quantity">
                                                                        <span class="qty-label">Số lượng:</span>
                                                                        <div class="control">
                                                                            <input type="text" title="Qty"
                                                                                class="input-qty input-text qty text"
                                                                                value="${orderDetail.quantity}">
                                                                        </div>
                                                                    </div> -->
                                                                    x${orderDetail.quantity}
                                                                </td>
                                                                <td class="product-price" data-title="Total">
                                                                    <span class="kobolg-Price-amount amount">
                                                                        <fmt:formatNumber type="number"
                                                                            value="${orderDetail.price * orderDetail.quantity}" />
                                                                        <span class="kobolg-Price-currencySymbol">
                                                                            đ</span>
                                                                    </span>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </form>

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
                                                                            <span class="kobolg-Price-currencySymbol">
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
                                                                <c:forEach var="cartDetail" items="${cart.cartDetails}"
                                                                    varStatus="status">
                                                                    <div class="mb-3">
                                                                        <div class="form-group">
                                                                            <label>Id:</label>
                                                                            <form:input class="form-control" type="text"
                                                                                value="${cartDetail.id}"
                                                                                path="cartDetails[${status.index}].id" />
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label>Quantity:</label>
                                                                            <form:input class="form-control" type="text"
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