<%-- 
    Document   : san-pham
    Created on : Sep 19, 2024, 1:56:02 AM
    Author     : PC
--%>

<<<<<<< HEAD
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE jsp>
<jsp>
    <head lang="vi" xml:lang="vi">
    <meta charset="utf-8" />
    <meta http-equiv="content-type" content="text/jsp; charset=UTF-8" />
    <meta name="content-language" content="vi" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="shortcut icon" href="https://drive.gianhangvn.com/file/favicon-1855872j31185.ico" />
    <meta name="robots" content="index, follow" />
    <meta name="robots" content="noodp, noydir" />
    <meta name="googlebot" content="index, follow" />
    <meta name="msnbot" content="index, follow" />
    <meta name="revisit-after" content="1 days" />
    <meta name="copyright" content="Copyright 2023" />
    <title>Sản phẩm</title>
    <meta name="description" content="Sản phẩm" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="Sản phẩm" />
    <meta property="og:description" content="Sản phẩm" />
    <meta property="og:url" content="san-pham.jsp" />
    <meta property="og:image" content="../drive.gianhangvn.com/image/seo-google-1855887j31185.jpg" />
    <meta property="og:image:type" content="image/jpg" />
    <meta property="og:image:width" content="1067" />
    <meta property="og:image:height" content="560" />
    <meta property="og:image:alt" content="Sản phẩm" />
    <link rel="canonical" href="san-pham.jsp" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="../cloud.gianhangvn.com/css/common.min2455.css?v15">
    <link rel="stylesheet" href="../cloud.gianhangvn.com/templates/0012/skin02/css/style.css">

</head>
<body>
    <section class="top group">
        <div class="container">
            
        <div class="topbar">
        <div class="topbar-right">
                <div class="cart">
                    <a class="title-cart" href="gio-hang.jsp">
                        <span class="fa fa-shopping-cart"></span>
                        <span class="cart-large"><span data-lang="master_shopping">Giỏ hàng</span> : <span class="total-product" data-field="number">0</span> <span data-lang="master_shopping_product">Sản phẩm</span></span>
                        <span class="cart-small">(<span class="total-product" data-field="number">0</span>)</span>
                    </a>
                </div>
            <div class="search-box">
                <span class="btn-search"><span class="fa fa-search"></span></span>
                <input type="text" class="text-search" placeholder="Tìm kiếm..." data-field="keyword" data-required="1" data-min="2" value="" data-lang="master_search" />
            </div>
        </div>
    </div></div>
    </section><section class="header group">
        <div class="container">
            
        <div class="banner-inner">
        <div class="logo">
            <a title="" href="index.jsp"><img class="img-logo lazyload" alt="" data-src="../drive.gianhangvn.com/image/banner-top-2660267j31185.jpg" /></a>
        </div>
        <div class="banner">
            <a title="" href="index.jsp"><img class="img-banner lazyload" alt="" data-src="../drive.gianhangvn.com/image/banner-top-2660267j31185.jpg" /></a>
        </div>
    </div></div>
    </section><section class="menu group">
        <div class="container">
            
        <div class="navigation">
        <div class="cd-nav-content">
            <a href="javascript:void(0)" class="cd-nav-toggle"><span class="fa fa-bars"></span></a>
            <div class="hotline">
                <span class="icon"><em class="fa fa-phone">&nbsp;</em></span>
                <p><a href="tel:0966991930" title="Gọi ngay cho chúng tôi">0966 991 930</a></p>
            </div>
        </div>
    </div></div>
    </section><section class="slideshow group">
        <div class="container">
            
        </div>
    </section><section class="pathpage group">
        <div class="container">
            
                <ol class="breadcrumb" itemscope itemtype="https://schema.org/BreadcrumbList">
            <li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                    <a title="Trang chủ" itemtype="https://schema.org/Thing" itemprop="item" href="index.jsp"><span itemprop="name"><span data-lang='bc_home'>Trang chủ</span></span></a>
                    <meta itemprop="position" content="1">
                </li><li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                    <a title="Sản phẩm" itemtype="https://schema.org/Thing" itemprop="item" href="san-pham.jsp"><span itemprop="name">Sản phẩm</span></a>
                    <meta itemprop="position" content="2">
                </li>
        </ol>
</div>
    </section><section class="main group">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-left"><div class="box-left">
        <p class="title-box-left collapse-title">Danh mục sản phẩm</p>
        <div class="box-left-content collapse-content">
            <div class="vertical-menu phone-vertical-menu">
                <c:forEach var="categoryCar" items="${listCategory_Car}">
                <ul class="primary-menu">
                            <li>
                                    <a href="honda-city-481809s.jsp" title="Honda City">${categoryCar.getCategory_name()}</a>
                                </li>
                        </ul></c:forEach>
            </div>
        </div>
    </div><div class="box-left">
        <p class="title-box-left collapse-title">Sản phẩm bán chạy</p>
        <div class="box-left-content collapse-content">
            <div class="block group">
                    <div class="block-img block-img-border">
                        <a href="honda-accord-1-5l-turbo-1287636.jsp" title="Honda Accord 1.5L Turbo"><img class="img-default lazyload" alt="Honda Accord 1.5L Turbo" data-src="../drive.gianhangvn.com/image/honda-accord-1-5l-turbo-1855972j31185x16.jpg" /></a>
                    </div>
                    <div class="block-caption">
                        <h5 class="block-title"><a href="honda-accord-1-5l-turbo-1287636.jsp" title="Honda Accord 1.5L Turbo">Honda Accord 1.5L Turbo</a></h5>
                        <div class="block-price">
                                <span class="price">1,319,000,000 đ</span>
                        </div>
                    </div>
                </div>
        </div>
    </div><div class="box-left">
        <p class="title-box-left collapse-title">Thống kê</p>
        <div class="box-left-content collapse-content">
            <ul class="list-group statistic">
                <li id="statistic-online">
                    <span class="statistic-text" data-lang="md_statistic_online">Đang online</span>
                    <span class="statistic-number" data-field="onlinetraffics">0</span>
                </li>
                <li id="statistic-today">
                    <span class="statistic-text today" data-lang="md_statistic_today">Hôm nay</span>
                    <span class="statistic-number" data-field="todaytraffics">0</span>
                </li>
                <li id="statistic-yesterday">
                    <span class="statistic-text yesterday" data-lang="md_statistic_yesterday">Hôm qua</span>
                    <span class="statistic-number" data-field="yesterdaytraffics">0</span>
                </li>
                <li id="statistic-week">
                    <span class="statistic-text week" data-lang="md_statistic_week">Trong tuần</span>
                    <span class="statistic-number" data-field="weektraffics">0</span>
                </li>
                <li id="statistic-month">
                    <span class="statistic-text month" data-lang="md_statistic_month">Trong tháng</span>
                    <span class="statistic-number" data-field="monthtraffics">0</span>
                </li>
                <li id="statistic-sum">
                    <span class="statistic-text total" data-lang="md_statistic_sum">Tổng cộng</span>
                    <span class="statistic-number" data-field="totaltraffics">0</span>
                </li>
            </ul>
        </div>
    </div></div>
                <div class="col-lg-9 col-right">
                    
                <h1 class="page-heading border-bottom">Sản phẩm</h1>
    <div id="gridproductlist">
        <div class="grid-sort group">
            <div class="grid-left">
                <label data-lang="catpro_sortby">Sắp xếp theo</label>
                <select class="form-control" data-field="orderby" data-default="" data-value="">
                    <option value="1" selected data-lang="catpro_sortby_default">Mặc định</option>
                    <option value="2" data-lang="catpro_sortby_lowest">Giá thấp nhất</option>
                    <option value="3" data-lang="catpro_sortby_hightestprice">Giá cao nhất</option>
                    <option value="4" data-lang="catpro_sortby_name_az">Tên sản phẩm: A đến Z</option>
                    <option value="5" data-lang="catpro_sortby_name_za">Tên sản phẩm: Z đến A</option>
                </select>
            </div>
            <div class="grid-left display-page">
                <label data-lang="catpro_display">Hiển thị</label>
                <select class="form-control" data-field="displaynumber" data-default="" data-value="">
                    <option value="24">24</option>
                    <option value="36" selected>36</option>
                    <option value="48">48</option>
                    <option value="68">68</option>
                </select>
                <span data-lang="catpro_onepage">mỗi trang</span>
            </div>
            <div class="grid-right">
                <label data-lang="catpro_view">Xem</label>
                <a class="grid-view selected" rel="nofollow" href="javascript:void(0);" title="Hiển thị dạng lưới" data-value="thumb"><i class="fa fa-th-large"></i></a>
                <a class="grid-view" rel="nofollow" href="javascript:void(0);" title="Hiển thị dạng danh sách" data-value="list"><i class="fa fa-th-list"></i></a>
            </div>
        </div>
        <div class="grid-content group box-product-list">
                <div class="row">
                    <div class="col-6 col-md-4 col-product">
                            <div class="product">
                                <div class="product-image">
                                    <a href="honda-city-g-1287609.jsp" title="Honda City G 2024 Facelift Sensing"><img class="img-responsive lazyload" alt="Honda City G 2024 Facelift Sensing" data-src="../drive.gianhangvn.com/image/honda-city-g-2448915j31185x16.jpg" /></a>
                                </div>
                                <div class="caption">
                                    <h3 class="name"><a href="honda-city-g-1287609.jsp" title="Honda City G 2024 Facelift Sensing">Honda City G 2024 Facelift Sensing</a></h3>
                                    <div class="description"><ul>
	<li>Hỗ trợ vay trả góp đến 80%</li>
	<li>Khách hàng sẽ được tặng phần quà giá trị khi mua xe</li>
	<li>Thủ tục mua xe nhanh chóng, hỗ trợ đăng ký, đăng kiểm xe</li>
	<li>Tặng kèm bộ phụ kiện chính hãng</li>
	<li>Hỗ trợ đăng ký lái thử xe (miễn phí)</li>
	<li>Liên hệ ngay để có giá giảm tốt nhất</li>
</ul>
</div>
                                    <div class="content-price">
                                            <span class="price">499,000,000 VND</span>
                                        <span class="view"><i class="fa fa-eye"></i><span>1,491 lượt</span></span>
                                    </div>
                                        <a class="btn btn-addcart" href="javascript:void(0);" data-id="1287609" data-url="https://hondaotolongbienhn.com/gio-hang.jsp" title="Mua ngay" data-lang="btn_addcart">THÊM VÀO GIỎ HÀNG</a>
                                </div>
                            </div>
                        </div><div class="col-6 col-md-4 col-product">
                            <div class="product">
                                <div class="product-image">
                                    <a href="honda-city-l-1287610.jsp" title="Honda City L 2024 Facelift Sensing"><img class="img-responsive lazyload" alt="Honda City L 2024 Facelift Sensing" data-src="../drive.gianhangvn.com/image/honda-city-l-2448921j31185x16.jpg" /></a>
                                </div>
                                <div class="caption">
                                    <h3 class="name"><a href="honda-city-l-1287610.jsp" title="Honda City L 2024 Facelift Sensing">Honda City L 2024 Facelift Sensing</a></h3>
                                    <div class="description"><ul>
	<li>Hỗ trợ vay trả góp đến 80%</li>
	<li>Khách hàng sẽ được tặng phần quà giá trị khi mua xe</li>
	<li>Thủ tục mua xe nhanh chóng, hỗ trợ đăng ký, đăng kiểm xe</li>
	<li>Tặng kèm bộ phụ kiện chính hãng</li>
	<li>Hỗ trợ đăng ký lái thử xe (miễn phí)</li>
	<li>Liên hệ ngay để có giá giảm tốt nhất</li>
