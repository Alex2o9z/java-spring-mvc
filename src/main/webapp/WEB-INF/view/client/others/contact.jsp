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
                            <i class="fa fa-angle-right"></i>Liên hệ
                        </nav>
                    </div>
                </div>

                <div class="site-main main-container no-sidebar">
                    <div class="section-041">
                        <div class="container">
                            <div class="kobolg-google-maps" id="kobolg-google-maps" data-hue="" data-lightness="1"
                                data-map-style="2" data-saturation="-99" data-longitude="-73.985130"
                                data-latitude="40.758896" data-pin-icon="" data-zoom="14" data-map-type="ROADMAP"></div>
                        </div>
                    </div>
                    <div class="section-042">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12 offset-xl-1 col-xl-10 col-lg-12">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <h4 class="az_custom_heading">WP SHOP THEME</h4>
                                            <p>3100 West Cary Street Richmond, Virginia 23221<br>
                                                P: 804.355.4383 F: 804.367.7901</p>
                                            <h4 class="az_custom_heading">Store Hours</h4>
                                            <p>Monday-Saturday 11am-7pm ET<br>
                                                Sunday 11am-6pm ET</p>
                                            <h4 class="az_custom_heading">Specialist Hours</h4>
                                            <p>Monday-Friday 9am-5pm ET</p>
                                        </div>
                                        <div class="col-md-6">
                                            <div role="form" class="wpcf7">
                                                <form class="wpcf7-form">
                                                    <p><label> Name *<br>
                                                            <span class="wpcf7-form-control-wrap your-name">
                                                                <input name="your-name" value="" size="40"
                                                                    class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required"
                                                                    type="text"></span>
                                                        </label></p>
                                                    <p><label> Email *<br>
                                                            <span class="wpcf7-form-control-wrap your-email">
                                                                <input name="your-email" value="" size="40"
                                                                    class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email"
                                                                    type="email"></span>
                                                        </label></p>
                                                    <p><label> Your Message *<br>
                                                            <span class="wpcf7-form-control-wrap your-message">
                                                                <textarea name="your-message" cols="40" rows="10"
                                                                    class="wpcf7-form-control wpcf7-textarea"></textarea></span>
                                                        </label></p>
                                                    <p><input value="Send" class="wpcf7-form-control wpcf7-submit"
                                                            type="submit"></p>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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