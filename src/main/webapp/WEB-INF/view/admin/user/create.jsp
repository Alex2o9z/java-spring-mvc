<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <!DOCTYPE html>
            <html lang="en">

            <jsp:include page="../layout/head.jsp">
                <jsp:param name="pageTitle" value="Thêm người dùng" />
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
                                    <h1 class="h3 mb-0 text-gray-800">Thêm mới người dùng</h1>
                                </div>

                                <!-- Message Content -->
                                <jsp:include page="../layout/message.jsp" />
                                <!-- End of Message Content -->

                                <!-- DataTales Example -->
                                <div class="card shadow mb-4">
                                    <div
                                        class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                        <h6 class="m-0 font-weight-bold text-primary">
                                            Thêm người dùng
                                        </h6>
                                        <a href="/admin/user" class="btn btn-primary">Trở về</a>
                                    </div>
                                    <div class="card-body">
                                        <form:form method="post" action="/admin/user/create" modelAttribute="newUser"
                                            enctype="multipart/form-data">

                                            <c:set var="errorEmail">
                                                <form:errors path="email" cssClass="invalid-feedback" />
                                            </c:set>
                                            <c:set var="errorPassword">
                                                <form:errors path="password" cssClass="invalid-feedback" />
                                            </c:set>
                                            <c:set var="errorFullName">
                                                <form:errors path="fullName" cssClass="invalid-feedback" />
                                            </c:set>

                                            <div class="form-group row justify-content-md-center">
                                                <label for="email" class="col-md-1 col-form-label">Email:</label>
                                                <div class="col-md-3">
                                                    <form:input type="text" id="email"
                                                        class="form-control ${not empty errorEmail ? 'is-invalid' : ''}"
                                                        path="email" required="required" />
                                                    ${errorEmail}
                                                </div>
                                            </div>
                                            <div class="form-group row justify-content-md-center">
                                                <label for="password" class="col-md-1 col-form-label">Mật khẩu:</label>
                                                <div class="col-md-3">
                                                    <div class="input-group" id="show_hide_password">
                                                        <form:input type="password" id="password"
                                                            class="form-control ${not empty errorPassword ? 'is-invalid' : ''}"
                                                            path="password" required="required" />
                                                        <div class="input-group-append">
                                                            <div class="input-group-text">
                                                                <a href="" class="text-secondary">
                                                                    <i class="fa fa-eye-slash" aria-hidden="true"></i>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    ${errorPassword}
                                                </div>
                                            </div>
                                            <div class="form-group row justify-content-md-center">
                                                <label for="fullName" class="col-md-1 col-form-label">Họ và tên:</label>
                                                <div class="col-md-3">
                                                    <form:input type="text" id="fullName"
                                                        class="form-control ${not empty errorFullName ? 'is-invalid' : ''}"
                                                        path="fullName" required="required" />
                                                    ${errorFullName}
                                                </div>
                                            </div>
                                            <div class="form-group row justify-content-md-center">
                                                <label for="phone" class="col-md-1 col-form-label">Số điện
                                                    thoại:</label>
                                                <div class="col-md-3">
                                                    <form:input type="text" id="phone" class="form-control"
                                                        path="phone" />
                                                </div>
                                            </div>
                                            <div class="form-group row justify-content-md-center">
                                                <label for="address" class="col-md-1 col-form-label">Địa chỉ:</label>
                                                <div class="col-md-3">
                                                    <form:input type="text" id="address" class="form-control"
                                                        path="address" />
                                                </div>
                                            </div>
                                            <div class="form-group row justify-content-md-center">
                                                <label for="role" class="col-md-1 col-form-label">Vai trò:</label>
                                                <div class="col-md-3">
                                                    <form:select id="role" class="form-control" path="role.name">
                                                        <form:option value="ADMIN">ADMIN</form:option>
                                                        <form:option value="USER">USER</form:option>
                                                    </form:select>
                                                </div>
                                            </div>

                                            <div class="form-group row justify-content-md-center">
                                                <label for="avatarFile" class="col-md-1 col-form-label">Ảnh đại
                                                    diện:</label>
                                                <div class="col-md-3">
                                                    <div class="custom-file">
                                                        <input type="file" class="custom-file-input" id="avatarFile"
                                                            accept=".png, .jpg, .jpeg" name="imageFile" lang="vi">
                                                        <label class="custom-file-label" for="avatarFile">Chọn ảnh từ
                                                            thiết bị</label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group row justify-content-md-center">
                                                <div class="col-md-4 d-flex justify-content-center">
                                                    <img style="max-height: 250px; display: none;" alt="avatar preview"
                                                        id="avatarPreview">
                                                </div>
                                            </div>

                                            <div class="form-group row justify-content-md-center">
                                                <button class="btn btn-success btn-icon-split mt-3" type="submit">
                                                    <span class="icon text-white-50">
                                                        <i class="fas fa-plus"></i>
                                                    </span>
                                                    <span class="text">Thêm người dùng</span>
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

                <!-- Modal Content -->
                <jsp:include page="../layout/deleteModal.jsp">
                    <jsp:param name="entity" value="người dùng" />
                    <jsp:param name="actionSubfolder" value="user" />
                    <jsp:param name="modalAttribute" value="deleteUser" />
                </jsp:include>

                <!-- End of Page Wrapper -->

                <jsp:include page="../layout/foot.jsp" />

            </body>

            </html>