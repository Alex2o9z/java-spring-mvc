<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <jsp:include page="../layout/head.jsp">
        <jsp:param name="pageTitle" value="404" />
    </jsp:include>

    <body>

        <jsp:include page="../layout/header.jsp" />

        <!--  Content Start -->
        <div class="main-container text-center error-404 not-found">
            <div class="container">
                <h1 class="title-404">404</h1>
                <!-- <h1 class="title">Opps! This page Could Not Be Found!</h1>
                        <p class="subtitle">Sorry bit the page you are looking for does not exist, have been removed or name changed</p> -->
                <!-- .page-content -->
                <a href="/" class="button">Trở về trang chủ</a>
            </div>
        </div>
        <!-- Content End -->

        <jsp:include page="../layout/footer.jsp" />
        <jsp:include page="../layout/foot.jsp" />
    </body>

    </html>