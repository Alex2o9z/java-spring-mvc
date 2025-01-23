<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

            <!DOCTYPE html>
            <html lang="en">

            <jsp:include page="../layout/head.jsp">
                <jsp:param name="pageTitle" value="Trang chủ" />
            </jsp:include>

            <body class="single single-product">

                <jsp:include page="../layout/header.jsp" />

                <!--  Content Start -->
                <div class="banner-wrapper no_background">
                    <div class="banner-wrapper-inner">
                        <nav class="kobolg-breadcrumb container"><a href="/">Trang chủ</a>
                            <i class="fa fa-angle-right"></i>Trang cá nhân
                        </nav>
                    </div>
                </div>

                <div class="main-container left-sidebar has-sidebar">
                    <!-- POST LAYOUT -->
                    <div class="container">
                        <div class="row">
                            <div class="main-content col-xl-9 col-lg-8 col-md-12 col-sm-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <tbody>
                                            <tr>
                                                <th>Email</th>
                                                <td>${currentUser.email}</td>
                                            </tr>
                                            <tr>
                                                <th>Số điện thoại</th>
                                                <td>
                                                    <c:if test="${empty currentUser.phone}">
                                                        <span class="text-muted">(Chưa có)</span>
                                                    </c:if>
                                                    ${currentUser.phone}
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>Họ và tên</th>
                                                <td>${currentUser.fullName}</td>
                                            </tr>
                                            <tr>
                                                <th>Địa chỉ</th>
                                                <td>
                                                    <c:if test="${empty currentUser.address}">
                                                        <span class="text-muted">(Chưa có)</span>
                                                    </c:if>
                                                    ${currentUser.address}
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="sidebar kobolg_sidebar col-xl-3 col-lg-4 col-md-12 col-sm-12">
                                <div id="widget-area" class="widget-area sidebar-blog">
                                    <div id="tag_cloud-3" class="widget widget_tag_cloud">
                                        <!-- <h2 class="widgettitle">Tags<span class="arrow"></span></h2> -->
                                        <div class="tagcloud text-center">
                                            <div class="kobolg-team style-01">
                                                <div class="team-inner">
                                                    <div class="thumb-avatar">
                                                        <c:if test="${empty currentUser.avatar}">
                                                            <img src="/admin/images/avatar/default-avatar.jpg"
                                                                class="attachment-full size-full" alt="img">
                                                        </c:if>
                                                        <c:if test="${not empty currentUser.avatar}">
                                                            <img src="/admin/images/avatar/${currentUser.avatar}"
                                                                class="attachment-full size-full" alt="img">
                                                        </c:if>
                                                    </div>
                                                    <div class="content-team">
                                                        <h3 class="name">
                                                            <!-- <a href="#" target="_self" tabindex="0">
                                                                Annie Taylor </a> -->
                                                            ${currentUser.fullName}
                                                        </h3>
                                                        <p class="positions">Cài đặt:</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <a href="/face-register"
                                                class="tag-cloud-link tag-link-46 tag-link-position-1">Thiết lập khuôn
                                                mặt</a>
                                        </div>
                                    </div>
                                </div><!-- .widget-area -->
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