</ul>
</div>
                                    <div class="content-price">
                                            <span class="price">539,000,000 VND</span>
                                        <span class="view"><i class="fa fa-eye"></i><span>1,085 lượt</span></span>
                                    </div>
                                        <a class="btn btn-addcart" href="javascript:void(0);" data-id="1287610" data-url="https://hondaotolongbienhn.com/gio-hang.jsp" title="Mua ngay" data-lang="btn_addcart">THÊM VÀO GIỎ HÀNG</a>
                                </div>
                            </div>
                        </div><div class="col-6 col-md-4 col-product">
                            <div class="product">
                                <div class="product-image">
                                    <a href="honda-city-rs-1287611.jsp" title="Honda City RS 2024 Facelift Sensing"><img class="img-responsive lazyload" alt="Honda City RS 2024 Facelift Sensing" data-src="../drive.gianhangvn.com/image/honda-city-rs-2448927j31185x16.jpg" /></a>
                                </div>
                                <div class="caption">
                                    <h3 class="name"><a href="honda-city-rs-1287611.jsp" title="Honda City RS 2024 Facelift Sensing">Honda City RS 2024 Facelift Sensing</a></h3>
                                    <div class="description"><ul>
	<li>Hỗ trợ vay trả góp đến 80%</li>
	<li>Khách hàng sẽ được tặng phần quà giá trị khi mua xe</li>
	<li>Thủ tục mua xe nhanh chóng, hỗ trợ đăng ký, đăng kiểm xe</li>
	<li>Tặng kèm bộ phụ kiện chính hãng</li>
	<li>Hỗ trợ đăng ký lái thử xe (miễn phí)</li>
	<li>Liên hệ ngay để có giá giảm tốt nhất</li>
</ul>
</div>
                                    <div class="content-price">
                                            <span class="price">569,000,000 VND</span>
                                        <span class="view"><i class="fa fa-eye"></i><span>2,748 lượt</span></span>
                                    </div>
                                        <a class="btn btn-addcart" href="javascript:void(0);" data-id="1287611" data-url="https://hondaotolongbienhn.com/gio-hang.jsp" title="Mua ngay" data-lang="btn_addcart">THÊM VÀO GIỎ HÀNG</a>
                                </div>
                            </div>
                        </div><div class="col-6 col-md-4 col-product">
                            <div class="product">
                                <div class="product-image">
                                    <a href="honda-civic-1-5l-rs-1287616.jsp" title="Honda Civic E"><img class="img-responsive lazyload" alt="Honda Civic E" data-src="../drive.gianhangvn.com/image/honda-civic-1-5l-rs-2080584j31185x16.jpg" /></a>
                                </div>
                                <div class="caption">
                                    <h3 class="name"><a href="honda-civic-1-5l-rs-1287616.jsp" title="Honda Civic E">Honda Civic E</a></h3>
                                    <div class="description"><p>Kích thước Dài x Rộng x Cao (mm)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;4.674 x 1.800 x 1.415<br />
Chiều dài cơ sở (mm)&nbsp;&nbsp; &nbsp;2.735<br />
Động cơ&nbsp;&nbsp; &nbsp;1.5L DOHC VTEC TURBO<br />
Công suất (mã lực)&nbsp;&nbsp; &nbsp;176 tại 6.000 vòng/phút<br />
Mô-men xoắn&nbsp;&nbsp; &nbsp;140 tại 1.700 &ndash; 4.500 vòng/phút</p>
</div>
                                    <div class="content-price">
                                            <span class="price">730,000,000 VND</span>
                                        <span class="view"><i class="fa fa-eye"></i><span>1,321 lượt</span></span>
                                    </div>
                                        <a class="btn btn-addcart" href="javascript:void(0);" data-id="1287616" data-url="https://hondaotolongbienhn.com/gio-hang.jsp" title="Mua ngay" data-lang="btn_addcart">THÊM VÀO GIỎ HÀNG</a>
                                </div>
                            </div>
                        </div><div class="col-6 col-md-4 col-product">
                            <div class="product">
                                <div class="product-image">
                                    <a href="honda-civic-1-8g-1352398.jsp" title="Honda Civic G"><img class="img-responsive lazyload" alt="Honda Civic G" data-src="../drive.gianhangvn.com/image/honda-civic-1-8g-2080584j31185x16.jpg" /></a>
                                </div>
                                <div class="caption">
                                    <h3 class="name"><a href="honda-civic-1-8g-1352398.jsp" title="Honda Civic G">Honda Civic G</a></h3>
                                    <div class="description"><p>Kích thước Dài x Rộng x Cao (mm)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;4.674 x 1.800 x 1.415<br />
Chiều dài cơ sở (mm)&nbsp;&nbsp; &nbsp;2.735<br />
Động cơ&nbsp;&nbsp; &nbsp;1.5L DOHC VTEC TURBO<br />
Công suất (mã lực)&nbsp;&nbsp; &nbsp;176 tại 6.000 vòng/phút<br />
Mô-men xoắn&nbsp;&nbsp; &nbsp;140 tại 1.700 &ndash; 4.500 vòng/phút</p>
</div>
                                    <div class="content-price">
                                            <span class="price">770,000,000 VND</span>
                                        <span class="view"><i class="fa fa-eye"></i><span>2,152 lượt</span></span>
                                    </div>
                                        <a class="btn btn-addcart" href="javascript:void(0);" data-id="1352398" data-url="https://hondaotolongbienhn.com/gio-hang.jsp" title="Mua ngay" data-lang="btn_addcart">THÊM VÀO GIỎ HÀNG</a>
                                </div>
                            </div>
                        </div><div class="col-6 col-md-4 col-product">
                            <div class="product">
                                <div class="product-image">
                                    <a href="honda-civic-1-5rs-1352399.jsp" title="Honda Civic RS"><img class="img-responsive lazyload" alt="Honda Civic RS" data-src="../drive.gianhangvn.com/image/honda-civic-1-5rs-2080618j31185x16.jpg" /></a>
                                </div>
                                <div class="caption">
                                    <h3 class="name"><a href="honda-civic-1-5rs-1352399.jsp" title="Honda Civic RS">Honda Civic RS</a></h3>
                                    <div class="description"><p>Kích thước Dài x Rộng x Cao (mm)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;4.674 x 1.800 x 1.415<br />
Chiều dài cơ sở (mm)&nbsp;&nbsp; &nbsp;2.735<br />
Động cơ&nbsp;&nbsp; &nbsp;1.5L DOHC VTEC TURBO<br />
Công suất (mã lực)&nbsp;&nbsp; &nbsp;176 tại 6.000 vòng/phút<br />
Mô-men xoắn&nbsp;&nbsp; &nbsp;140 tại 1.700 &ndash; 4.500 vòng/phút</p>
</div>
                                    <div class="content-price">
                                            <span class="price">870,000,000 VND</span>
                                        <span class="view"><i class="fa fa-eye"></i><span>2,876 lượt</span></span>
                                    </div>
                                        <a class="btn btn-addcart" href="javascript:void(0);" data-id="1352399" data-url="https://hondaotolongbienhn.com/gio-hang.jsp" title="Mua ngay" data-lang="btn_addcart">THÊM VÀO GIỎ HÀNG</a>
                                </div>
                            </div>
                        </div><div class="col-6 col-md-4 col-product">
                            <div class="product">
                                <div class="product-image">
                                    <a href="honda-hrv-g-1410105.jsp" title="Honda HR-V G"><img class="img-responsive lazyload" alt="Honda HR-V G" data-src="../drive.gianhangvn.com/image/honda-hrv-g-2357433j31185x16.jpg" /></a>
                                </div>
                                <div class="caption">
                                    <h3 class="name"><a href="honda-hrv-g-1410105.jsp" title="Honda HR-V G">Honda HR-V G</a></h3>
                                    <div class="description"><ul>
	<li>Hỗ Trợ Hồ Sơ Đăng Kí, Đăng Kiểm.&nbsp;</li>
	<li>Hỗ Trợ&nbsp;Trả Góp Thủ Tục Đơn Giản.</li>
	<li>Tư Vấn Kỹ Thuật và Bảo Hiểm 24/7.</li>
	<li>Giải Đáp Mọi Thắc Mắc.</li>
	<li>Liên Hệ Báo Giá Ngay</li>
</ul>
</div>
                                    <div class="content-price">
                                            <span class="price">699,000,000 VND</span>
                                        <span class="view"><i class="fa fa-eye"></i><span>9,591 lượt</span></span>
                                    </div>
                                        <a class="btn btn-addcart" href="javascript:void(0);" data-id="1410105" data-url="https://hondaotolongbienhn.com/gio-hang.jsp" title="Mua ngay" data-lang="btn_addcart">THÊM VÀO GIỎ HÀNG</a>
                                </div>
                            </div>
                        </div><div class="col-6 col-md-4 col-product">
                            <div class="product">
                                <div class="product-image">
                                    <a href="honda-hr-v-l-trang-ngoc-do-1287623.jsp" title="Honda HR-V L"><img class="img-responsive lazyload" alt="Honda HR-V L" data-src="../drive.gianhangvn.com/image/honda-hr-v-l-trang-ngoc-do-2166739j31185x16.jpg" /></a>
                                </div>
                                <div class="caption">
                                    <h3 class="name"><a href="honda-hr-v-l-trang-ngoc-do-1287623.jsp" title="Honda HR-V L">Honda HR-V L</a></h3>
                                    <div class="description"><p>Kích thước DxRxC&nbsp;&nbsp; &nbsp;4330 x 1790 x 1590 mm<br />
Chiều dài cơ sở&nbsp;&nbsp; &nbsp;2610 mm<br />
Động cơ&nbsp;&nbsp; &nbsp;Xăng 1.5L Atkinson 4 xy-lanh, DOHC i-VTEC kết hợp cùng mô tơ điện<br />
Công suất cực đại&nbsp;&nbsp; &nbsp;131 mã lực<br />
Mô-men xoắn cực đại&nbsp;&nbsp; &nbsp;251 Nm<br />
Hộp số&nbsp;&nbsp; &nbsp;Tự động E-CVT</p>
</div>
                                    <div class="content-price">
                                            <span class="price">826,000,000 VND</span>
                                        <span class="view"><i class="fa fa-eye"></i><span>5,203 lượt</span></span>
                                    </div>
                                        <a class="btn btn-addcart" href="javascript:void(0);" data-id="1287623" data-url="https://hondaotolongbienhn.com/gio-hang.jsp" title="Mua ngay" data-lang="btn_addcart">THÊM VÀO GIỎ HÀNG</a>
                                </div>
                            </div>
                        </div><div class="col-6 col-md-4 col-product">
                            <div class="product">
                                <div class="product-image">
                                    <a href="honda-hr-v-1-8l-1352400.jsp" title="Honda HR-V RS"><img class="img-responsive lazyload" alt="Honda HR-V RS" data-src="../drive.gianhangvn.com/image/honda-hr-v-1-8l-2080638j31185x16.jpg" /></a>
                                </div>
                                <div class="caption">
                                    <h3 class="name"><a href="honda-hr-v-1-8l-1352400.jsp" title="Honda HR-V RS">Honda HR-V RS</a></h3>
                                    <div class="description"><p>Kích thước DxRxC&nbsp;&nbsp; &nbsp;4330 x 1790 x 1590 mm<br />
