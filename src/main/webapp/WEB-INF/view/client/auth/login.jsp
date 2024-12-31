<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <!DOCTYPE html>
            <html lang="en">

            <jsp:include page="../layout/head.jsp">
                <jsp:param name="pageTitle" value="Đăng nhập" />
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
                                                <h2>Đăng nhập</h2>
                                                <form class="kobolg-form kobolg-form-login login" method="post"
                                                    action="/login">

                                                    <p
                                                        class="kobolg-form-row kobolg-form-row--wide form-row form-row-wide">
                                                        <label for="username">Địa chỉ email&nbsp;<span
                                                                class="required">*</span></label>
                                                        <input type="email"
                                                            class="kobolg-Input kobolg-Input--text input-text"
                                                            name="username" id="username" autocomplete="username"
                                                            value="">
                                                    </p>

                                                    <p
                                                        class="kobolg-form-row kobolg-form-row--wide form-row form-row-wide">
                                                        <label for="password">Mật khẩu&nbsp;<span
                                                                class="required">*</span></label>
                                                        <input class="kobolg-Input kobolg-Input--text input-text"
                                                            type="password" name="password" id="password"
                                                            autocomplete="current-password">
                                                    </p>

                                                    <p
                                                        class="kobolg-form-row kobolg-form-row--wide form-row form-row-wide">
                                                        <c:if test="${param.error != null}">
                                                            <div style="color: red;">Địa chỉ email hoặc mật
                                                                khẩu không đúng.
                                                            </div>
                                                        </c:if>

                                                        <c:if test="${param.logout != null}">
                                                            <div style="color: green;">Đăng xuất thành công.
                                                            </div>
                                                        </c:if>
                                                    </p>


                                                    <!-- <p class="form-row">
                                                        <input type="hidden" name="${_csrf.parameterName}"
                                                            value="${_csrf.token}" />
                                                        <button type="submit" class="kobolg-Button button" name="login"
                                                            value="Log in">Đăng nhập
                                                        </button>
                                                        <label class="kobolg-form__label kobolg-form__label-for-checkbox inline">
                                                            <input class="kobolg-form__input kobolg-form__input-checkbox"
                                                                   name="rememberme" type="checkbox" id="rememberme" value="forever">
                                                            <span>Remember me</span>
                                                        </label>
                                                    </p> -->

                                                    <div class="row kobolg-form kobolg-form-login login">
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
                                                    </div>

                                                    <!-- <div class="row">
                                                        <div
                                                            class="col kobolg-form-row kobolg-form-row--wide form-row form-row-wide">
                                                            <a href="my-account.htmllost-password/">Quên mật
                                                                khẩu?</a>
                                                        </div>
                                                        <div
                                                            class="col kobolg-form-row kobolg-form-row--wide form-row form-row-wide">
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
                                                    <div
                                                        class="col kobolg-form-row kobolg-form-row--wide form-row form-row-wide">
                                                        <button class="kobolg-Button button btn-block"
                                                            onclick="document.location='/face-login'">
                                                            Xác nhận khuôn mặt
                                                        </button>
                                                    </div>
                                                </div>

                                                <div
                                                    class="kobolg-form-row kobolg-form-row--wide form-row form-row-wide text-center">
                                                    <a href="my-account.htmllost-password/">Quên mật
                                                        khẩu?</a>
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