<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <!DOCTYPE html>
            <html lang="en">

            <jsp:include page="../layout/head.jsp">
                <jsp:param name="pageTitle" value="Xác nhận khuôn mặt" />
            </jsp:include>

            <body>

                <jsp:include page="../layout/header.jsp" />

                <!--  Content Start -->
                <main class="site-main  main-container no-sidebar" style="margin-top: -4.5rem;">
                    <div class="container">
                        <div class="row">
                            <div class="main-content col-md-12">
                                <div class="page-main-content">
                                    <div class="kobolg">
                                        <div class="kobolg-notices-wrapper"></div>
                                        <div class="u-columns col1-set" id="customer_login">
                                            <div class="u-column0 col-0">
                                                <h2>Đăng nhập bằng khuôn mặt</h2>
                                                <form id="form_login" class="kobolg-form kobolg-form-login login"
                                                    method="post" action="/login">
                                                    <c:if test="${param.error != null}">
                                                        <div class="my-2" style="color: red;">Invalid email or password.
                                                        </div>
                                                    </c:if>

                                                    <c:if test="${param.logout != null}">
                                                        <div class="my-2" style="color: green;">Đăng xuất thành công.
                                                        </div>
                                                    </c:if>

                                                    <video id="video" autoplay playsinline
                                                        style="display: none;"></video>
                                                    <div class="form-floating mb-3"></div>
                                                    <canvas id="canvas" width="400" height="300"></canvas>
                                                    <!-- <button id="record">Ghi hình</button> -->
                                                    <!-- <img id="result" alt="Ảnh trả về sẽ hiển thị tại đây"> -->
                                                    <h2 id="result_label" style="display: none;"></h2>
                                                    <h2 id="min_distance" style="display: none;"></h2>



                                                    <div class="form-floating mb-3">
                                                        <input id="username" class="form-control" type="email"
                                                            placeholder="name@example.com" name="username"
                                                            style="display: none;" />
                                                        <!-- value="bqsang.20it1@gmail.com" style="display: none;" -->
                                                        <!-- <label for="inputEmail">Email address</label> -->
                                                    </div>
                                                    <div class="form-floating mb-3">
                                                        <input id="password" class="form-control" type="password"
                                                            placeholder="Password" name="password"
                                                            style="display: none;" />
                                                        <!-- <label for="inputPassword">Password</label> -->
                                                    </div>
                                                    <div>
                                                        <input type="hidden" name="${_csrf.parameterName}"
                                                            value="${_csrf.token}" />
                                                    </div>

                                                    <!-- <div class="row kobolg-form kobolg-form-login login">
                                                        <div
                                                            class="col kobolg-form-row kobolg-form-row--wide form-row form-row-wide">
                                                            <input type="hidden" name="${_csrf.parameterName}"
                                                                value="${_csrf.token}" />
                                                            <button type="submit" class="kobolg-Button button"
                                                                name="login" value="Log in">Đăng nhập
                                                            </button>
                                                        </div>
                                                        <div
                                                            class="col kobolg-form-row kobolg-form-row--wide form-row form-row-wide align-self-center">
                                                            Chưa có tài khoản?&nbsp;<a href="/register">Đăng ký!</a>
                                                        </div>
                                                    </div> -->

                                                </form>

                                                <div class="row">
                                                    <div class="col">
                                                        <hr>
                                                    </div>
                                                    <div class="col text-nowrap">
                                                        Hoặc đăng nhập với
                                                    </div>
                                                    <div class="col">
                                                        <hr>
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="row kobolg-form kobolg-form-login login">
                                                    <div
                                                        class="col kobolg-form-row kobolg-form-row--wide form-row form-row-wide">
                                                        <button class="kobolg-Button button btn-block"
                                                            onclick="document.location='/oauth2/authorization/google'">
                                                            <span class="uicons-brands-google"></span>
                                                            Google
                                                        </button>
                                                    </div>
                                                    <div
                                                        class="col kobolg-form-row kobolg-form-row--wide form-row form-row-wide">
                                                        <button class="kobolg-Button button btn-block"
                                                            onclick="document.location='/oauth2/authorization/github'">
                                                            <span class="uicons-brands-github"></span>
                                                            Github
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <!-- Content End -->

                <!-- Modal Popup -->
                <div class="modal fade" id="welcomeModal" tabindex="-1" role="dialog"
                    aria-labelledby="welcomeModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="welcomeModalLabel">Xác nhận khuôn mặt thành công!</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body text-center">
                                <div class="icon-container mb-3">
                                    <i class="fa fa-check-circle text-success success-icon"></i>
                                </div>
                                <p id="welcomeMessage">Xác nhận đăng nhập thành công.</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" id="confirmLogin">Tiếp tục</button>
                            </div>
                        </div>
                    </div>
                </div>

                <jsp:include page="../layout/footer.jsp" />
                <jsp:include page="../layout/foot.jsp" />
                <script src="/client/js/auth/face-login.js"></script>
            </body>

            </html>