Chiều dài cơ sở&nbsp;&nbsp; &nbsp;2610 mm<br />
Động cơ&nbsp;&nbsp; &nbsp;Xăng 1.5L Atkinson 4 xy-lanh, DOHC i-VTEC kết hợp cùng mô tơ điện<br />
Công suất cực đại&nbsp;&nbsp; &nbsp;131 mã lực<br />
Mô-men xoắn cực đại&nbsp;&nbsp; &nbsp;251 Nm<br />
Hộp số&nbsp;&nbsp; &nbsp;Tự động E-CVT</p>
</div>
                                    <div class="content-price">
                                            <span class="price">871,000,000 VND</span>
                                        <span class="view"><i class="fa fa-eye"></i><span>6,822 lượt</span></span>
                                    </div>
                                        <a class="btn btn-addcart" href="javascript:void(0);" data-id="1352400" data-url="https://hondaotolongbienhn.com/gio-hang.jsp" title="Mua ngay" data-lang="btn_addcart">THÊM VÀO GIỎ HÀNG</a>
                                </div>
                            </div>
                        </div><div class="col-6 col-md-4 col-product">
                            <div class="product">
                                <div class="product-image">
                                    <a href="honda-cr-v-1-5l-g-2024-1438409.jsp" title="Honda CR-V 1.5L G 2024"><img class="img-responsive lazyload" alt="Honda CR-V 1.5L G 2024" data-src="../drive.gianhangvn.com/image/honda-cr-v-1-5l-g-2024-2524413j31185x16.jpg" /></a>
                                </div>
                                <div class="caption">
                                    <h3 class="name"><a href="honda-cr-v-1-5l-g-2024-1438409.jsp" title="Honda CR-V 1.5L G 2024">Honda CR-V 1.5L G 2024</a></h3>
                                    <div class="description"><p>- Hỗ trợ vay trả góp đến 80%</p>

<p>- Khách hàng sẽ được tặng phần quà giá trị khi mua xe</p>

<p>- Thủ tục mua xe nhanh chóng, hỗ trợ đăng ký, đăng kiểm xe</p>

<p>- Tặng kèm bộ phụ kiện chính hãng</p>

<p>- Hỗ trợ đăng ký lái thử xe (miễn phí)</p>

<p>- Liên hệ ngay để có giá giảm tốt nhất</p>
</div>
                                    <div class="content-price">
                                            <span class="price">1,029,000,000 VND</span>
                                        <span class="view"><i class="fa fa-eye"></i><span>828 lượt</span></span>
                                    </div>
                                        <a class="btn btn-addcart" href="javascript:void(0);" data-id="1438409" data-url="https://hondaotolongbienhn.com/gio-hang.jsp" title="Mua ngay" data-lang="btn_addcart">THÊM VÀO GIỎ HÀNG</a>
                                </div>
                            </div>
                        </div><div class="col-6 col-md-4 col-product">
                            <div class="product">
                                <div class="product-image">
                                    <a href="honda-cr-v-1-5l-l-2024-1438408.jsp" title="Honda CR-V 1.5L L 2024"><img class="img-responsive lazyload" alt="Honda CR-V 1.5L L 2024" data-src="../drive.gianhangvn.com/image/honda-cr-v-1-5l-l-2024-2524406j31185x16.jpg" /></a>
                                </div>
                                <div class="caption">
                                    <h3 class="name"><a href="honda-cr-v-1-5l-l-2024-1438408.jsp" title="Honda CR-V 1.5L L 2024">Honda CR-V 1.5L L 2024</a></h3>
                                    <div class="description"><p>- Hỗ trợ vay trả góp đến 80%</p>

<p>- Khách hàng sẽ được tặng phần quà giá trị khi mua xe</p>

<p>- Thủ tục mua xe nhanh chóng, hỗ trợ đăng ký, đăng kiểm xe</p>

<p>- Tặng kèm bộ phụ kiện chính hãng</p>

<p>- Hỗ trợ đăng ký lái thử xe (miễn phí)</p>

<p>- Liên hệ ngay để có giá giảm tốt nhất</p>
</div>
                                    <div class="content-price">
                                            <span class="price">1,099,000,000 VND</span>
                                        <span class="view"><i class="fa fa-eye"></i><span>1,550 lượt</span></span>
                                    </div>
                                        <a class="btn btn-addcart" href="javascript:void(0);" data-id="1438408" data-url="https://hondaotolongbienhn.com/gio-hang.jsp" title="Mua ngay" data-lang="btn_addcart">THÊM VÀO GIỎ HÀNG</a>
                                </div>
                            </div>
                        </div><div class="col-6 col-md-4 col-product">
                            <div class="product">
                                <div class="product-image">
                                    <a href="honda-cr-v-1-5l-l-awd-2024-1438407.jsp" title="Honda CR-V 1.5L L AWD 2024"><img class="img-responsive lazyload" alt="Honda CR-V 1.5L L AWD 2024" data-src="../drive.gianhangvn.com/image/honda-cr-v-1-5l-l-awd-2024-2524399j31185x16.jpg" /></a>
                                </div>
                                <div class="caption">
                                    <h3 class="name"><a href="honda-cr-v-1-5l-l-awd-2024-1438407.jsp" title="Honda CR-V 1.5L L AWD 2024">Honda CR-V 1.5L L AWD 2024</a></h3>
                                    <div class="description"><p>- Hỗ trợ vay trả góp đến 80%</p>

<p>- Khách hàng sẽ được tặng phần quà giá trị khi mua xe</p>

<p>- Thủ tục mua xe nhanh chóng, hỗ trợ đăng ký, đăng kiểm xe</p>

<p>- Tặng kèm bộ phụ kiện chính hãng</p>

<p>- Hỗ trợ đăng ký lái thử xe (miễn phí)</p>

<p>- Liên hệ ngay để có giá giảm tốt nhất</p>
</div>
                                    <div class="content-price">
                                            <span class="price">1,250,000,000 VND</span>
                                        <span class="view"><i class="fa fa-eye"></i><span>1,326 lượt</span></span>
                                    </div>
                                        <a class="btn btn-addcart" href="javascript:void(0);" data-id="1438407" data-url="https://hondaotolongbienhn.com/gio-hang.jsp" title="Mua ngay" data-lang="btn_addcart">THÊM VÀO GIỎ HÀNG</a>
                                </div>
                            </div>
                        </div><div class="col-6 col-md-4 col-product">
                            <div class="product">
                                <div class="product-image">
                                    <a href="honda-cr-v-2-0l-e-hev-rs-2024-1438406.jsp" title="Honda CR-V 2.0L e:HEV RS 2024"><img class="img-responsive lazyload" alt="Honda CR-V 2.0L e:HEV RS 2024" data-src="../drive.gianhangvn.com/image/honda-cr-v-2-0l-e-hev-rs-2024-2524391j31185x16.jpg" /></a>
                                </div>
                                <div class="caption">
                                    <h3 class="name"><a href="honda-cr-v-2-0l-e-hev-rs-2024-1438406.jsp" title="Honda CR-V 2.0L e:HEV RS 2024">Honda CR-V 2.0L e:HEV RS 2024</a></h3>
                                    <div class="description"><p>- Hỗ trợ vay trả góp đến 80%</p>

<p>- Khách hàng sẽ được tặng phần quà giá trị khi mua xe</p>

<p>- Thủ tục mua xe nhanh chóng, hỗ trợ đăng ký, đăng kiểm xe</p>

<p>- Tặng kèm bộ phụ kiện chính hãng</p>

<p>- Hỗ trợ đăng ký lái thử xe (miễn phí)</p>

<p>- Liên hệ ngay để có giá giảm tốt nhất</p>
</div>
                                    <div class="content-price">
                                            <span class="price">1,259,000,000 VND</span>
                                        <span class="view"><i class="fa fa-eye"></i><span>2,275 lượt</span></span>
                                    </div>
                                        <a class="btn btn-addcart" href="javascript:void(0);" data-id="1438406" data-url="https://hondaotolongbienhn.com/gio-hang.jsp" title="Mua ngay" data-lang="btn_addcart">THÊM VÀO GIỎ HÀNG</a>
                                </div>
                            </div>
                        </div><div class="col-6 col-md-4 col-product">
                            <div class="product">
                                <div class="product-image">
                                    <a href="honda-br-v-g-2023-1425465.jsp" title="Honda BR-V G"><img class="img-responsive lazyload" alt="Honda BR-V G" data-src="../drive.gianhangvn.com/image/honda-br-v-g-2023-2445274j31185x16.jpg" /></a>
                                </div>
                                <div class="caption">
                                    <h3 class="name"><a href="honda-br-v-g-2023-1425465.jsp" title="Honda BR-V G">Honda BR-V G</a></h3>
                                    <div class="description"><ul>
	<li>Honda BR-V G 2023 Giảm 100% thuế trước bạ</li>
	<li>Giảm giá tiền mặt vào giá bán</li>
	<li>Tặng bộ phụ kiện chính hãng cao cấp giá trị cao</li>
	<li>Hỗ trợ đăng kí, đăng kiểm, giao xe tận nhà</li>
	<li>Nhận ngay gói khuyến mãi &quot;ĐẶC BIỆT&quot; khi đăng ký lái thử hoặc nhận báo giá&nbsp;</li>
	<li>Kho xe lớn nhất Việt Nam sẵn xe, đủ màu giao ngay</li>
	<li>Hỗ trợ trả góp 85%, Xe có sẵn - Giao ngay</li>
</ul>
</div>
                                    <div class="content-price">
                                            <span class="price">661,000,000 VND</span>
                                        <span class="view"><i class="fa fa-eye"></i><span>3,329 lượt</span></span>
                                    </div>
                                        <a class="btn btn-addcart" href="javascript:void(0);" data-id="1425465" data-url="https://hondaotolongbienhn.com/gio-hang.jsp" title="Mua ngay" data-lang="btn_addcart">THÊM VÀO GIỎ HÀNG</a>
                                </div>
                            </div>
                        </div><div class="col-6 col-md-4 col-product">
                            <div class="product">
                                <div class="product-image">
                                    <a href="honda-br-v-l-2023-1425464.jsp" title="Honda BR-V L"><img class="img-responsive lazyload" alt="Honda BR-V L" data-src="../drive.gianhangvn.com/image/honda-br-v-l-2023-2445266j31185x16.jpg" /></a>
                                </div>
                                <div class="caption">
                                    <h3 class="name"><a href="honda-br-v-l-2023-1425464.jsp" title="Honda BR-V L">Honda BR-V L</a></h3>
                                    <div class="description"><ul>
	<li>Giảm giá tiền mặt vào giá bán</li>
	<li>Tặng bộ phụ kiện chính hãng cao cấp giá trị cao</li>
	<li>Hỗ trợ đăng kí, đăng kiểm, giao xe tận nhà</li>
	<li>Nhận ngay gói khuyến mãi &quot;ĐẶC BIỆT&quot; khi đăng ký lái thử hoặc nhận báo giá&nbsp;</li>
	<li>Kho xe lớn nhất Việt Nam sẵn xe, đủ màu giao ngay</li>
	<li>Hỗ trợ trả góp 85%, Xe có sẵn - Giao ngay</li>
