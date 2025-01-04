<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

                <!DOCTYPE html>
                <html lang="en">

                <jsp:include page="../layout/head.jsp">
                    <jsp:param name="pageTitle" value="Sản phẩm" />
                </jsp:include>

                <body class="single single-product">

                    <jsp:include page="../layout/header.jsp" />

                    <!--  Content Start -->
                    <div class="banner-wrapper no_background">
                        <div class="banner-wrapper-inner">
                            <nav class="kobolg-breadcrumb container"><a href="/">Trang chủ</a>
                                <i class="fa fa-angle-right"></i>Sản phẩm
                            </nav>
                        </div>
                    </div>

                    <div class="main-container shop-page left-sidebar">
                        <div class="container">
                            <div class="row">
                                <div class="main-content col-xl-9 col-lg-8 col-md-8 col-sm-12 has-sidebar">
                                    <!-- <div class="shop-control shop-before-control">
                                        <div class="grid-view-mode">
                                            <form>
                                                <a href="shop.html" data-toggle="tooltip" data-placement="top"
                                                    class="modes-mode mode-grid display-mode active" value="grid">
                                                    <span class="button-inner">
                                                        Shop Grid
                                                        <span></span>
                                                        <span></span>
                                                        <span></span>
                                                    </span>
                                                </a>
                                                <a href="shop-list.html" data-toggle="tooltip" data-placement="top"
                                                    class="modes-mode mode-list display-mode " value="list">
                                                    <span class="button-inner">
                                                        Shop List
                                                        <span></span>
                                                        <span></span>
                                                        <span></span>
                                                    </span>
                                                </a>
                                            </form>
                                        </div>
                                        <form class="kobolg-ordering" method="get">
                                            <select title="product_cat" name="orderby" class="orderby">
                                                <option value="menu_order" selected="selected">Default sorting</option>
                                                <option value="popularity">Sort by popularity</option>
                                                <option value="rating">Sort by average rating</option>
                                                <option value="date">Sort by latest</option>
                                                <option value="price">Sort by price: low to high</option>
                                                <option value="price-desc">Sort by price: high to low</option>
                                            </select>
                                        </form>
                                        <form class="per-page-form">
                                            <label>
                                                <select class="option-perpage">
                                                    <option value="12" selected="">
                                                        Show 12
                                                    </option>
                                                    <option value="5">
                                                        Show 05
                                                    </option>
                                                    <option value="10">
                                                        Show 10
                                                    </option>
                                                    <option value="12">
                                                        Show 12
                                                    </option>
                                                    <option value="15">
                                                        Show 15
                                                    </option>
                                                    <option value="20">
                                                        Show All
                                                    </option>
                                                </select>
                                            </label>
                                        </form>
                                    </div> -->

                                    <div class=" auto-clear equal-container better-height kobolg-products">
                                        <ul class="row products columns-3">

                                            <c:if test="${totalPages ==  0}">
                                                <h3 class="m-auto p-5">Không tìm thấy sản phẩm phù hợp</h3>
                                            </c:if>
                                            <c:forEach var="product" items="${products}">
                                                <li class="product-item wow fadeInUp product-item rows-space-30 col-bg-4 col-xl-4 col-lg-6 col-md-6 col-sm-6 col-ts-6 style-01 post-30 product type-product status-publish has-post-thumbnail product_cat-light product_cat-bed product_cat-specials product_tag-light product_tag-table product_tag-sock last instock featured downloadable shipping-taxable purchasable product-type-simple"
                                                    data-wow-duration="1s" data-wow-delay="0ms" data-wow="fadeInUp">
                                                    <div class="product-inner tooltip-left">
                                                        <div class="product-thumb">
                                                            <a class="thumb-link" href="/product/${product.id}">
                                                                <img class="img-responsive"
                                                                    src="/admin/images/product/${product.image}"
                                                                    alt="${product.name}" width="600" height="778">
                                                            </a>
                                                            <!-- <div class="flash">
                                                                <span class="onnew"><span class="text">New</span></span>
                                                            </div> -->
                                                            <div class="group-button">
                                                                <!-- <div class="yith-wcwl-add-to-wishlist">
                                                                    <div class="yith-wcwl-add-button show">
                                                                        <a href="#" class="add_to_wishlist">Add to
                                                                            Wishlist</a>
                                                                    </div>
                                                                </div>
                                                                <div class="kobolg product compare-button">
                                                                    <a href="#" class="compare button">Compare</a>
                                                                </div> -->
                                                                <a href="/product/${product.id}"
                                                                    class="button yith-wcqv-button">Quick
                                                                    View</a>
                                                                <div class="add-to-cart">
                                                                    <a href="#" data-product-id="${product.id}"
                                                                        class="btnAddToCartHomepage button product_type_simple add_to_cart_button">
                                                                        Add to cart</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="product-info equal-elem">
                                                            <h3 class="product-name product_title">
                                                                <a href="/product/${product.id}">${product.name}</a>
                                                            </h3>
                                                            <!-- <div class="rating-wapper nostar">
                                                                <div class="star-rating"><span style="width:0%">Rated
                                                                        <strong class="rating">0</strong> out of
                                                                        5</span>
                                                                </div>
                                                                <span class="review">(0)</span>
                                                            </div> -->
                                                            <span class="price">
                                                                <span class="kobolg-Price-amount amount">
                                                                    <fmt:formatNumber type="number"
                                                                        value="${product.price}" /><span
                                                                        class="kobolg-Price-currencySymbol"> đ</span>
                                                                </span>
                                                            </span>
                                                        </div>
                                                    </div>
                                                </li>
                                            </c:forEach>

                                        </ul>
                                    </div>

                                    <!-- Pagination -->
                                    <!-- <div class="shop-control shop-after-control">
                                        <nav class="kobolg-pagination">
                                            <span class="page-numbers current">1</span>
                                            <a class="page-numbers" href="#">2</a>
                                            <a class="next page-numbers" href="#">Next</a>
                                        </nav>
                                        <p class="kobolg-result-count">Showing 1–12 of 20 results</p>
                                    </div> -->

                                    <!-- Pagination -->
                                    <c:if test="${totalPages > 0}">
                                        <div class="shop-control shop-after-control">
                                            <nav class="kobolg-pagination">
                                                <!-- Previous Button -->
                                                <a class="prev page-numbers ${currentPage eq 1 ? 'btn disabled d-none' : ''}"
                                                    href="/products?page=${currentPage - 1}${queryString}"
                                                    aria-label="Previous">Previous</a>

                                                <!-- Pagination Numbers -->
                                                <c:forEach begin="1" end="${totalPages}" var="i">
                                                    <c:choose>
                                                        <c:when test="${i eq currentPage}">
                                                            <span class="page-numbers current">${i}</span>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <c:if
                                                                test="${i le 2 || i ge totalPages - 1 || (i ge currentPage - 2 && i le currentPage + 2)}">
                                                                <a class="page-numbers"
                                                                    href="/products?page=${i}${queryString}">${i}</a>
                                                            </c:if>
                                                            <c:if test="${i eq 3 && currentPage gt 5}">
                                                                <span class="page-numbers dots">...</span>
                                                            </c:if>
                                                            <c:if
                                                                test="${i eq totalPages - 2 && currentPage lt totalPages - 4}">
                                                                <span class="page-numbers dots">...</span>
                                                            </c:if>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:forEach>

                                                <!-- Next Button -->
                                                <a class="next page-numbers ${currentPage eq totalPages ? 'btn disabled d-none' : ''}"
                                                    href="/products?page=${currentPage + 1}${queryString}"
                                                    aria-label="Next">Next</a>
                                            </nav>

                                            <p class="kobolg-result-count">Hiển thị ${startResult}–${endResult} trong
                                                tổng số ${totalResults} kết quả</p>
                                        </div>
                                    </c:if>

                                </div>

                                <jsp:include page="../components/filter.jsp" />

                            </div>
                        </div>
                    </div>
                    <!-- Content End -->

                    <jsp:include page="../layout/footer.jsp" />
                    <jsp:include page="../layout/foot.jsp" />
                </body>

                </html>