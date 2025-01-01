<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <!DOCTYPE html>
            <html lang="en">

            <jsp:include page="../layout/head.jsp">
                <jsp:param name="pageTitle" value="Quản lí người dùng" />
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
                                    <h1 class="h3 mb-0 text-gray-800">Quản lí người dùng</h1>
                                    <a href="/admin/user/create"
                                        class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                            class="fas fa-plus-circle fa-sm text-white-50"></i> Thêm người dùng</a>

                                </div>

                                <!-- Message Content -->
                                <jsp:include page="../layout/message.jsp" />
                                <!-- End of Message Content -->

                                <!-- DataTales Example -->
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold text-primary">Danh sách người dùng</h6>
                                    </div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="dataTable" width="100%"
                                                cellspacing="0">
                                                <thead>
                                                    <tr>
                                                        <th>STT</th>
                                                        <th>Họ và tên</th>
                                                        <th>Email</th>
                                                        <th>Vai trò</th>
                                                        <th>Hành động</th>
                                                        <th>Loại</th>
                                                        <th>Mã</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="user" items="${users}" varStatus="status">
                                                        <tr>
                                                            <td>${status.index + 1}</td>
                                                            <td>${user.fullName}</td>
                                                            <td>${user.email}</td>
                                                            <td>${user.role.name}</td>
                                                            <td>
                                                                <a class="btn btn-success"
                                                                    href="/admin/user/${user.id}">Xem thêm</a>
                                                                <a class="btn btn-warning"
                                                                    href="/admin/user/update/${user.id}">Cập nhật</a>
                                                                <a class="btn btn-danger" href="#" data-toggle="modal"
                                                                    data-target="#deleteModal"
                                                                    data-entity-id="${user.id}"
                                                                    data-entity-name="${user.fullName}"> Xoá
                                                                </a>
                                                            </td>
                                                            <td>
                                                                <c:if test="${empty user.provider}">
                                                                    LOCAL
                                                                </c:if>
                                                                ${user.provider}
                                                            </td>
                                                            <td>${user.id}</td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>

                                            <!-- Pagination -->
                                            <c:if test="${totalPages > 0}">
                                                <nav aria-label="Page navigation example">
                                                    <div class="container-fluid pt-2">
                                                        <div class="row justify-content-between">
                                                            <div class="col-sm-auto">
                                                                <span>Hiển thị ${startResult}–${endResult} trong
                                                                    tổng số
                                                                    ${totalResults} kết quả</span>
                                                            </div>

                                                            <div class="col-sm-auto">
                                                                <ul class="pagination">
                                                                    <!-- Previous Button -->
                                                                    <li
                                                                        class="page-item ${currentPage eq 1 ? 'disabled' : ''}">
                                                                        <a class="page-link"
                                                                            href="/admin/user?page=${currentPage - 1}${queryString}"
                                                                            aria-label="Trước">
                                                                            <span aria-hidden="true">Trước</span>
                                                                        </a>
                                                                    </li>

                                                                    <!-- Pagination Numbers -->
                                                                    <c:forEach begin="1" end="${totalPages}" var="i">
                                                                        <c:choose>
                                                                            <c:when test="${i eq currentPage}">
                                                                                <li class="page-item active">
                                                                                    <span class="page-link">
                                                                                        ${i} <span
                                                                                            class="sr-only">(current)</span>
                                                                                    </span>
                                                                                </li>
                                                                            </c:when>
                                                                            <c:otherwise>
                                                                                <c:if
                                                                                    test="${i le 2 || i ge totalPages - 1 || (i ge currentPage - 2 && i le currentPage + 2)}">
                                                                                    <li class="page-item">
                                                                                        <a class="page-link"
                                                                                            href="/admin/user?page=${i}${queryString}">${i}</a>
                                                                                    </li>
                                                                                </c:if>
                                                                                <c:if
                                                                                    test="${i eq 3 && currentPage gt 5}">
                                                                                    <li class="page-item">
                                                                                        <span
                                                                                            class="page-link dots">...</span>
                                                                                    </li>
                                                                                </c:if>
                                                                                <c:if
                                                                                    test="${i eq totalPages - 2 && currentPage lt totalPages - 4}">
                                                                                    <li class="page-item">
                                                                                        <span
                                                                                            class="page-link dots">...</span>
                                                                                    </li>
                                                                                </c:if>
                                                                            </c:otherwise>
                                                                        </c:choose>
                                                                    </c:forEach>

                                                                    <!-- Next Button -->
                                                                    <li
                                                                        class="page-item ${currentPage eq totalPages ? 'disabled' : ''}">
                                                                        <a class="page-link"
                                                                            href="/admin/user?page=${currentPage + 1}${queryString}"
                                                                            aria-label="Tiếp">
                                                                            <span aria-hidden="true">Tiếp</span>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </nav>
                                            </c:if>
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