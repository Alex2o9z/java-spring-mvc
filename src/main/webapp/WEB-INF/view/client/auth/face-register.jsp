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
                                                <h2>Xác thực khuôn mặt</h2>
                                                <form class="kobolg-form kobolg-form-login login" method="post"
                                                    action="/login">

                                                    <video id="video" autoplay playsinline
                                                        style="display: none;"></video>
                                                    <canvas id="canvas" width="400" height="300"></canvas>

                                                    <h2 id="status"></h2>
                                                    <h3 id="time"></h3>

                                                </form>
                                                <br>
                                                <div class="row kobolg-form kobolg-form-login login">
                                                    <div
                                                        class="col kobolg-form-row kobolg-form-row--wide form-row form-row-wide">
                                                        <input type="hidden" id="sessionId"
                                                            data-user-id="${sessionScope.id}">
                                                        <button class="kobolg-Button button btn-block" id="record">
                                                            Bắt đầu quét
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

                <!-- Modal -->
                <div class="modal fade" id="faceRegisterModal" tabindex="-1" role="dialog"
                    aria-labelledby="faceRegisterModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="faceRegisterModalLabel">Thông báo</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body text-center">
                                <div class="icon-container mb-3">
                                    <i class="fa fa-check-circle text-success success-icon"></i>
                                </div>
                                <p id="modalMessage">Nội dung thông báo</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>
                    </div>
                </div>


                <jsp:include page="../layout/footer.jsp" />
                <jsp:include page="../layout/foot.jsp" />
                <script src="/client/js/auth/face-register.js"></script>
                <script>
                    // $(document).ready(function () {
                    //     $('#welcomeModal').modal('show');
                    // });
                </script>
            </body>

            </html>