<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <!DOCTYPE html>
            <html lang="en">

            <jsp:include page="../layout/head.jsp">
                <jsp:param name="pageTitle" value="Đăng ký" />
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
                                                <h2>Đăng ký tài khoản</h2>
                                                <!-- <form method="post" class="kobolg-form kobolg-form-register register"> -->
                                                <form:form method="post" action="/register"
                                                    modelAttribute="registerUser"
                                                    class="kobolg-form kobolg-form-register register">

                                                    <c:set var="errorFirstName">
                                                        <form:errors path="firstName" cssClass="invalid-feedback" />
                                                    </c:set>
                                                    <c:set var="errorLastName">
                                                        <form:errors path="lastName" cssClass="invalid-feedback" />
                                                    </c:set>
                                                    <c:set var="errorEmail">
                                                        <form:errors path="email" cssClass="invalid-feedback" />
                                                    </c:set>
                                                    <c:set var="errorPassword">
                                                        <form:errors path="password" cssClass="invalid-feedback" />
                                                    </c:set>
                                                    <c:set var="errorConfirmPassword">
                                                        <form:errors path="confirmPassword"
                                                            cssClass="invalid-feedback" />
                                                    </c:set>

                                                    <div class="row">
                                                        <div class="col">
                                                            <p
                                                                class="kobolg-form-row kobolg-form-row--wide form-row form-row-wide">
                                                                <label for="inputFirstName">Tên&nbsp;<span
                                                                        class="required">*</span></label>
                                                                <form:input type="text"
                                                                    class="kobolg-Input kobolg-Input--text input-text form-control ${not empty errorFirstName ? 'is-invalid' : ''}"
                                                                    name="firstName" id="inputFirstName"
                                                                    autocomplete="given-name" value=""
                                                                    path="firstName" />
                                                                ${errorFirstName}
                                                            </p>
                                                        </div>
                                                        <div class="col">
                                                            <p
                                                                class="kobolg-form-row kobolg-form-row--wide form-row form-row-wide">
                                                                <label for="inputLastName">Họ&nbsp;<span
                                                                        class="required">*</span></label>
                                                                <form:input type="text"
                                                                    class="kobolg-Input kobolg-Input--text input-text form-control ${not empty errorLastName ? 'is-invalid' : ''}"
                                                                    name="lastName" id="inputLastName"
                                                                    autocomplete="family-name" value=""
                                                                    path="lastName" />
                                                                ${errorLastName}
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <p
                                                        class="kobolg-form-row kobolg-form-row--wide form-row form-row-wide">
                                                        <label for="inputEmail">Địa chỉ email&nbsp;<span
                                                                class="required">*</span></label>
                                                        <form:input type="email"
                                                            class="kobolg-Input kobolg-Input--text input-text form-control ${not empty errorEmail ? 'is-invalid' : ''}"
                                                            name="email" id="inputEmail" autocomplete="email" value=""
                                                            path="email" />
                                                        ${errorEmail}
                                                    </p>
                                                    <p
                                                        class="kobolg-form-row kobolg-form-row--wide form-row form-row-wide">
                                                        <label for="inputPassword">Mật khẩu&nbsp;<span
                                                                class="required">*</span></label>
                                                        <form:input
                                                            class="kobolg-Input kobolg-Input--text input-text form-control ${not empty errorPassword ? 'is-invalid' : ''}"
                                                            type="password" name="password" id="inputPassword"
                                                            autocomplete="current-password" path="password" />
                                                        ${errorPassword}
                                                    </p>
                                                    <p
                                                        class="kobolg-form-row kobolg-form-row--wide form-row form-row-wide">
                                                        <label for="inputPasswordConfirm">Xác nhận mật khẩu&nbsp;<span
                                                                class="required">*</span></label>
                                                        <form:input
                                                            class="kobolg-Input kobolg-Input--text input-text form-control ${not empty errorConfirmPassword ? 'is-invalid' : ''}"
                                                            type="password" name="confirmPassword"
                                                            id="inputPasswordConfirm" path="confirmPassword" />
                                                        ${errorConfirmPassword}
                                                    </p>
                                                    <!-- <div class="kobolg-privacy-policy-text">
                                                        <p>Your personal data will be used to
                                                            support your experience throughout this website, to manage
                                                            access to your
                                                            account, and for other purposes described in our <a href="#"
                                                                class="kobolg-privacy-policy-link"
                                                                target="_blank">privacy policy</a>.</p>
                                                    </div> -->
                                                    <!-- <p class="kobolg-FormRow form-row">
                                                        <input type="hidden" id="kobolg-register-nonce"
                                                            name="kobolg-register-nonce" value="45fae70a87"><input
                                                            type="hidden" name="_wp_http_referer"
                                                            value="/kobolg/my-account/">
                                                        <button type="submit" class="kobolg-Button button"
                                                            name="register" value="Register">Đăng ký
                                                        </button>
                                                    </p>
                                                    <p class="kobolg-LostPassword lost_password">
                                                        Đã có tài khoản?&nbsp;<a href="/login">Đăng Nhập.</a>
                                                    </p> -->

                                                    <div class="row kobolg-form kobolg-form-login login">
                                                        <div
                                                            class="col kobolg-form-row kobolg-form-row--wide form-row form-row-wide">
                                                            <button type="submit" class="kobolg-Button button"
                                                                name="register" value="Register">Đăng ký
                                                            </button>
                                                        </div>
                                                        <div
                                                            class="col kobolg-form-row kobolg-form-row--wide form-row form-row-wide align-self-center">
                                                            Đã có tài khoản?&nbsp;<a href="/login">Đăng Nhập.</a>
                                                        </div>
                                                    </div>

                                                    <!-- </form> -->
                                                </form:form>

                                                <div class="row">
                                                    <div class="col">
                                                        <hr>
                                                    </div>
                                                    <div class="col text-nowrap">
                                                        Hoặc đăng ký với
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

                <jsp:include page="../layout/footer.jsp" />
                <jsp:include page="../layout/foot.jsp" />

            </body>

            </html>