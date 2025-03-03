<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="utf-8">
                    <title> ${product.name} - Laptopshop</title>
                    <meta content="width=device-width, initial-scale=1.0" name="viewport">
                    <meta content="" name="keywords">
                    <meta content="" name="description">

                    <!-- Google Web Fonts -->
                    <link rel="preconnect" href="https://fonts.googleapis.com">
                    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                    <link
                        href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap"
                        rel="stylesheet">

                    <!-- Icon Font Stylesheet -->
                    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
                    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
                        rel="stylesheet">

                    <!-- Libraries Stylesheet -->
                    <link href="/client/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
                    <link href="/client/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


                    <!-- Customized Bootstrap Stylesheet -->
                    <link href="/client/css/bootstrap.min.css" rel="stylesheet">

                    <!-- Template Stylesheet -->
                    <link href="/client/css/style.css" rel="stylesheet">

                    <meta name="_csrf" content="${_csrf.token}" />
                    <!-- default header name is X-CSRF-TOKEN -->
                    <meta name="_csrf_header" content="${_csrf.headerName}" />


                    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-toast-plugin/1.3.2/jquery.toast.min.css"
                        rel="stylesheet">
                    <style>
                        /* Hiệu ứng hover cho liên kết sản phẩm */
                        .product-link {
                            transition: all 0.3s ease-in-out;
                        }

                        .product-link:hover {
                            transform: scale(1.05);
                            /* Phóng to nhẹ khi hover */
                            /* box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); */
                            /* Thêm bóng */
                            text-decoration: none;
                            /* Loại bỏ gạch chân */
                        }

                        /* Thay đổi màu chữ hoặc các thuộc tính con */
                        .product-link:hover h6,
                        .product-link:hover h5 {
                            color: #10aa2a;
                            /* Thay đổi màu chữ */
                        }
                    </style>
                </head>

                <body>

                    <!-- Spinner Start -->
                    <div id="spinner"
                        class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
                        <div class="spinner-grow text-primary" role="status"></div>
                    </div>
                    <!-- Spinner End -->


                    <jsp:include page="../layout/header.jsp" />

                    <!-- Modal Search Start -->
                    <!-- <div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog modal-fullscreen">
                        <div class="modal-content rounded-0">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Search by keyword</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body d-flex align-items-center">
                                <div class="input-group w-75 mx-auto d-flex">
                                    <input type="search" class="form-control p-3" placeholder="keywords"
                                        aria-describedby="search-icon-1">
                                    <span id="search-icon-1" class="input-group-text p-3"><i
                                            class="fa fa-search"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> -->
                    <!-- Modal Search End -->


                    <!-- Single Product Start -->
                    <div class="container-fluid py-5 mt-5">
                        <div class="container py-5">
                            <div class="row g-4 mb-5">
                                <div class="mb-3" style="margin-top: 5%;">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="/">Home</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Chi Tiết Sản Phẩm
                                            </li>
                                        </ol>
                                    </nav>
                                </div>
                                <div class="col-lg-8 col-xl-9">
                                    <div class="row g-4">
                                        <div class="col-lg-6">
                                            <div class="border rounded">
                                                <a href="#">
                                                    <img src="/admin/images/product/${product.image}"
                                                        class="img-fluid rounded" alt="Image">
                                                </a>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <h4 class="fw-bold mb-3">${product.name}</h4>
                                            <p class="mb-3">${product.factory}</p>
                                            <h5 class="fw-bold mb-3">

                                                <fmt:formatNumber type="number" value="${product.price}" /> đ
                                            </h5>
                                            <div class="d-flex mb-4">
                                                <i class="fa fa-star text-secondary"></i>
                                                <i class="fa fa-star text-secondary"></i>
                                                <i class="fa fa-star text-secondary"></i>
                                                <i class="fa fa-star text-secondary"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                            <p class="mb-4">${product.shortDesc}</p>
                                            <div class="input-group quantity mb-5" style="width: 100px;">
                                                <div class="input-group-btn">
                                                    <button class="btn btn-sm btn-minus rounded-circle bg-light border">
                                                        <i class="fa fa-minus"></i>
                                                    </button>
                                                </div>
                                                <input type="text"
                                                    class="form-control form-control-sm text-center border-0" value="1"
                                                    data-cart-detail-index="0">
                                                <div class="input-group-btn">
                                                    <button class="btn btn-sm btn-plus rounded-circle bg-light border">
                                                        <i class="fa fa-plus"></i>
                                                    </button>
                                                </div>
                                            </div>

                                            <!-- <form action="/add-product-from-view-detail" method="post"
                                                modelAttribute="product"> -->
                                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                            <input class="form-control d-none" type="text" value="${product.id}"
                                                name="id" />

                                            <input class="form-control d-none" type="text" name="quantity"
                                                id="cartDetails0.quantity" value="1" />
                                            <button data-product-id="${product.id}"
                                                class="btnAddToCartDetail btn border border-secondary rounded-pill px-4 py-2 mb-4 text-primary"><i
                                                    class="fa fa-shopping-bag me-2 text-primary"></i>
                                                Add to cart
                                            </button>
                                            <!-- </form> -->
                                        </div>
                                        <div class="col-lg-12">
                                            <nav>
                                                <div class="nav nav-tabs mb-3">
                                                    <button class="nav-link active border-white border-bottom-0"
                                                        type="button" role="tab" id="nav-about-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-about" aria-controls="nav-about"
                                                        aria-selected="true">Description</button>
                                                </div>
                                            </nav>
                                            <div class="tab-content mb-5">
                                                <div class="tab-pane active" id="nav-about" role="tabpanel"
                                                    aria-labelledby="nav-about-tab">
                                                    <p>${product.detailDesc}</p>


                                                    <!--table Chi tiết sản phẩm -->
                                                    <!-- <div class="px-2">
                                                    <div class="row g-4">
                                                        <div class="col-6">
                                                            <div
                                                                class="row bg-light align-items-center text-center justify-content-center py-2">
                                                                <div class="col-6">
                                                                    <p class="mb-0">Weight</p>
                                                                </div>
                                                                <div class="col-6">
                                                                    <p class="mb-0">1 kg</p>
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="row text-center align-items-center justify-content-center py-2">
                                                                <div class="col-6">
                                                                    <p class="mb-0">Country of Origin</p>
                                                                </div>
                                                                <div class="col-6">
                                                                    <p class="mb-0">Agro Farm</p>
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="row bg-light text-center align-items-center justify-content-center py-2">
                                                                <div class="col-6">
                                                                    <p class="mb-0">Quality</p>
                                                                </div>
                                                                <div class="col-6">
                                                                    <p class="mb-0">Organic</p>
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="row text-center align-items-center justify-content-center py-2">
                                                                <div class="col-6">
                                                                    <p class="mb-0">Сheck</p>
                                                                </div>
                                                                <div class="col-6">
                                                                    <p class="mb-0">Healthy</p>
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="row bg-light text-center align-items-center justify-content-center py-2">
                                                                <div class="col-6">
                                                                    <p class="mb-0">Min Weight</p>
                                                                </div>
                                                                <div class="col-6">
                                                                    <p class="mb-0">250 Kg</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div> -->
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-lg-4 col-xl-3">
                                    <div class="row g-4 fruite">
                                        <div class="col-lg-12">
                                            <div class="input-group w-100 mx-auto d-flex mb-4">
                                                <input type="search" class="form-control p-3" placeholder="keywords"
                                                    aria-describedby="search-icon-1">
                                                <span id="search-icon-1" class="input-group-text p-3"><i
                                                        class="fa fa-search"></i></span>
                                            </div>
                                            <div class="mb-4">
                                                <h4>Categories</h4>
                                                <ul class="list-unstyled fruite-categorie">
                                                    <li>
                                                        <div class="d-flex justify-content-between fruite-name">
                                                            <a href="#"><i class="fas fa-apple-alt me-2"></i>Apples</a>
                                                            <span>(3)</span>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="d-flex justify-content-between fruite-name">
                                                            <a href="#"><i class="fas fa-apple-alt me-2"></i>Oranges</a>
                                                            <span>(5)</span>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="d-flex justify-content-between fruite-name">
                                                            <a href="#"><i
                                                                    class="fas fa-apple-alt me-2"></i>Strawbery</a>
                                                            <span>(2)</span>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="d-flex justify-content-between fruite-name">
                                                            <a href="#"><i class="fas fa-apple-alt me-2"></i>Banana</a>
                                                            <span>(8)</span>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="d-flex justify-content-between fruite-name">
                                                            <a href="#"><i class="fas fa-apple-alt me-2"></i>Pumpkin</a>
                                                            <span>(5)</span>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>

                                        ${user.type_views_1}
                                        ${user.type_views_2}
                                        ${user.type_views_3}
                                        ${user.type_views_4}
                                        <div class="col-lg-12">
                                            <h4 class="mb-4">Gợi ý</h4>

                                            <div id="product-list" class="d-flex flex-column">
                                                <!-- Sản phẩm sẽ được thêm động vào đây -->
                                            </div>
                                        </div>

                                        <div class="col-lg-12">
                                            <h4 class="mb-4">Featured products</h4>
                                            <div class="d-flex align-items-center justify-content-start">
                                                <div class="rounded" style="width: 100px; height: 100px;">
                                                    <img src="/client/img/featur-1.jpg" class="img-fluid rounded"
                                                        alt="Image">
                                                </div>
                                                <div>
                                                    <h6 class="mb-2">Big Banana</h6>
                                                    <div class="d-flex mb-2">
                                                        <i class="fa fa-star text-secondary"></i>
                                                        <i class="fa fa-star text-secondary"></i>
                                                        <i class="fa fa-star text-secondary"></i>
                                                        <i class="fa fa-star text-secondary"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="d-flex mb-2">
                                                        <h5 class="fw-bold me-2">2.99 $</h5>
                                                        <h5 class="text-danger text-decoration-line-through">4.11 $</h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-start">
                                                <div class="rounded" style="width: 100px; height: 100px;">
                                                    <img src="/client/img/featur-2.jpg" class="img-fluid rounded"
                                                        alt="">
                                                </div>
                                                <div>
                                                    <h6 class="mb-2">Big Banana</h6>
                                                    <div class="d-flex mb-2">
                                                        <i class="fa fa-star text-secondary"></i>
                                                        <i class="fa fa-star text-secondary"></i>
                                                        <i class="fa fa-star text-secondary"></i>
                                                        <i class="fa fa-star text-secondary"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="d-flex mb-2">
                                                        <h5 class="fw-bold me-2">2.99 $</h5>
                                                        <h5 class="text-danger text-decoration-line-through">4.11 $</h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-start">
                                                <div class="rounded" style="width: 100px; height: 100px;">
                                                    <img src="/client/img/featur-3.jpg" class="img-fluid rounded"
                                                        alt="">
                                                </div>
                                                <div>
                                                    <h6 class="mb-2">Big Banana</h6>
                                                    <div class="d-flex mb-2">
                                                        <i class="fa fa-star text-secondary"></i>
                                                        <i class="fa fa-star text-secondary"></i>
                                                        <i class="fa fa-star text-secondary"></i>
                                                        <i class="fa fa-star text-secondary"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="d-flex mb-2">
                                                        <h5 class="fw-bold me-2">2.99 $</h5>
                                                        <h5 class="text-danger text-decoration-line-through">4.11 $</h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-start">
                                                <div class="rounded me-4" style="width: 100px; height: 100px;">
                                                    <img src="/client/img/vegetable-item-4.jpg"
                                                        class="img-fluid rounded" alt="">
                                                </div>
                                                <div>
                                                    <h6 class="mb-2">Big Banana</h6>
                                                    <div class="d-flex mb-2">
                                                        <i class="fa fa-star text-secondary"></i>
                                                        <i class="fa fa-star text-secondary"></i>
                                                        <i class="fa fa-star text-secondary"></i>
                                                        <i class="fa fa-star text-secondary"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="d-flex mb-2">
                                                        <h5 class="fw-bold me-2">2.99 $</h5>
                                                        <h5 class="text-danger text-decoration-line-through">4.11 $</h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-start">
                                                <div class="rounded me-4" style="width: 100px; height: 100px;">
                                                    <img src="/client/img/vegetable-item-5.jpg"
                                                        class="img-fluid rounded" alt="">
                                                </div>
                                                <div>
                                                    <h6 class="mb-2">Big Banana</h6>
                                                    <div class="d-flex mb-2">
                                                        <i class="fa fa-star text-secondary"></i>
                                                        <i class="fa fa-star text-secondary"></i>
                                                        <i class="fa fa-star text-secondary"></i>
                                                        <i class="fa fa-star text-secondary"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="d-flex mb-2">
                                                        <h5 class="fw-bold me-2">2.99 $</h5>
                                                        <h5 class="text-danger text-decoration-line-through">4.11 $</h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-start">
                                                <div class="rounded me-4" style="width: 100px; height: 100px;">
                                                    <img src="/client/img/vegetable-item-6.jpg"
                                                        class="img-fluid rounded" alt="">
                                                </div>
                                                <div>
                                                    <h6 class="mb-2">Big Banana</h6>
                                                    <div class="d-flex mb-2">
                                                        <i class="fa fa-star text-secondary"></i>
                                                        <i class="fa fa-star text-secondary"></i>
                                                        <i class="fa fa-star text-secondary"></i>
                                                        <i class="fa fa-star text-secondary"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <div class="d-flex mb-2">
                                                        <h5 class="fw-bold me-2">2.99 $</h5>
                                                        <h5 class="text-danger text-decoration-line-through">4.11 $</h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="d-flex justify-content-center my-4">
                                                <a href="#"
                                                    class="btn border border-secondary px-4 py-3 rounded-pill text-primary w-100">Vew
                                                    More</a>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="position-relative">
                                                <img src="/client/img/banner-fruits.jpg" class="img-fluid w-100 rounded"
                                                    alt="">
                                                <div class="position-absolute"
                                                    style="top: 50%; right: 10px; transform: translateY(-50%);">
                                                    <h3 class="text-secondary fw-bold">Fresh <br> Fruits <br> Banner
                                                    </h3>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- <h1 class="fw-bold mb-0">Related products</h1> -->
                            <!-- <div class="vesitable">
                                <div class="owl-carousel vegetable-carousel justify-content-center">
                                    <div class="border border-primary rounded position-relative vesitable-item">
                                        <div class="vesitable-img">
                                            <img src="/client/img/vegetable-item-6.jpg"
                                                class="img-fluid w-100 rounded-top" alt="">
                                        </div>
                                        <div class="text-white bg-primary px-3 py-1 rounded position-absolute"
                                            style="top: 10px; right: 10px;">Vegetable</div>
                                        <div class="p-4 pb-0 rounded-bottom">
                                            <h4>Parsely</h4>
                                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te
                                                incididunt</p>
                                            <div class="d-flex justify-content-between flex-lg-wrap">
                                                <p class="text-dark fs-5 fw-bold">$4.99 / kg</p>
                                                <a href="#"
                                                    class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i
                                                        class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                                                    cart</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="border border-primary rounded position-relative vesitable-item">
                                        <div class="vesitable-img">
                                            <img src="/client/img/vegetable-item-1.jpg"
                                                class="img-fluid w-100 rounded-top" alt="">
                                        </div>
                                        <div class="text-white bg-primary px-3 py-1 rounded position-absolute"
                                            style="top: 10px; right: 10px;">Vegetable</div>
                                        <div class="p-4 pb-0 rounded-bottom">
                                            <h4>Parsely</h4>
                                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te
                                                incididunt</p>
                                            <div class="d-flex justify-content-between flex-lg-wrap">
                                                <p class="text-dark fs-5 fw-bold">$4.99 / kg</p>
                                                <a href="#"
                                                    class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i
                                                        class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                                                    cart</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="border border-primary rounded position-relative vesitable-item">
                                        <div class="vesitable-img">
                                            <img src="/client/img/vegetable-item-3.png"
                                                class="img-fluid w-100 rounded-top bg-light" alt="">
                                        </div>
                                        <div class="text-white bg-primary px-3 py-1 rounded position-absolute"
                                            style="top: 10px; right: 10px;">Vegetable</div>
                                        <div class="p-4 pb-0 rounded-bottom">
                                            <h4>Banana</h4>
                                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te
                                                incididunt</p>
                                            <div class="d-flex justify-content-between flex-lg-wrap">
                                                <p class="text-dark fs-5 fw-bold">$7.99 / kg</p>
                                                <a href="#"
                                                    class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i
                                                        class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                                                    cart</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="border border-primary rounded position-relative vesitable-item">
                                        <div class="vesitable-img">
                                            <img src="/client/img/vegetable-item-4.jpg"
                                                class="img-fluid w-100 rounded-top" alt="">
                                        </div>
                                        <div class="text-white bg-primary px-3 py-1 rounded position-absolute"
                                            style="top: 10px; right: 10px;">Vegetable</div>
                                        <div class="p-4 pb-0 rounded-bottom">
                                            <h4>Bell Papper</h4>
                                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te
                                                incididunt</p>
                                            <div class="d-flex justify-content-between flex-lg-wrap">
                                                <p class="text-dark fs-5 fw-bold">$7.99 / kg</p>
                                                <a href="#"
                                                    class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i
                                                        class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                                                    cart</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="border border-primary rounded position-relative vesitable-item">
                                        <div class="vesitable-img">
                                            <img src="/client/img/vegetable-item-5.jpg"
                                                class="img-fluid w-100 rounded-top" alt="">
                                        </div>
                                        <div class="text-white bg-primary px-3 py-1 rounded position-absolute"
                                            style="top: 10px; right: 10px;">Vegetable</div>
                                        <div class="p-4 pb-0 rounded-bottom">
                                            <h4>Potatoes</h4>
                                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te
                                                incididunt</p>
                                            <div class="d-flex justify-content-between flex-lg-wrap">
                                                <p class="text-dark fs-5 fw-bold">$7.99 / kg</p>
                                                <a href="#"
                                                    class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i
                                                        class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                                                    cart</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="border border-primary rounded position-relative vesitable-item">
                                        <div class="vesitable-img">
                                            <img src="/client/img/vegetable-item-6.jpg"
                                                class="img-fluid w-100 rounded-top" alt="">
                                        </div>
                                        <div class="text-white bg-primary px-3 py-1 rounded position-absolute"
                                            style="top: 10px; right: 10px;">Vegetable</div>
                                        <div class="p-4 pb-0 rounded-bottom">
                                            <h4>Parsely</h4>
                                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te
                                                incididunt</p>
                                            <div class="d-flex justify-content-between flex-lg-wrap">
                                                <p class="text-dark fs-5 fw-bold">$7.99 / kg</p>
                                                <a href="#"
                                                    class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i
                                                        class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                                                    cart</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="border border-primary rounded position-relative vesitable-item">
                                        <div class="vesitable-img">
                                            <img src="/client/img/vegetable-item-5.jpg"
                                                class="img-fluid w-100 rounded-top" alt="">
                                        </div>
                                        <div class="text-white bg-primary px-3 py-1 rounded position-absolute"
                                            style="top: 10px; right: 10px;">Vegetable</div>
                                        <div class="p-4 pb-0 rounded-bottom">
                                            <h4>Potatoes</h4>
                                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te
                                                incididunt</p>
                                            <div class="d-flex justify-content-between flex-lg-wrap">
                                                <p class="text-dark fs-5 fw-bold">$7.99 / kg</p>
                                                <a href="#"
                                                    class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i
                                                        class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                                                    cart</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="border border-primary rounded position-relative vesitable-item">
                                        <div class="vesitable-img">
                                            <img src="/client/img/vegetable-item-6.jpg"
                                                class="img-fluid w-100 rounded-top" alt="">
                                        </div>
                                        <div class="text-white bg-primary px-3 py-1 rounded position-absolute"
                                            style="top: 10px; right: 10px;">Vegetable</div>
                                        <div class="p-4 pb-0 rounded-bottom">
                                            <h4>Parsely</h4>
                                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod te
                                                incididunt</p>
                                            <div class="d-flex justify-content-between flex-lg-wrap">
                                                <p class="text-dark fs-5 fw-bold">$7.99 / kg</p>
                                                <a href="#"
                                                    class="btn border border-secondary rounded-pill px-3 py-1 mb-4 text-primary"><i
                                                        class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                                                    cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> -->
                        </div>
                    </div>
                    <!-- Single Product End -->


                    <jsp:include page="../layout/footer.jsp" />


                    <!-- Back to Top -->
                    <a href="#" class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i
                            class="fa fa-arrow-up"></i></a>


                    <!-- JavaScript Libraries -->
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
                    <script src="/client/lib/easing/easing.min.js"></script>
                    <script src="/client/lib/waypoints/waypoints.min.js"></script>
                    <script src="/client/lib/lightbox/js/lightbox.min.js"></script>
                    <script src="/client/lib/owlcarousel/owl.carousel.min.js"></script>

                    <!-- Template Javascript -->
                    <script src="/client/js/main.js"></script>
                    <script
                        src="https://cdnjs.cloudflare.com/ajax/libs/jquery-toast-plugin/1.3.2/jquery.toast.min.js"></script>
                    <script>
                        const a = "${user.type_views_1}"
                        const b = "${user.type_views_2}"
                        const c = "${user.type_views_3}"
                        const d = "${user.type_views_4}"
                        // Tạo đối tượng chứa các giá trị bạn muốn gửi
                        const data = {
                            gaming_view: a,
                            mac_view: b,
                            office_view: c,
                            workstation_view: d
                        };

                        // Gửi dữ liệu tới server Flask
                        fetch('http://127.0.0.1:5000/recommend', {
                            method: 'POST', // Phương thức gửi là POST
                            headers: {
                                'Content-Type': 'application/json', // Đảm bảo server nhận dạng kiểu dữ liệu JSON
                            },
                            body: JSON.stringify(data) // Chuyển đổi dữ liệu thành chuỗi JSON
                        })
                            .then(response => response.json())  // Xử lý phản hồi từ server dưới dạng JSON
                            .then(data => {
                                console.log('Response from server:', data); // In kết quả từ server ra console
                                const result = data.result;

                                console.log(result)

                                // Lấy phần tử container
                                const productList = document.getElementById("product-list");

                                // Tạo đối tượng định dạng số
                                const formatter = new Intl.NumberFormat('vi-VN', {
                                    style: 'currency',
                                    currency: 'VND'
                                });

                                // Tạo các phần tử HTML động bằng DOM
                                result.forEach(element => {
                                    // Tạo thẻ <a> chứa sản phẩm
                                    const productLink = document.createElement("a");
                                    productLink.href = "/product/" + element.id; // Thay đổi URL phù hợp với hệ thống của bạn
                                    productLink.className = "text-decoration-none text-dark product-link"; // Thêm lớp product-link

                                    // Tạo thẻ chứa sản phẩm
                                    const productDiv = document.createElement("div");
                                    productDiv.className = "d-flex align-items-center justify-content-start mb-3";

                                    // Tạo thẻ chứa hình ảnh
                                    const imgDiv = document.createElement("div");
                                    imgDiv.className = "rounded";
                                    imgDiv.style.width = "100px";
                                    imgDiv.style.height = "100px";

                                    const img = document.createElement("img");
                                    img.src = "/admin/images/product/" + element.image; // Thêm đường dẫn gốc vào đây
                                    img.alt = element.name;
                                    img.className = "img-fluid rounded";

                                    // Gắn hình ảnh vào div
                                    imgDiv.appendChild(img);

                                    // Tạo thẻ chứa thông tin sản phẩm
                                    const infoDiv = document.createElement("div");
                                    infoDiv.style.marginLeft = "20px"; // Thêm margin-left cho toàn bộ thông tin

                                    // Tạo tên sản phẩm
                                    const productName = document.createElement("h6");
                                    productName.className = "mb-2";
                                    productName.style.marginBottom = "10px";
                                    productName.textContent = element.name;

                                    // Tạo div chứa giá sản phẩm
                                    const priceDiv = document.createElement("div");
                                    priceDiv.className = "d-flex mb-2";

                                    const price = document.createElement("h5");
                                    price.className = "fw-bold me-2";
                                    price.style.marginBottom = "5px";
                                    price.style.fontSize = "14px"; // Thu nhỏ kích thước chữ
                                    price.textContent = formatter.format(element.price); // Định dạng số

                                    // Gắn giá vào div
                                    priceDiv.appendChild(price);

                                    // Gắn tên và giá vào infoDiv
                                    infoDiv.appendChild(productName);
                                    infoDiv.appendChild(priceDiv);

                                    // Gắn imgDiv và infoDiv vào productDiv
                                    productDiv.appendChild(imgDiv);
                                    productDiv.appendChild(infoDiv);

                                    // Gắn productDiv vào productLink
                                    productLink.appendChild(productDiv);

                                    // Gắn productLink vào productList
                                    productList.appendChild(productLink);
                                });
                            })
                            .catch((error) => {
                                console.error('Error:', error); // Xử lý lỗi nếu có
                            });
                    </script>
                </body>

                </html>