<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <div id="formFilter" class="sidebar col-xl-3 col-lg-4 col-md-4 col-sm-12">
        <div id="widget-area" class="widget-area shop-sidebar">

            <!-- <div id="kobolg_product_search-2" class="widget kobolg widget_product_search">
            <form class="kobolg-product-search">
                <input id="kobolg-product-search-field-0" class="search-field"
                    placeholder="Search products…" value="" name="s" type="search">
                <button type="submit" value="Search">Search</button>
            </form>
        </div> -->

            <div id="kobolg_layered_nav-6" class="widget kobolg widget_layered_nav kobolg-widget-layered-nav">
                <button type="submit" class="kobolg-Button button btn-block" id="btnFilter">Lọc sản phẩm</button>
            </div>

            <div id="kobolg_layered_nav-6" class="widget kobolg widget_layered_nav kobolg-widget-layered-nav">
                <h2 class="widgettitle">Hãng sản xuất<span class="arrow"></span></h2>
                <ul class="kobolg-widget-layered-nav-list" id="factoryFilter">
                    <li class="kobolg-widget-layered-nav-list__item kobolg-layered-nav-term">
                        <input class="form-check-input d-none" type="checkbox" id="factory-1" value="APPLE">
                        <a rel="nofollow" href="#">Apple</a>
                        <!-- <span class="count">(1)</span> -->
                    </li>
                    <li class="kobolg-widget-layered-nav-list__item kobolg-layered-nav-term ">
                        <input class="form-check-input d-none" type="checkbox" id="factory-2" value="ASUS">
                        <a rel="nofollow" href="#">Asus</a>
                    </li>
                    <li class="kobolg-widget-layered-nav-list__item kobolg-layered-nav-term ">
                        <input class="form-check-input d-none" type="checkbox" id="factory-3" value="MSI">
                        <a rel="nofollow" href="#">MSI</a>
                    </li>
                    <li class="kobolg-widget-layered-nav-list__item kobolg-layered-nav-term ">
                        <input class="form-check-input d-none" type="checkbox" id="factory-4" value="LENOVO">
                        <a rel="nofollow" href="#">Lenovo</a>
                    </li>
                    <li class="kobolg-widget-layered-nav-list__item kobolg-layered-nav-term ">
                        <input class="form-check-input d-none" type="checkbox" id="factory-5" value="DELL">
                        <a rel="nofollow" href="#">Dell</a>
                    </li>
                    <li class="kobolg-widget-layered-nav-list__item kobolg-layered-nav-term ">
                        <input class="form-check-input d-none" type="checkbox" id="factory-7" value="ACER">
                        <a rel="nofollow" href="#">Acer</a>
                    </li>
                </ul>
            </div>

            <div id="kobolg_layered_nav-6" class="widget kobolg widget_layered_nav kobolg-widget-layered-nav">
                <h2 class="widgettitle">Mục đích sử dụng<span class="arrow"></span></h2>
                <ul class="kobolg-widget-layered-nav-list" id="targetFilter">
                    <li class="kobolg-widget-layered-nav-list__item kobolg-layered-nav-term ">
                        <input class="form-check-input d-none" type="checkbox" id="target-1" value="GAMING">
                        <a rel="nofollow" href="#">Gaming</a>
                        <!-- <span class="count">(1)</span> -->
                    </li>
                    <li class="kobolg-widget-layered-nav-list__item kobolg-layered-nav-term ">
                        <input class="form-check-input d-none" type="checkbox" id="target-2" value="SINHVIEN-VANPHONG">
                        <a rel="nofollow" href="#">Sinh viên - văn phòng</a>
                    </li>
                    <li class="kobolg-widget-layered-nav-list__item kobolg-layered-nav-term ">
                        <input class="form-check-input d-none" type="checkbox" id="target-3" value="MONG-NHE">
                        <a rel="nofollow" href="#">Mỏng nhẹ</a>
                    </li>
                    <li class="kobolg-widget-layered-nav-list__item kobolg-layered-nav-term ">
                        <input class="form-check-input d-none" type="checkbox" id="target-4" value="DOANH-NHAN">
                        <a rel="nofollow" href="#">Doanh nhân</a>
                    </li>
                </ul>
            </div>

            <div id="kobolg_layered_nav-6" class="widget kobolg widget_layered_nav kobolg-widget-layered-nav">
                <h2 class="widgettitle">Mức giá<span class="arrow"></span></h2>
                <ul class="kobolg-widget-layered-nav-list" id="priceFilter">
                    <li class="kobolg-widget-layered-nav-list__item kobolg-layered-nav-term ">
                        <input class="form-check-input d-none" type="checkbox" id="price-2" value="duoi-10-trieu">
                        <a rel="nofollow" href="#">Dưới 10 triệu</a>
                        <!-- <span class="count">(1)</span> -->
                    </li>
                    <li class="kobolg-widget-layered-nav-list__item kobolg-layered-nav-term ">
                        <input class="form-check-input d-none" type="checkbox" id="price-3" value="10-15-trieu">
                        <a rel="nofollow" href="#">Từ 10 - 15 triệu</a>
                    </li>
                    <li class="kobolg-widget-layered-nav-list__item kobolg-layered-nav-term ">
                        <input class="form-check-input d-none" type="checkbox" id="price-4" value="15-20-trieu">
                        <a rel="nofollow" href="#">Từ 15 - 20 triệu</a>
                    </li>
                    <li class="kobolg-widget-layered-nav-list__item kobolg-layered-nav-term ">
                        <input class="form-check-input d-none" type="checkbox" id="price-5" value="tren-20-trieu">
                        <a rel="nofollow" href="#">Trên 20 triệu</a>
                    </li>
                </ul>
            </div>

            <div id="kobolg_layered_nav-6" class="widget kobolg widget_layered_nav kobolg-widget-layered-nav">
                <h2 class="widgettitle">Sắp xếp<span class="arrow"></span></h2>
                <ul class="kobolg-widget-layered-nav-list">
                    <li class="kobolg-widget-layered-nav-list__item kobolg-layered-nav-term ">
                        <input class="form-check-input d-none" type="radio" id="sort-1" value="gia-tang-dan"
                            name="radio-sort">
                        <a rel="nofollow" href="#">Giá tăng dần</a>
                    </li>
                    <li class="kobolg-widget-layered-nav-list__item kobolg-layered-nav-term ">
                        <input class="form-check-input d-none" type="radio" id="sort-2" value="gia-giam-dan"
                            name="radio-sort">
                        <a rel="nofollow" href="#">Giá giảm dần</a>
                    </li>
                    <li class="kobolg-widget-layered-nav-list__item kobolg-layered-nav-term ">
                        <input class="form-check-input d-none" type="radio" id="sort-3" checked value="gia-nothing"
                            name="radio-sort">
                        <a rel="nofollow" href="#">Không sắp xếp</a>
                    </li>
                </ul>
            </div>

            <!-- <div id="kobolg_product_categories-3"
            class="widget kobolg widget_product_categories">
            <h2 class="widgettitle">Product categories<span class="arrow"></span></h2>
            <ul class="product-categories">
                <li class="cat-item cat-item-22"><a href="#">Camera</a>
                    <span class="count">(11)</span>
                </li>
            </ul>
        </div> -->

            <!-- <div id="kobolg_price_filter-2" class="widget kobolg widget_price_filter">
            <h2 class="widgettitle">Filter By Price<span class="arrow"></span></h2>
            <form method="get" action="#">
                <div class="price_slider_wrapper">
                    <div data-label-reasult="Range:" data-min="0" data-max="1000"
                        data-unit="$" class="price_slider" data-value-min="100"
                        data-value-max="800">
                    </div>
                    <div class="price_slider_amount">
                        <button type="submit" class="button">Filter</button>
                        <div class="price_label">
                            Price: <span class="from">$100</span> — <span
                                class="to">$800</span>
                        </div>
                    </div>
                </div>
            </form>
        </div> -->

            <!-- <div id="kobolg_kobolg_layered_nav-4"
            class="widget kobolg_widget_layered_nav widget_layered_nav">
            <h2 class="widgettitle">Filter By Color<span class="arrow"></span></h2>
            <div class="color-group">
                <a class="term-color " href="#">
                    <i style="color: #000000"></i>
                    <span class="term-name">Black</span>
                    <span class="count">(4)</span> </a>
                <a class="term-color " href="#">
                    <i style="color: #3155e2"></i>
                    <span class="term-name">Blue</span>
                    <span class="count">(3)</span> </a>
                <a class="term-color " href="#">
                    <i style="color: #49aa51"></i>
                    <span class="term-name">Green</span>
                    <span class="count">(1)</span> </a>
                <a class="term-color " href="#">
                    <i style="color: #ff63cb"></i>
                    <span class="term-name">Pink</span>
                    <span class="count">(3)</span> </a>
                <a class="term-color " href="#">
                    <i style="color: #a825ea"></i>
                    <span class="term-name">Purple</span>
                    <span class="count">(1)</span> </a>
                <a class="term-color " href="#">
                    <i style="color: #db2b00"></i>
                    <span class="term-name">Red</span>
                    <span class="count">(5)</span> </a>
                <a class="term-color " href="#">
                    <i style="color: #FFFFFF"></i>
                    <span class="term-name">White</span>
                    <span class="count">(2)</span> </a>
                <a class="term-color " href="#s">
                    <i style="color: #e8e120"></i>
                    <span class="term-name">Yellow</span>
                    <span class="count">(2)</span> </a>
            </div>
        </div> -->

        </div><!-- .widget-area -->
    </div>