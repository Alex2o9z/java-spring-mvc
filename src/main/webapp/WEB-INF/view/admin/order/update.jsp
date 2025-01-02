<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

                <!DOCTYPE html>
                <html lang="en">

                <jsp:include page="../layout/head.jsp">
                    <jsp:param name="pageTitle" value="Cập nhật đơn hàng" />
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
                                    </div>

                                    <!-- Message Content -->
                                    <jsp:include page="../layout/message.jsp" />
                                    <!-- End of Message Content -->

                                    <!-- DataTales Example -->
                                    <div class="card shadow mb-4">
                                        <div
                                            class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                            <h6 class="m-0 font-weight-bold text-primary">Cập nhật trạng thái đơn hàng
                                                <span class="text-danger">${newOrder.id}</span>
                                            </h6>
                                            <a href="/admin/order" class="btn btn-primary">Trở về</a>
                                        </div>
                                        <div class="card-body">
                                            <form:form method="post" action="/admin/order/update"
                                                modelAttribute="newOrder">

                                                <div class="form-group row justify-content-md-center d-none">
                                                    <label for="id" class="col-md-2 col-form-label">ID:</label>
                                                    <div class="col-md-3">
                                                        <form:input type="text" id="id" class="form-control-plaintext"
                                                            path="id" />
                                                    </div>
                                                </div>

                                                <div class="form-group row justify-content-md-center">
                                                    <label for="orderID" class="col-md-2 col-form-label">ID Đơn
                                                        hàng:</label>
                                                    <div class="col-md-3">
                                                        ${newOrder.id}
                                                    </div>
                                                </div>

                                                <div class="form-group row justify-content-md-center">
                                                    <label for="orderPrice" class="col-md-2 col-form-label">Tổng giá đơn
                                                        hàng:</label>
                                                    <div class="col-md-3">
                                                        <fmt:formatNumber type="number"
                                                            value="${newOrder.totalPrice}" /> đ
                                                    </div>
                                                </div>

                                                <div class="form-group row justify-content-md-center">
                                                    <label for="fullName" class="col-md-2 col-form-label">Họ và
                                                        tên người mua:</label>
                                                    <div class="col-md-3">
                                                        <form:input type="text" id="fullName" class="form-control"
                                                            path="user.fullName" disabled="true" />
                                                    </div>
                                                </div>

                                                <div class="form-group row justify-content-md-center">
                                                    <label for="orderStatus" class="col-md-2 col-form-label">Trạng thái
                                                        đơn hàng:</label>
                                                    <div class="col-md-3">
                                                        <form:select id="orderStatus" class="form-control"
                                                            path="status">
                                                            <form:option value="PENDING">Đang chờ xử lí</form:option>
                                                            <form:option value="SHIPPING">Đang vận chuyển</form:option>
                                                            <form:option value="COMPLETE">Đãn hoàn thành</form:option>
                                                            <form:option value="CANCEL">Đã huỷ</form:option>
                                                        </form:select>
                                                    </div>
                                                </div>
                                                <div class="form-group row justify-content-md-center">
                                                    <button class="btn btn-warning btn-icon-split mt-3" type="submit">
                                                        <span class="icon text-white-50">
                                                            <i class="fas fa-pencil-alt"></i>
                                                        </span>
                                                        <span class="text">Cập nhật</span>
                                                    </button>
                                                </div>
                                            </form:form>
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