</ul>
</div>
                                    <div class="content-price">
                                            <span class="price">705,000,000 VND</span>
                                        <span class="view"><i class="fa fa-eye"></i><span>3,142 lượt</span></span>
                                    </div>
                                        <a class="btn btn-addcart" href="javascript:void(0);" data-id="1425464" data-url="https://hondaotolongbienhn.com/gio-hang.jsp" title="Mua ngay" data-lang="btn_addcart">THÊM VÀO GIỎ HÀNG</a>
                                </div>
                            </div>
                        </div><div class="col-6 col-md-4 col-product">
                            <div class="product">
                                <div class="product-image">
                                    <a href="honda-accord-1-5l-turbo-1287636.jsp" title="Honda Accord 1.5L Turbo"><img class="img-responsive lazyload" alt="Honda Accord 1.5L Turbo" data-src="../drive.gianhangvn.com/image/honda-accord-1-5l-turbo-1855972j31185x16.jpg" /></a>
                                </div>
                                <div class="caption">
                                    <h3 class="name"><a href="honda-accord-1-5l-turbo-1287636.jsp" title="Honda Accord 1.5L Turbo">Honda Accord 1.5L Turbo</a></h3>
                                    <div class="description">Động cơ: 1.5L Turbo
Hộp số: Số tự động vô cấp
An toàn: 6 túi khí
Số chỗ ngồi: 5 Chỗ</div>
                                    <div class="content-price">
                                            <span class="price">1,319,000,000 VND</span>
                                        <span class="view"><i class="fa fa-eye"></i><span>1,348 lượt</span></span>
                                    </div>
                                        <a class="btn btn-addcart" href="javascript:void(0);" data-id="1287636" data-url="https://hondaotolongbienhn.com/gio-hang.jsp" title="Mua ngay" data-lang="btn_addcart">THÊM VÀO GIỎ HÀNG</a>
                                </div>
                            </div>
                        </div>
                </div>
        </div>
    </div></div>
            </div>
        </div>
    </section><section>
        
    <div class="footer group">
        <div class="container group">
            <div class="footer-content group">
                <div class="session group">
<div class="col col_6 footer-block ">
<div class="contact">
<h4 class="title-footer-block">Honda Ô tô G3</h4>

<ul>
	<li><span class="icon"><em class="fa fa-phone">&nbsp; </em> </span>

	<p>Hotline(Zalo): <a href="tel:0926278500">0926278500</a></p>
	</li>
	<li><span class="icon"><em class="fa fa-envelope">&nbsp; </em> </span>
	<p>Email: <a href="mailto:hieunthe171211@gmail.com">hieunthe171211@gmail.com</a></p>
	</li>
	<li><span class="icon"><em class="fa fa-home">&nbsp; </em> </span>
	<p>Địa chỉ: &nbsp;Gara Oto G3 , Thôn 3 , Thạch Hòa , Thạch Thất , Hà Nội</p>
	</li>
	<li><span class="icon"><em class="fa fa-at">&nbsp; </em> </span>
	<p>Website: <a href="index.jsp">https://hondaotog3.com</a></p>
	</li>
</ul>
</div>
</div>

<div class="col col_6 footer-block">
<h4 class="title-footer-block collapse-title">bản đồ</h4>

<div class="google-map"><iframe allowfullscreen="" height="250" loading="lazy" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.943942542734!2d105.90214521398168!3d21.034928885995026!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abc4ff1eab73%3A0xf98f380b5efd9ccd!2zSG9uZGEgw5QgdMO0IExvbmcgQmnDqm4!5e0!3m2!1svi!2s!4v1626252246292!5m2!1svi!2s" style="border:0;" width="100%"></iframe></div>
</div>
</div>
            </div>
        </div>
    </div>
    <div class="copyright group">
        <div class="container group">
            <div class="copyright-content group">
                <div class="col col_9">
                    <p class="copy-right">Copyright© 2023</p>
                </div>
                <div class="col col_3">
                    <p class="designed">Designed By <a href="https://gianhangvn.com/" title="Web Gian Hàng">GianHangVN</a></p>
                </div>
            </div>
        </div>
    </div></section><section class="cd-nav">
        
    <ul class="cd-primary-nav" id="cd-primary-nav">
                <li class="">
                                <a href="index.jsp" title="Trang chủ">Trang chủ</a>
                    </li><li class="has-children">
                                <a href="san-pham.jsp" title="Sản phẩm">Sản phẩm</a>
            <ul class="cd-secondary-nav is-hidden">
                <li class="go-back"><a href="javascript:void(0);">Sản phẩm</a></li>
                <li class="see-all"><a href="san-pham.jsp">Tất cả danh mục Sản phẩm</a></li>
                 <c:forEach var="categoryCar" items="${listCategory_Car}">
                <li class="">
                            <a href="honda-city-481809s.jsp" title="Honda City"><center><img style="max-width:100%;" class="lazyload" data-src="../drive.gianhangvn.com/image/honda-city-2166737j31185.jpg" /></center><h2 class="sub-title-menu center">${categoryCar.getCategory_name()}</h2></a>
                    </li></c:forEach>
            </ul>
                    </li><li class="">
                                <a href="bang-gia-xe-481805n.jsp" title="Bảng giá xe">Bảng giá xe</a>
                    </li><li class="">
                                <a href="mua-xe-tra-gop-481803n.jsp" title="Mua xe trả góp">Mua xe trả góp</a>
                    </li><li class="">
                                <a href="tin-tuc-481806t.jsp" title="Tin tức">Tin tức</a>
                    </li><li class="">
                                <a href="lien-he.jsp" title="Liên hệ">Liên hệ</a>
                    </li>
            </ul></section>
    
    
    
    
    
    
    
    <p id="back-top"><a href="javascript:void(0);" title="Scroll To Top"><i class="fa fa-angle-up"></i>Top</a></p>
        <a class="btn-call-now" href="tel:0966991930" title="Gọi ngay cho chúng tôi"><em class="fa fa-phone">&nbsp;</em></a>
        <a class="btn-shopping-cart" href="gio-hang.jsp"><em class="fa fa-shopping-cart">&nbsp;</em><span class="btn-shopping-cart-number">(<span class="total-product" data-field="number">0</span>)</span></a>
    <div class="cd-overlay"></div>
    <script src="../cloud.gianhangvn.com/templates/0012/js/jquery.min.js"></script>
    <script src="../cloud.gianhangvn.com/js/common.min2455.js?v15"></script>
    <script src="../cloud.gianhangvn.com/js/cart.min2455.js?v15"></script>
    <script src="../cloud.gianhangvn.com/templates/0012/js/home.min6654.js?v1"></script>
    <script src="../cloud.gianhangvn.com/templates/0012/lang/vi6654.js?v1"></script>
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/jsp5shiv/3.7.2/jsp5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script id="pluginjs" src="plugin9be8.js?638324630743158913" async defer></script>
    <script type="text/javascript">
        window.token = 'PV7XzhVWstI8scmbU3TNLU-siHiez0KJTQx5XbJpjudx2sGCXG9OffC3_WQcrZ1pFLYTi-8HdYJFscBswb5LVw';
        window.tokenview = '';
        window.language = 'vi';
        window.webUrl = 'index.jsp';
        window.pageKey = 'productlist';
        window.fbAsyncInit = function () {
            FB.init({
                appId: '',
                cookie: true,
                xfbml: true,
                version: 'v3.2'
            });
        };
        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) { return; }
            js = d.createElement(s); js.id = id;
            js.src = "../connect.facebook.net/vi_VN/sdk.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>
    <style>
#danhmuc .box-header{
    text-align:center;
}
#danhmuc .name {
    line-height: 24px;
    color: #c00;
    font-size: 24px;
    font-weight: 700;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}
