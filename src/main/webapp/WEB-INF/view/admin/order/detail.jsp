<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

                <!DOCTYPE html>
                <html lang="en">

                <jsp:include page="../layout/head.jsp">
                    <jsp:param name="pageTitle" value="Thông tin đơn hàng" />
                </jsp:include>

                <body id="page-top">

                    <!-- Page Wrapper -->
                    <div id="wrapper">

                        <!-- Sidebar -->
                        <jsp:include page="../layout/sidebar.jsp" />
                        <!-- End of Sidebar -->

                        <!-- Content Wrapper -->
                        <div id="content-wrapper" class="d-flex flex-column">

                            <!-- Main Content -->
                            <div id="content">

                                <!-- Topbar -->
                                <jsp:include page="../layout/topbar.jsp" />
                                <!-- End of Topbar -->

                                <!-- Begin Page Content -->
                                <div class="container-fluid">

                                    <!-- Page Heading -->
                                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                                        <h1 class="h3 mb-0 text-gray-800">Quản lí đơn hàng</h1>
                                        <a href="/admin/order/update/${order.id}"
                                            class="d-none d-sm-inline-block btn btn-sm btn-warning shadow-sm"><i
                                                class="fas fa-pencil-alt fa-sm text-white-50"></i> Cập nhật trạng thái
                                            đơn hàng</a>
                                    </div>

                                    <!-- Message Content -->
                                    <jsp:include page="../layout/message.jsp" />
                                    <!-- End of Message Content -->

                                    <!-- DataTales Example -->
                                    <div class="card shadow mb-4">
                                        <div
                                            class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                            <h6 class="m-0 font-weight-bold text-primary">Thông tin đơn hàng
                                                <span class="text-danger">${order.id}</span>
                                            </h6>
                                            <a href="/admin/order" class="btn btn-primary">Trở về</a>
                                        </div>
                                        <div class="card-body">
                                            <div class="table-responsive">
                                                <table class="table table-bordered" id="dataTable" width="100%"
                                                    cellspacing="0">
                                                    <thead>
                                                        <tr>
                                                            <th>STT</th>
                                                            <th>Ảnh</th>
                                                            <th>Tên sản phẩm</th>
                                                            <th>Giá</th>
                                                            <th>Số lượng</th>
                                                            <th>Thành tiền</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:if test="${ empty orderDetails}">
                                                            <tr>
                                                                <td colspan="6" class="text-center">
                                                                    Không có sản phẩm trong giỏ hàng
                                                                </td>
                                                            </tr>
                                                        </c:if>
                                                        <c:forEach var="orderDetail" items="${orderDetails}"
                                                            varStatus="status">
                                                            <tr>
                                                                <th>${status.index + 1}</th>
                                                                <td>
                                                                    <c:if test="${empty orderDetail.product.image}">
                                                                        <span class="text-muted">(Chưa có)</span>
                                                                    </c:if>
                                                                    <c:if test="${not empty orderDetail.product.image}">
                                                                        <img src="/admin/images/product/${orderDetail.product.image}"
                                                                            class="img-fluid me-5 rounded"
                                                                            style="width: 80px; height: 80px;" alt="">
                                                                    </c:if>
                                                                </td>
                                                                <td>
                                                                    <a href="/product/${orderDetail.product.id}"
                                                                        target="_blank">
                                                                        ${orderDetail.product.name}
                                                                    </a>
                                                                </td>
                                                                <td>
                                                                    <fmt:formatNumber type="number"
                                                                        value="${orderDetail.price}" /> đ
                                                                </td>
                                                                <td>
                                                                    ${orderDetail.quantity}
                                                                </td>
                                                                <td>
                                                                    <span data-cart-detail-id="${orderDetail.id}">
                                                                        <fmt:formatNumber type="number"
                                                                            value="${orderDetail.price * orderDetail.quantity}" />
                                                                        đ
                                                                    </span>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <!-- /.container-fluid -->

                            </div>
                            <!-- End of Main Content -->

                            <!-- Footer -->
                            <jsp:include page="../layout/footer.jsp" />
                            <!-- End of Footer -->

                        </div>
                        <!-- End of Content Wrapper -->

                    </div>

                    <!-- End of Page Wrapper -->

                    <jsp:include page="../layout/foot.jsp" />

                </body>

                </html>