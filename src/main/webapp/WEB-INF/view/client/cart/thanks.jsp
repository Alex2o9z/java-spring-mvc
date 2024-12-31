<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <!DOCTYPE html>
            <html lang="en">

            <jsp:include page="../layout/head.jsp">
                <jsp:param name="pageTitle" value="Cảm ơn" />
            </jsp:include>

            <body>

                <jsp:include page="../layout/header.jsp" />

                <!--  Content Start -->
                <div class="main-container text-center error-404 not-found">
                    <div class="container">
                        <!-- <h1 class="title-404">ĐẶT HÀNG THÀNH CÔNG!</h1> -->
                        <h1 class="title">Cảm ơn bạn đã đặt hàng, đơn hàng đã được xác nhận thành công.</h1>
                        <p class="subtitle">Chúng tôi rất vui mừng được phục vụ bạn! Đơn hàng của bạn đã được ghi nhận
                            và sẽ được xử lý trong thời gian sớm nhất.</p>
                        <!-- .page-content -->
                        <a href="/" class="button">Trở về trang chủ</a>
                    </div>
                </div>
                <!-- Content End -->

                <jsp:include page="../layout/footer.jsp" />
                <jsp:include page="../layout/foot.jsp" />
            </body>

            </html>