#danhmuc .title-price {
    font-weight: 700;
    margin-bottom:10px;
}
#danhmuc .title-price .price{
    font-size: 18px;
    color:#c00;
}
.btn-outline-secondary {
    color: #6c757d;
    background-color: transparent;
    background-image: none;
    border-color: #6c757d;
}
.center-content {
    position: relative;
    padding: 10px;
}
.logo {
    text-align: center;
    padding: 0;
}
.box-container {
    border: none;
}
.detail-content .detail-content-title {
    color: #b62831;
    font-size: 120%;
    padding: 0 10px;
    border-left: 5px solid #b62831;
    width: 100%;
    box-sizing: border-box;
    text-transform: uppercase;
    font-weight: 700;
}
.headerbar .headerbar-left {
    float: left;
    width: 100%;
}
.headerbar .headerbar-left img {
    max-height: none;
    width: 100%;
}
.headerbar .headerbar-right {
    display: none;
}
.fast-access {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: stretch !important;
    -webkit-align-items: stretch !important;
    -ms-flex-align: stretch !important;
    align-items: stretch !important;
    background-color: #121212;
    color: #fff;
}
.fast-access:hover,
.fast-access:focus {
    opacity: 0.9;
    color: #fff;
}
.fast-access .fast-access-icon {
    display: -webkit-box !important;
    display: -webkit-flex !important;
    display: -ms-flexbox !important;
    display: flex !important;
    background-color: #b70100;
    padding: 10px;
}
.fast-access .fast-access-icon .fa {
    position: relative;
    width: 60px;
    height: 60px;
    border: 2px solid #fff;
    border-radius: 50%;
    font-size: 30px;
}
.fast-access .fast-access-icon .fa:before {
    position: absolute;
}
.fast-access .fast-access-icon .fa-usd {
    font-size: 36px;
}
.fast-access .fast-access-icon .fa-usd:before {
    top: 10px;
    left: 18px;
}
.fast-access .fast-access-icon .fa-calculator:before {
    top: 12px;
    left: 13px;
}
.fast-access .fast-access-icon .fa-car:before {
    top: 12px;
    left: 11px;
}
@media (min-width: 576px) {
    .fast-access {
        -webkit-box-align: start;
        -webkit-align-items: flex-start;
        -ms-flex-align: start;
        align-items: flex-start;
    }
    .fast-access .fast-access-icon {
        margin-right: 10px;
    }
    .fast-access .fast-access-title {
        -webkit-box-flex: 1;
        -webkit-flex: 1 1 0%;
        -ms-flex: 1 1 0%;
        flex: 1 1 0%;
        -webkit-align-self: center !important;
        -ms-flex-item-align: center !important;
        -ms-grid-row-align: center !important;
        align-self: center !important;
        font-size: 25px;
    }
}
@media (max-width: 576px) {
    .fast-access {
        -webkit-box-orient: vertical !important;
        -webkit-box-direction: normal !important;
        -webkit-flex-direction: column !important;
        -ms-flex-direction: column !important;
        flex-direction: column !important;
    }
    .fast-access .fast-access-icon {
        -webkit-box-pack: center !important;
        -webkit-justify-content: center !important;
        -ms-flex-pack: center !important;
        justify-content: center !important;
    }
    .fast-access .fast-access-title {
        -webkit-box-flex: 1;
        -webkit-flex: 1 1 0%;
        -ms-flex: 1 1 0%;
        flex: 1 1 0%;
        font-size: 18px;
        line-height: 1.2;
        text-align: center;
        padding: 6px;
    }
}
.btn-custom,
.btn-default {
    width: 100%;
    margin-top: 5px;
}
.btn-shopping-cart {
    display: none;
}
.btn-call-now {
    display: block;
    position: fixed;
    left: 10px;
    right:auto;
    bottom: 6px;
    height: auto;
    width: auto;
    border-top: none;
    background: transparent;
    text-decoration: none;
    -webkit-box-shadow: none;
    -moz-box-shadow: none;
    box-shadow: none;
    z-index: 99999;
}
.phone-circle {
    position: relative;
    display: inline-block;
    width: 44px;
    height: 44px;
    background-color: #ff3425;
    border-radius: 100%;
}
.phone-circle .fa {
    position: absolute;
    left: 10px;
    top: 7px;
    background:transparent;
    color: #fff;
    font-size: 30px;
    -webkit-animation: ring-anim 1s infinite ease-in-out;
    animation: ring-anim 1s infinite ease-in-out;
}
.phone-circle .ping {
    display: inline-block;
    width: 44px;
    height: 44px;
    opacity: 1;
    border: 1px solid #f33;
    background-color: rgba(238, 46, 36, .2);
    border-radius: 100%;
    -webkit-animation: sonar-anim 1.25s linear infinite;
    animation: sonar-anim 1.25s linear infinite;
}
.add-widget {
    position: fixed;
    z-index: 999999
}
.add-widget.widget-zalo {
    left: 10px;
    bottom:70px;
}
.add-widget.widget-driver {
    left: 10px;
    bottom:130px;
}
.add-widget .widget-circle {
    position: relative;
    display: inline-block;
    width: 44px;
    height: 44px;
    background-color: #c4172c;
    -webkit-border-radius: 50%;
    border-radius: 50%
}
.add-widget .widget-circle .fa-icon {
    position: absolute;
    left: 7px;
    top: 7px;
    width: 30px;
    height: 30px;
    background-size: 30px;
    background-repeat: no-repeat
}
.add-widget.widget-zalo .widget-circle {
    background: rgba(61, 157, 215, 1);
    background: -moz-linear-gradient(top, rgba(61, 157, 215, 1) 0, rgba(32, 124, 229, 1) 100%);
    background: -webkit-gradient(left top, left bottom, color-stop(0, rgba(61, 157, 215, 1)), color-stop(100%, rgba(32, 124, 229, 1)));
    background: -webkit-linear-gradient(top, rgba(61, 157, 215, 1) 0, rgba(32, 124, 229, 1) 100%);
    background: -o-linear-gradient(top, rgba(61, 157, 215, 1) 0, rgba(32, 124, 229, 1) 100%);
    background: linear-gradient(to bottom, rgba(61, 157, 215, 1) 0, rgba(32, 124, 229, 1) 100%)
}
.add-widget.widget-zalo .widget-circle .fa-icon {
    background-image: url(../cdn.gianhangvn.com/image/icon-zalo-on0jkb4.jpg)
}
.add-widget.widget-contact .widget-circle {
    background: rgba(244, 147, 147, 1);
    background: -moz-linear-gradient(top, rgba(244, 147, 147, 1) 0, rgba(234, 39, 39, 1) 100%);
    background: -webkit-gradient(left top, left bottom, color-stop(0, rgba(244, 147, 147, 1)), color-stop(100%, rgba(234, 39, 39, 1)));
    background: -webkit-linear-gradient(top, rgba(244, 147, 147, 1) 0, rgba(234, 39, 39, 1) 100%);
    background: -o-linear-gradient(top, rgba(244, 147, 147, 1) 0, rgba(234, 39, 39, 1) 100%);
    background: linear-gradient(to bottom, rgba(244, 147, 147, 1) 0, rgba(234, 39, 39, 1) 100%)
}
.add-widget.widget-contact .widget-circle .fa-icon {
    background-image: url(../cdn.gianhangvn.com/image/icon-contact-o89dkb1.jpg)
}
.add-widget.widget-driver .widget-circle {
    background: rgba(245, 183, 74, 1);
    background: -moz-linear-gradient(top, rgba(245, 183, 74, 1) 0, rgba(193, 32, 50, 1) 100%);
    background: -webkit-gradient(left top, left bottom, color-stop(0, rgba(245, 183, 74, 1)), color-stop(100%, rgba(193, 32, 50, 1)));
    background: -webkit-linear-gradient(top, rgba(245, 183, 74, 1) 0, rgba(193, 32, 50, 1) 100%);
    background: -o-linear-gradient(top, rgba(245, 183, 74, 1) 0, rgba(193, 32, 50, 1) 100%);
    background: linear-gradient(to bottom, rgba(245, 183, 74, 1) 0, rgba(193, 32, 50, 1) 100%)
}
.add-widget.widget-driver .widget-circle .fa-icon {
    background-image: url(../cdn.gianhangvn.com/image/icon-driver-bvkrkb2.jpg)
}
span.phone-text {
    display:none;
    position: relative;
    color: #fff;
    background-color: #fa2837;
    padding: 10px;
    border-radius: 20px;
    bottom: 15px;
}
@media (min-width: 768px) {
    span.phone-text {
       display: inline-block;
    }
    .btn-call-now {
        left:20px;
        bottom: 10px;
    }
    .add-widget.widget-zalo {
        left: 20px;
        bottom: 130px;
    }
    .add-widget.widget-driver {
        left: 20px;
        bottom: 80px;
    }
}
@-webkit-keyframes sonar-anim {
    0% {
        opacity: 1;
        -webkit-transform: scale(1);
        transform: scale(1)
    }
    100% {
        -webkit-transform: scale(3);
        transform: scale(3);
        opacity: 0
    }
}
@keyframes sonar-anim {
    0% {
        opacity: 1;
        -webkit-transform: scale(1);
        transform: scale(1)
    }
    100% {
        -webkit-transform: scale(3);
        transform: scale(3);
        opacity: 0
    }
}
@-webkit-keyframes ring-anim {
    0% {
        -webkit-transform: rotate(0) scale(1) skew(1deg);
        transform: rotate(0) scale(1) skew(1deg)
    }
    10% {
        -webkit-transform: rotate(-25deg) scale(1) skew(1deg);
        transform: rotate(-25deg) scale(1) skew(1deg)
    }
    20% {
        -webkit-transform: rotate(25deg) scale(1) skew(1deg);
        transform: rotate(25deg) scale(1) skew(1deg)
    }
    30% {
        -webkit-transform: rotate(-25deg) scale(1) skew(1deg);
        transform: rotate(-25deg) scale(1) skew(1deg)
    }
    40% {
        -webkit-transform: rotate(25deg) scale(1) skew(1deg);
        transform: rotate(25deg) scale(1) skew(1deg)
    }
    50% {
        -webkit-transform: rotate(0) scale(1) skew(1deg);
        transform: rotate(0) scale(1) skew(1deg)
    }
    100% {
        -webkit-transform: rotate(0) scale(1) skew(1deg);
        transform: rotate(0) scale(1) skew(1deg)
    }
}
@keyframes ring-anim {
    0% {
        -webkit-transform: rotate(0) scale(1) skew(1deg);
        transform: rotate(0) scale(1) skew(1deg)
    }
    10% {
        -webkit-transform: rotate(-25deg) scale(1) skew(1deg);
        transform: rotate(-25deg) scale(1) skew(1deg)
    }
    20% {
        -webkit-transform: rotate(25deg) scale(1) skew(1deg);
        transform: rotate(25deg) scale(1) skew(1deg)
    }
    30% {
        -webkit-transform: rotate(-25deg) scale(1) skew(1deg);
        transform: rotate(-25deg) scale(1) skew(1deg)
    }
    40% {
        -webkit-transform: rotate(25deg) scale(1) skew(1deg);
        transform: rotate(25deg) scale(1) skew(1deg)
    }
    50% {
        -webkit-transform: rotate(0) scale(1) skew(1deg);
        transform: rotate(0) scale(1) skew(1deg)
    }
    100% {
        -webkit-transform: rotate(0) scale(1) skew(1deg);
        transform: rotate(0) scale(1) skew(1deg)
    }
}
#popupBaoGiaLink {
    display: none;
}
.why-group .col_4,
.why-group .col_8 {
    padding: 10px;
}
.btn-primary {
    background-color: #b00!important;
    border-color: #b00!important;
    color: #fff!important;
}
.btn-secondary {
    background-color: #4d4d4d!important;
    border-color: #4d4d4d!important;
    color: #fff!important;
}
.row-widget {
    display: flex;
    flex-wrap: wrap;
}
.col-widget {
    width: 50%;
    padding: 15px 10px;
}
.col-widget i {
    font-size: 215%;
}
.btn-group-product {
    margin-bottom: 15px;
}
#carousel-banner img {
    width: 100%;
}
.product .btn-viewmore {
    display:block;
    line-height: 20px;
    padding: 5px 47px 5px 12px;
    margin-bottom:10px;
    -webkit-border-radius: 0;
    border-radius: 0;
    font-weight: 500;
    z-index: 1;
    border: none;
    color: #fff;
    background-color: #e8ce0f;
    -webkit-transition: all .5s;
    -o-transition: all .5s;
    transition: all .5s;
}
#popupemail,#popupaddress,
.rating .rating-box .star,
.rating-value{
    display:none;
}
.product-detail-info .product-desc {
    color: #f3581c;
    font-weight: 600;
    white-space: pre-line;
    padding: 10px 0;
    border-top: 1px solid #ddd;
    border-bottom: 1px solid #ddd;
}
.box .box-header .box-title {
    text-align: center;
}
.header .container,
.logo{
    padding:0!important;
}
.top{
    display:none;
}
.product-row.detail-content{
    padding:20px 10px 10px 10px!important;
    margin: 10px auto;
    border: 2px dotted #32580f;
    border-radius: 8px;
}
</style>
<a class="add-widget widget-driver" href="javascript:openModelBaoGia()" title="Đăng ký lái thử"><span class="widget-circle"><i class="fa-icon">&nbsp;</i></span></a>
<a class="add-widget widget-zalo" href="https://zalo.me/0926278500" title="Chát trên Zalo" target="_blank"><span class="widget-circle"><i class="fa-icon">&nbsp;</i></span></a>
<script type="text/javascript">
function openModelBaoGia(){
    $("#popupBaoGiaLink").trigger('click');
}
$(document).ready(function () {
$(".btn-call-now").jsp("<span class='phone-circle'><i class='fa fa-phone'></i><span class='ping'></span></span><span class='phone-text'>Hotline:0966 991 930</span>");
    if(window.pageKey=='productdetail') {
        $('#form-product .product-row:nth-child(2)').remove();
        $('#form-product .product-row:nth-child(2)').remove();
        $('#form-product .btn-default.addcart').remove();
        $('.primary-product .product-hotline').remove();
        $('<div class="row row-form"><div class="col-sm-6"><a class="btn btn-primary" style="width:100%;margin-bottom:6px;" href="javascript:openModelBaoGia()" title="Nhận báo giá">NHẬN ƯU ĐÃI</a></div><div class="col-sm-6"><a class="btn btn-secondary" style="width:100%;margin-bottom:6px;" href="tel:0966991930" title="Nhận báo giá">Hotline: 0966 991 930</a></div></div>').replaceAll('.btn-default.buynow');
    }
    $('<a class="btn btn-default" href="javascript:openModelBaoGia();" title="Nhận ưu đãi ngay">NHẬN ƯU ĐÃI</a>').replaceAll('.product .btn-addcart');
});
</script>
<script src="https://uhchat.net/code.php?f=5b4f6b"></script></body>
</jsp>
=======
    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

            <!DOCTYPE jsp>
            <jsp>

                <head lang="vi" xml:lang="vi">
                    <meta charset="utf-8" />
                    <meta http-equiv="content-type" content="text/jsp; charset=UTF-8" />
                    <meta name="content-language" content="vi" />
                    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                    <link rel="shortcut icon" href="https://drive.gianhangvn.com/file/favicon-1855872j31185.ico" />
                    <meta name="robots" content="index, follow" />
                    <meta name="robots" content="noodp, noydir" />
                    <meta name="googlebot" content="index, follow" />
                    <meta name="msnbot" content="index, follow" />
                    <meta name="revisit-after" content="1 days" />
                    <meta name="copyright" content="Copyright 2023" />
                    <title>Sản phẩm</title>
                    <meta name="description" content="Sản phẩm" />
                    <meta property="og:type" content="website" />
                    <meta property="og:title" content="Sản phẩm" />
                    <meta property="og:description" content="Sản phẩm" />
                    <meta property="og:url" content="san-pham.jsp" />
                    <meta property="og:image" content="../drive.gianhangvn.com/image/seo-google-1855887j31185.jpg" />
                    <meta property="og:image:type" content="image/jpg" />
                    <meta property="og:image:width" content="1067" />
                    <meta property="og:image:height" content="560" />
                    <meta property="og:image:alt" content="Sản phẩm" />
                    <link rel="canonical" href="san-pham.jsp" />
                    <meta name="viewport" content="width=device-width, initial-scale=1" />
                    <link rel="stylesheet" href="../cloud.gianhangvn.com/css/common.min2455.css?v15">
                    <link rel="stylesheet" href="../cloud.gianhangvn.com/templates/0012/skin02/css/style.css">
                    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
                </head>

                <body>
                    <section class="top group">
                        <div class="container">

                            <div class="topbar">
                                <div class="topbar-right">
                                    <div class="cart">
                                        <a class="title-cart" href="gio-hang.jsp">
                                            <span class="fa fa-shopping-cart"></span>
                                            <span class="cart-large"><span data-lang="master_shopping">Giỏ hàng</span> : <span class="total-product" data-field="number">0</span> <span data-lang="master_shopping_product">Sản phẩm</span></span>
                                            <span class="cart-small">(<span class="total-product" data-field="number">0</span>)</span>
                                        </a>
                                    </div>
                                    <div class="search-box">
                                        <span class="btn-search"><span class="fa fa-search"></span></span>
                                        <input type="text" class="text-search" placeholder="Tìm kiếm..." data-field="keyword" data-required="1" data-min="2" value="" data-lang="master_search" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="header group">
                        <div class="container">

                            <div class="banner-inner">
                                <div class="logo">
                                    <a title="" href="index.jsp"><img class="img-logo lazyload" alt="" data-src="../drive.gianhangvn.com/image/banner-top-2660267j31185.jpg" /></a>
                                </div>
                                <div class="banner">
                                    <a title="" href="index.jsp"><img class="img-banner lazyload" alt="" data-src="../drive.gianhangvn.com/image/banner-top-2660267j31185.jpg" /></a>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="menu group">
                        <div class="container">

                            <div class="navigation">
                                <div class="cd-nav-content">
                                    <a href="javascript:void(0)" class="cd-nav-toggle"><span class="fa fa-bars"></span></a>
                                    <div class="hotline">
                                        <span class="icon"><em class="fa fa-phone">&nbsp;</em></span>
                                        <p><a href="tel:0966991930" title="Gọi ngay cho chúng tôi">0966 991 930</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="slideshow group">
                        <div class="container">

                        </div>
                    </section>
                    <section class="pathpage group">
                        <div class="container">

                            <ol class="breadcrumb" itemscope itemtype="https://schema.org/BreadcrumbList">
                                <li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                                    <a title="Trang chủ" itemtype="https://schema.org/Thing" itemprop="item" href="LoadAutomaker?load=home"><span itemprop="name"><span
                            data-lang='bc_home'>Trang chủ</span></span></a>
                                    <meta itemprop="position" content="1">
                                </li>
                                <li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                                    <a title="Sản phẩm" itemtype="https://schema.org/Thing" itemprop="item" href="san-pham.jsp"><span
                            itemprop="name">Sản phẩm</span></a>
                                    <meta itemprop="position" content="2">
                                </li>
                            </ol>
                        </div>
                    </section>
                    <section class="main group">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-3 col-left">
                                    <div class="box-left">
                                        <p class="title-box-left collapse-title">Danh mục sản phẩm</p>
                                        <div class="box-left-content collapse-content">
                                            <div class="vertical-menu phone-vertical-menu">
                                                <c:forEach var="categoryCar" items="${listAutomaker}">
                                                    <ul class="primary-menu">
                                                        <li>
                                                            <a href="ProductSeverlet?id=${categoryCar.automaker_id}" title="Honda City">${categoryCar.automaker_name}</a>
                                                        </li>
                                                    </ul>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="box-left">
                                        <p class="title-box-left collapse-title">Sản phẩm bán chạy</p>
                                        <div class="box-left-content collapse-content">
                                            <div class="block group">
                                                <div class="block-img block-img-border">
                                                    <a href="honda-accord-1-5l-turbo-1287636.jsp" title="Honda Accord 1.5L Turbo"><img class="img-default lazyload" alt="Honda Accord 1.5L Turbo" data-src="../drive.gianhangvn.com/image/honda-accord-1-5l-turbo-1855972j31185x16.jpg" /></a>
                                                </div>
                                                <div class="block-caption">
                                                    <h5 class="block-title"><a href="honda-accord-1-5l-turbo-1287636.jsp" title="Honda Accord 1.5L Turbo">Honda Accord 1.5L
                                        Turbo</a></h5>
                                                    <div class="block-price">
                                                        <span class="price">1,319,000,000 đ</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="box-left">
                                        <p class="title-box-left collapse-title">Thống kê</p>
                                        <div class="box-left-content collapse-content">
                                            <ul class="list-group statistic">
                                                <li id="statistic-online">
                                                    <span class="statistic-text" data-lang="md_statistic_online">Đang online</span>
                                                    <span class="statistic-number" data-field="onlinetraffics">0</span>
                                                </li>
                                                <li id="statistic-today">
                                                    <span class="statistic-text today" data-lang="md_statistic_today">Hôm nay</span>
                                                    <span class="statistic-number" data-field="todaytraffics">0</span>
                                                </li>
                                                <li id="statistic-yesterday">
                                                    <span class="statistic-text yesterday" data-lang="md_statistic_yesterday">Hôm qua</span>
                                                    <span class="statistic-number" data-field="yesterdaytraffics">0</span>
                                                </li>
                                                <li id="statistic-week">
                                                    <span class="statistic-text week" data-lang="md_statistic_week">Trong tuần</span>
                                                    <span class="statistic-number" data-field="weektraffics">0</span>
                                                </li>
                                                <li id="statistic-month">
                                                    <span class="statistic-text month" data-lang="md_statistic_month">Trong tháng</span>
                                                    <span class="statistic-number" data-field="monthtraffics">0</span>
                                                </li>
                                                <li id="statistic-sum">
                                                    <span class="statistic-text total" data-lang="md_statistic_sum">Tổng cộng</span>
                                                    <span class="statistic-number" data-field="totaltraffics">0</span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-9 col-right">
                                    <h1 class="page-heading border-bottom">Sản phẩm</h1>
                                    <div id="gridproductlist">
                                        <form action="ProductSeverlet" method="GET">
                                            <input type="hidden" name="id" value="${currentId}">
                                            <div class="grid-sort group">
                                                <div class="grid-left">
                                                    <label data-lang="catpro_sortby">Sắp xếp theo</label>
                                                    <select class="form-control" name="sortItem" id="shortOrder" onchange="this.form.submit()">
                                        <option value="default" <c:if test="${sortItem == 'default'}">selected</c:if>>Mặc định</option>
                                        <option value="low_to_high" <c:if test="${sortItem == 'low_to_high'}">selected</c:if>>Giá thấp nhất</option>
                                        <option value="high_to_low" <c:if test="${sortItem == 'high_to_low'}">selected</c:if>>Giá cao nhất</option>
                                        <option value="name_increase" <c:if test="${sortItem == '4'}">selected</c:if>>Tên sản phẩm: A đến Z</option>
                                        <option value="name_decrease" <c:if test="${sortItem == '5'}">selected</c:if>>Tên sản phẩm: Z đến A</option>
                                    </select>
                                                </div>
                                            </div>
                                        </form>

                                        <div class="grid-content group box-product-list">
                                            <div class="row">
                                                <c:forEach items="${listProductById}" var="listProductByID">
                                                    <div class="col-6 col-md-4 col-product">
                                                        <div class="product">
                                                            <div class="product-image">
                                                                <a href="ProductItemServlet?productId=${listProductByID.productId}" title="Honda Accord 1.5L Turbo"><img class="img-responsive lazyload" alt="Honda Accord 1.5L Turbo" data-src="${listProductByID.linkVideo}" /></a>
                                                            </div>
                                                            <div class="caption">
                                                                <h3 class="name"><a href="#" title="Honda Accord 1.5L Turbo">${listProductByID.productName}</a>
                                                                </h3>
                                                                <div class="description">
                                                                    <ul>
                                                                        <li>${listProductByID.description}</li>
                                                                    </ul>
                                                                </div>
                                                                <div class="content-price">
                                                                    <span class="price">${listProductByID.price} VND</span>
                                                                    <span class="view"><i class="fa fa-eye"></i><span>1,348 lượt</span></span>
                                                                </div>
                                                                <a class="btn btn-addcart" href="#" data-id="1287636" data-url="https://hondaotolongbienhn.com/gio-hang.jsp" title="Mua ngay" data-lang="btn_addcart">THÊM VÀO GIỎ HÀNG</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>

                                            </div>
                                            <%--                                                phan trang--%>
                                                <div class="pagination-container">
                                                    <ul class="pagination justify-content-center">
                                                        <!-- Nút Previous -->
                                                        <c:if test="${currentPage > 1}">
                                                            <li class="page-item">
                                                                <a class="page-link" href="ProductSeverlet?id=${currentId}&page=${currentPage - 1}&sortItem=${sortItem}" aria-label="Previous">
                                                                    <span aria-hidden="true">&laquo;</span>
                                                                </a>
                                                            </li>
                                                        </c:if>
                                                        <c:forEach var="i" begin="1" end="${totalPages}">
                                                            <li class="page-item <c:if test='${i == currentPage}'>active</c:if>">
                                                                <a class="page-link" href="ProductSeverlet?id=${currentId}&page=${i}&sortItem=${sortItem}">${i}</a>
                                                            </li>
                                                        </c:forEach>
                                                        <c:if test="${currentPage < totalPages}">
                                                            <li class="page-item">
                                                                <a class="page-link" href="ProductSeverlet?id=${currentId}&page=${currentPage + 1}&sortItem=${sortItem}" aria-label="Next">
                                                                    <span aria-hidden="true">&raquo;</span>
                                                                </a>
                                                            </li>
                                                        </c:if>
                                                    </ul>
                                                </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section>

                        <div class="footer group">
                            <div class="container group">
                                <div class="footer-content group">
                                    <div class="session group">
                                        <div class="col col_6 footer-block ">
                                            <div class="contact">
                                                <h4 class="title-footer-block">Honda Ô tô G3</h4>

                                                <ul>
                                                    <li><span class="icon"><em class="fa fa-phone">&nbsp; </em> </span>

                                                        <p>Hotline(Zalo): <a href="tel:0926278500">0926278500</a></p>
                                                    </li>
                                                    <li><span class="icon"><em class="fa fa-envelope">&nbsp; </em> </span>
                                                        <p>Email: <a href="mailto:hieunthe171211@gmail.com">hieunthe171211@gmail.com</a>
                                                        </p>
                                                    </li>
                                                    <li><span class="icon"><em class="fa fa-home">&nbsp; </em> </span>
                                                        <p>Địa chỉ: &nbsp;Gara Oto G3 , Thôn 3 , Thạch Hòa , Thạch Thất , Hà Nội</p>
                                                    </li>
                                                    <li><span class="icon"><em class="fa fa-at">&nbsp; </em> </span>
                                                        <p>Website: <a href="index.jsp">https://hondaotog3.com</a></p>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>

                                        <div class="col col_6 footer-block">
                                            <h4 class="title-footer-block collapse-title">bản đồ</h4>

                                            <div class="google-map">
                                                <iframe allowfullscreen="" height="250" loading="lazy" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.943942542734!2d105.90214521398168!3d21.034928885995026!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abc4ff1eab73%3A0xf98f380b5efd9ccd!2zSG9uZGEgw5QgdMO0IExvbmcgQmnDqm4!5e0!3m2!1svi!2s!4v1626252246292!5m2!1svi!2s"
                                                    style="border:0;" width="100%"></iframe>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="copyright group">
                            <div class="container group">
                                <div class="copyright-content group">
                                    <div class="col col_9">
                                        <p class="copy-right">Copyright© 2023</p>
                                    </div>
                                    <div class="col col_3">
                                        <p class="designed">Designed By <a href="https://gianhangvn.com/" title="Web Gian Hàng">GianHangVN</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <jsp:include page="/common/header.jsp" />


                    <p id="back-top"><a href="javascript:void(0);" title="Scroll To Top"><i class="fa fa-angle-up"></i>Top</a></p>
                    <a class="btn-call-now" href="tel:0966991930" title="Gọi ngay cho chúng tôi"><em class="fa fa-phone">&nbsp;</em></a>
                    <a class="btn-shopping-cart" href="gio-hang.jsp"><em class="fa fa-shopping-cart">&nbsp;</em><span
            class="btn-shopping-cart-number">(<span class="total-product" data-field="number">0</span>)</span></a>
                    <div class="cd-overlay"></div>
                    <script src="../cloud.gianhangvn.com/templates/0012/js/jquery.min.js"></script>
                    <script src="../cloud.gianhangvn.com/js/common.min2455.js?v15"></script>
                    <script src="../cloud.gianhangvn.com/js/cart.min2455.js?v15"></script>
                    <script src="../cloud.gianhangvn.com/templates/0012/js/home.min6654.js?v1"></script>
                    <script src="../cloud.gianhangvn.com/templates/0012/lang/vi6654.js?v1"></script>
                    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/jsp5shiv/3.7.2/jsp5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
                    <script id="pluginjs" src="plugin9be8.js?638324630743158913" async defer></script>
                    <script type="text/javascript">
                        window.token = 'PV7XzhVWstI8scmbU3TNLU-siHiez0KJTQx5XbJpjudx2sGCXG9OffC3_WQcrZ1pFLYTi-8HdYJFscBswb5LVw';
                        window.tokenview = '';
                        window.language = 'vi';
                        window.webUrl = 'index.jsp';
                        window.pageKey = 'productlist';
                        window.fbAsyncInit = function() {
                            FB.init({
                                appId: '',
                                cookie: true,
                                xfbml: true,
                                version: 'v3.2'
                            });
                        };
                        (function(d, s, id) {
                            var js, fjs = d.getElementsByTagName(s)[0];
                            if (d.getElementById(id)) {
                                return;
                            }
                            js = d.createElement(s);
                            js.id = id;
                            js.src = "../connect.facebook.net/vi_VN/sdk.js";
                            fjs.parentNode.insertBefore(js, fjs);
                        }(document, 'script', 'facebook-jssdk'));
                    </script>
                    <style>
                        #danhmuc .box-header {
                            text-align: center;
                        }
                        
                        #danhmuc .name {
                            line-height: 24px;
                            color: #c00;
                            font-size: 24px;
                            font-weight: 700;
                            white-space: nowrap;
                            overflow: hidden;
                            text-overflow: ellipsis;
                        }
                        
                        #danhmuc .title-price {
                            font-weight: 700;
                            margin-bottom: 10px;
                        }
                        
                        #danhmuc .title-price .price {
                            font-size: 18px;
                            color: #c00;
                        }
                        
                        .btn-outline-secondary {
                            color: #6c757d;
                            background-color: transparent;
                            background-image: none;
                            border-color: #6c757d;
                        }
                        
                        .center-content {
                            position: relative;
                            padding: 10px;
                        }
                        
                        .logo {
                            text-align: center;
                            padding: 0;
                        }
                        
                        .box-container {
                            border: none;
                        }
                        
                        .detail-content .detail-content-title {
                            color: #b62831;
                            font-size: 120%;
                            padding: 0 10px;
                            border-left: 5px solid #b62831;
                            width: 100%;
                            box-sizing: border-box;
                            text-transform: uppercase;
                            font-weight: 700;
                        }
                        
                        .headerbar .headerbar-left {
                            float: left;
                            width: 100%;
                        }
                        
                        .headerbar .headerbar-left img {
                            max-height: none;
                            width: 100%;
                        }
                        
                        .headerbar .headerbar-right {
                            display: none;
                        }
                        
                        .fast-access {
                            display: -webkit-box;
                            display: -webkit-flex;
                            display: -ms-flexbox;
                            display: flex;
                            -webkit-box-align: stretch !important;
                            -webkit-align-items: stretch !important;
                            -ms-flex-align: stretch !important;
                            align-items: stretch !important;
                            background-color: #121212;
                            color: #fff;
                        }
                        
                        .fast-access:hover,
                        .fast-access:focus {
                            opacity: 0.9;
                            color: #fff;
                        }
                        
                        .fast-access .fast-access-icon {
                            display: -webkit-box !important;
                            display: -webkit-flex !important;
                            display: -ms-flexbox !important;
                            display: flex !important;
                            background-color: #b70100;
                            padding: 10px;
                        }
                        
                        .fast-access .fast-access-icon .fa {
                            position: relative;
                            width: 60px;
                            height: 60px;
                            border: 2px solid #fff;
                            border-radius: 50%;
                            font-size: 30px;
                        }
                        
                        .fast-access .fast-access-icon .fa:before {
                            position: absolute;
                        }
                        
                        .fast-access .fast-access-icon .fa-usd {
                            font-size: 36px;
                        }
                        
                        .fast-access .fast-access-icon .fa-usd:before {
                            top: 10px;
                            left: 18px;
                        }
                        
                        .fast-access .fast-access-icon .fa-calculator:before {
                            top: 12px;
                            left: 13px;
                        }
                        
                        .fast-access .fast-access-icon .fa-car:before {
                            top: 12px;
                            left: 11px;
                        }
                        
                        @media (min-width: 576px) {
                            .fast-access {
                                -webkit-box-align: start;
                                -webkit-align-items: flex-start;
                                -ms-flex-align: start;
                                align-items: flex-start;
                            }
                            .fast-access .fast-access-icon {
                                margin-right: 10px;
                            }
                            .fast-access .fast-access-title {
                                -webkit-box-flex: 1;
                                -webkit-flex: 1 1 0%;
                                -ms-flex: 1 1 0%;
                                flex: 1 1 0%;
                                -webkit-align-self: center !important;
                                -ms-flex-item-align: center !important;
                                -ms-grid-row-align: center !important;
                                align-self: center !important;
                                font-size: 25px;
                            }
                        }
                        
                        @media (max-width: 576px) {
                            .fast-access {
                                -webkit-box-orient: vertical !important;
                                -webkit-box-direction: normal !important;
                                -webkit-flex-direction: column !important;
                                -ms-flex-direction: column !important;
                                flex-direction: column !important;
                            }
                            .fast-access .fast-access-icon {
                                -webkit-box-pack: center !important;
                                -webkit-justify-content: center !important;
                                -ms-flex-pack: center !important;
                                justify-content: center !important;
                            }
                            .fast-access .fast-access-title {
                                -webkit-box-flex: 1;
                                -webkit-flex: 1 1 0%;
                                -ms-flex: 1 1 0%;
                                flex: 1 1 0%;
                                font-size: 18px;
                                line-height: 1.2;
                                text-align: center;
                                padding: 6px;
                            }
                        }
                        
                        .pagination-container {
                            margin-top: 20px;
                        }
                        
                        .pagination .page-item.active .page-link {
                            background-color: #007bff;
                            border-color: #007bff;
                            color: white;
                        }
                        
                        .pagination .page-link {
                            color: #007bff;
                            border: 1px solid #dee2e6;
                        }
                        
                        .pagination .page-link:hover {
                            background-color: #007bff;
                            color: white;
                            border-color: #007bff;
                        }
                        
                        .pagination .page-link:focus {
                            box-shadow: none;
                        }
                        
                        .btn-custom,
                        .btn-default {
                            width: 100%;
                            margin-top: 5px;
                        }
                        
                        .btn-shopping-cart {
                            display: none;
                        }
                        
                        .btn-call-now {
                            display: block;
                            position: fixed;
                            left: 10px;
                            right: auto;
                            bottom: 6px;
                            height: auto;
                            width: auto;
                            border-top: none;
                            background: transparent;
                            text-decoration: none;
                            -webkit-box-shadow: none;
                            -moz-box-shadow: none;
                            box-shadow: none;
                            z-index: 99999;
                        }
                        
                        .phone-circle {
                            position: relative;
                            display: inline-block;
                            width: 44px;
                            height: 44px;
                            background-color: #ff3425;
                            border-radius: 100%;
                        }
                        
                        .phone-circle .fa {
                            position: absolute;
                            left: 10px;
                            top: 7px;
                            background: transparent;
                            color: #fff;
                            font-size: 30px;
                            -webkit-animation: ring-anim 1s infinite ease-in-out;
                            animation: ring-anim 1s infinite ease-in-out;
                        }
                        
                        .phone-circle .ping {
                            display: inline-block;
                            width: 44px;
                            height: 44px;
                            opacity: 1;
                            border: 1px solid #f33;
                            background-color: rgba(238, 46, 36, .2);
                            border-radius: 100%;
                            -webkit-animation: sonar-anim 1.25s linear infinite;
                            animation: sonar-anim 1.25s linear infinite;
                        }
                        
                        .add-widget {
                            position: fixed;
                            z-index: 999999
                        }
                        
                        .add-widget.widget-zalo {
                            left: 10px;
                            bottom: 70px;
                        }
                        
                        .add-widget.widget-driver {
                            left: 10px;
                            bottom: 130px;
                        }
                        
                        .add-widget .widget-circle {
                            position: relative;
                            display: inline-block;
                            width: 44px;
                            height: 44px;
                            background-color: #c4172c;
                            -webkit-border-radius: 50%;
                            border-radius: 50%
                        }
                        
                        .add-widget .widget-circle .fa-icon {
                            position: absolute;
                            left: 7px;
                            top: 7px;
                            width: 30px;
                            height: 30px;
                            background-size: 30px;
                            background-repeat: no-repeat
                        }
                        
                        .add-widget.widget-zalo .widget-circle {
                            background: rgba(61, 157, 215, 1);
                            background: -moz-linear-gradient(top, rgba(61, 157, 215, 1) 0, rgba(32, 124, 229, 1) 100%);
                            background: -webkit-gradient(left top, left bottom, color-stop(0, rgba(61, 157, 215, 1)), color-stop(100%, rgba(32, 124, 229, 1)));
                            background: -webkit-linear-gradient(top, rgba(61, 157, 215, 1) 0, rgba(32, 124, 229, 1) 100%);
                            background: -o-linear-gradient(top, rgba(61, 157, 215, 1) 0, rgba(32, 124, 229, 1) 100%);
                            background: linear-gradient(to bottom, rgba(61, 157, 215, 1) 0, rgba(32, 124, 229, 1) 100%)
                        }
                        
                        .add-widget.widget-zalo .widget-circle .fa-icon {
                            background-image: url(../cdn.gianhangvn.com/image/icon-zalo-on0jkb4.jpg)
                        }
                        
                        .add-widget.widget-contact .widget-circle {
                            background: rgba(244, 147, 147, 1);
                            background: -moz-linear-gradient(top, rgba(244, 147, 147, 1) 0, rgba(234, 39, 39, 1) 100%);
                            background: -webkit-gradient(left top, left bottom, color-stop(0, rgba(244, 147, 147, 1)), color-stop(100%, rgba(234, 39, 39, 1)));
                            background: -webkit-linear-gradient(top, rgba(244, 147, 147, 1) 0, rgba(234, 39, 39, 1) 100%);
                            background: -o-linear-gradient(top, rgba(244, 147, 147, 1) 0, rgba(234, 39, 39, 1) 100%);
                            background: linear-gradient(to bottom, rgba(244, 147, 147, 1) 0, rgba(234, 39, 39, 1) 100%)
                        }
                        
                        .add-widget.widget-contact .widget-circle .fa-icon {
                            background-image: url(../cdn.gianhangvn.com/image/icon-contact-o89dkb1.jpg)
                        }
                        
                        .add-widget.widget-driver .widget-circle {
                            background: rgba(245, 183, 74, 1);
                            background: -moz-linear-gradient(top, rgba(245, 183, 74, 1) 0, rgba(193, 32, 50, 1) 100%);
                            background: -webkit-gradient(left top, left bottom, color-stop(0, rgba(245, 183, 74, 1)), color-stop(100%, rgba(193, 32, 50, 1)));
                            background: -webkit-linear-gradient(top, rgba(245, 183, 74, 1) 0, rgba(193, 32, 50, 1) 100%);
                            background: -o-linear-gradient(top, rgba(245, 183, 74, 1) 0, rgba(193, 32, 50, 1) 100%);
                            background: linear-gradient(to bottom, rgba(245, 183, 74, 1) 0, rgba(193, 32, 50, 1) 100%)
                        }
                        
                        .add-widget.widget-driver .widget-circle .fa-icon {
                            background-image: url(../cdn.gianhangvn.com/image/icon-driver-bvkrkb2.jpg)
                        }
                        
                        span.phone-text {
                            display: none;
                            position: relative;
                            color: #fff;
                            background-color: #fa2837;
                            padding: 10px;
                            border-radius: 20px;
                            bottom: 15px;
                        }
                        
                        @media (min-width: 768px) {
                            span.phone-text {
                                display: inline-block;
                            }
                            .btn-call-now {
                                left: 20px;
                                bottom: 10px;
                            }
                            .add-widget.widget-zalo {
                                left: 20px;
                                bottom: 130px;
                            }
                            .add-widget.widget-driver {
                                left: 20px;
                                bottom: 80px;
                            }
                        }
                        
                        @-webkit-keyframes sonar-anim {
                            0% {
                                opacity: 1;
                                -webkit-transform: scale(1);
                                transform: scale(1)
                            }
                            100% {
                                -webkit-transform: scale(3);
                                transform: scale(3);
                                opacity: 0
                            }
                        }
                        
                        @keyframes sonar-anim {
                            0% {
                                opacity: 1;
                                -webkit-transform: scale(1);
                                transform: scale(1)
                            }
                            100% {
                                -webkit-transform: scale(3);
                                transform: scale(3);
                                opacity: 0
                            }
                        }
                        
                        @-webkit-keyframes ring-anim {
                            0% {
                                -webkit-transform: rotate(0) scale(1) skew(1deg);
                                transform: rotate(0) scale(1) skew(1deg)
                            }
                            10% {
                                -webkit-transform: rotate(-25deg) scale(1) skew(1deg);
                                transform: rotate(-25deg) scale(1) skew(1deg)
                            }
                            20% {
                                -webkit-transform: rotate(25deg) scale(1) skew(1deg);
                                transform: rotate(25deg) scale(1) skew(1deg)
                            }
                            30% {
                                -webkit-transform: rotate(-25deg) scale(1) skew(1deg);
                                transform: rotate(-25deg) scale(1) skew(1deg)
                            }
                            40% {
                                -webkit-transform: rotate(25deg) scale(1) skew(1deg);
                                transform: rotate(25deg) scale(1) skew(1deg)
                            }
                            50% {
                                -webkit-transform: rotate(0) scale(1) skew(1deg);
                                transform: rotate(0) scale(1) skew(1deg)
                            }
                            100% {
                                -webkit-transform: rotate(0) scale(1) skew(1deg);
                                transform: rotate(0) scale(1) skew(1deg)
                            }
                        }
                        
                        @keyframes ring-anim {
                            0% {
                                -webkit-transform: rotate(0) scale(1) skew(1deg);
                                transform: rotate(0) scale(1) skew(1deg)
                            }
                            10% {
                                -webkit-transform: rotate(-25deg) scale(1) skew(1deg);
                                transform: rotate(-25deg) scale(1) skew(1deg)
                            }
                            20% {
                                -webkit-transform: rotate(25deg) scale(1) skew(1deg);
                                transform: rotate(25deg) scale(1) skew(1deg)
                            }
                            30% {
                                -webkit-transform: rotate(-25deg) scale(1) skew(1deg);
                                transform: rotate(-25deg) scale(1) skew(1deg)
                            }
                            40% {
                                -webkit-transform: rotate(25deg) scale(1) skew(1deg);
                                transform: rotate(25deg) scale(1) skew(1deg)
                            }
                            50% {
                                -webkit-transform: rotate(0) scale(1) skew(1deg);
                                transform: rotate(0) scale(1) skew(1deg)
                            }
                            100% {
                                -webkit-transform: rotate(0) scale(1) skew(1deg);
                                transform: rotate(0) scale(1) skew(1deg)
                            }
                        }
                        
                        #popupBaoGiaLink {
                            display: none;
                        }
                        
                        .why-group .col_4,
                        .why-group .col_8 {
                            padding: 10px;
                        }
                        
                        .btn-primary {
                            background-color: #b00 !important;
                            border-color: #b00 !important;
                            color: #fff !important;
                        }
                        
                        .btn-secondary {
                            background-color: #4d4d4d !important;
                            border-color: #4d4d4d !important;
                            color: #fff !important;
                        }
                        
                        .row-widget {
                            display: flex;
                            flex-wrap: wrap;
                        }
                        
                        .col-widget {
                            width: 50%;
                            padding: 15px 10px;
                        }
                        
                        .col-widget i {
                            font-size: 215%;
                        }
                        
                        .btn-group-product {
                            margin-bottom: 15px;
                        }
                        
                        #carousel-banner img {
                            width: 100%;
                        }
                        
                        .product .btn-viewmore {
                            display: block;
                            line-height: 20px;
                            padding: 5px 47px 5px 12px;
                            margin-bottom: 10px;
                            -webkit-border-radius: 0;
                            border-radius: 0;
                            font-weight: 500;
                            z-index: 1;
                            border: none;
                            color: #fff;
                            background-color: #e8ce0f;
                            -webkit-transition: all .5s;
                            -o-transition: all .5s;
                            transition: all .5s;
                        }
                        
                        #popupemail,
                        #popupaddress,
                        .rating .rating-box .star,
                        .rating-value {
                            display: none;
                        }
                        
                        .product-detail-info .product-desc {
                            color: #f3581c;
                            font-weight: 600;
                            white-space: pre-line;
                            padding: 10px 0;
                            border-top: 1px solid #ddd;
                            border-bottom: 1px solid #ddd;
                        }
                        
                        .box .box-header .box-title {
                            text-align: center;
                        }
                        
                        .header .container,
                        .logo {
                            padding: 0 !important;
                        }
                        
                        .top {
                            display: none;
                        }
                        
                        .product-row.detail-content {
                            padding: 20px 10px 10px 10px !important;
                            margin: 10px auto;
                            border: 2px dotted #32580f;
                            border-radius: 8px;
                        }
                    </style>
                    <a class="add-widget widget-driver" href="javascript:openModelBaoGia()" title="Đăng ký lái thử"><span
            class="widget-circle"><i class="fa-icon">&nbsp;</i></span></a>
                    <a class="add-widget widget-zalo" href="https://zalo.me/0926278500" title="Chát trên Zalo" target="_blank"><span
            class="widget-circle"><i class="fa-icon">&nbsp;</i></span></a>
                    <script type="text/javascript">
                        function openModelBaoGia() {
                            $("#popupBaoGiaLink").trigger('click');
                        }

                        $(document).ready(function() {
                            $(".btn-call-now").jsp("<span class='phone-circle'><i class='fa fa-phone'></i><span class='ping'></span></span><span class='phone-text'>Hotline:0966 991 930</span>");
                            if (window.pageKey == 'productdetail') {
                                $('#form-product .product-row:nth-child(2)').remove();
                                $('#form-product .product-row:nth-child(2)').remove();
                                $('#form-product .btn-default.addcart').remove();
                                $('.primary-product .product-hotline').remove();
                                $('<div class="row row-form"><div class="col-sm-6"><a class="btn btn-primary" style="width:100%;margin-bottom:6px;" href="javascript:openModelBaoGia()" title="Nhận báo giá">NHẬN ƯU ĐÃI</a></div><div class="col-sm-6"><a class="btn btn-secondary" style="width:100%;margin-bottom:6px;" href="tel:0966991930" title="Nhận báo giá">Hotline: 0966 991 930</a></div></div>').replaceAll('.btn-default.buynow');
                            }
                            $('<a class="btn btn-default" href="javascript:openModelBaoGia();" title="Nhận ưu đãi ngay">NHẬN ƯU ĐÃI</a>').replaceAll('.product .btn-addcart');
                        });
                    </script>
                    <script src="https://uhchat.net/code.php?f=5b4f6b"></script>
                </body>
            </jsp>
>>>>>>> HieuNT
