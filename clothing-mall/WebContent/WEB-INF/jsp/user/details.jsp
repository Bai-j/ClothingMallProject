<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>君悦衣坊</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon -->
    

    <!-- CSS
	============================================ -->
    <!-- google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,300i,400,400i,600,600i,700,700i%7CPoppins:300,300i,400,400i,500,500i,600,700,800,900&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/vendor/bootstrap.min.css">
    <!-- Pe-icon-7-stroke CSS -->
    <link rel="stylesheet" href="css/vendor/pe-icon-7-stroke.css">
    <!-- Font-awesome CSS -->
    <link rel="stylesheet" href="css/vendor/font-awesome.min.css">
    <!-- Slick slider css -->
    <link rel="stylesheet" href="css/plugins/slick.min.css">
    <!-- animate css -->
    <link rel="stylesheet" href="css/plugins/animate.css">
    <!-- Nice Select css -->
    <link rel="stylesheet" href="css/plugins/nice-select.css">
    <!-- jquery UI css -->
    <link rel="stylesheet" href="css/plugins/jqueryui.min.css">
    <!-- main style css -->
    <link rel="stylesheet" href="css/style.css">
    <!-- 图标 -->
    <link rel="shortcut icon" href="icon/favicon.ico" />

</head>

<body>
    <!-- Start Header Area -->
    <header class="header-area header-wide">

            <!-- header middle area start -->
            <div class="header-main-area sticky">
                <div class="container">
                    <div class="row align-items-center position-relative">

                        <!-- start logo area -->
                        <div class="col-lg-3">
                            <div class="logo">
                                <a href="toUserIndex.do">
                                    <img src="img/logo/logo1.png" alt="Brand Logo">
                                </a>
                            </div>
                        </div>
                        <!-- start logo area -->

                        <!-- main menu area start -->
                        <div class="col-lg-6 position-static">
                            <div class="main-menu-area">
                                <div class="main-menu">
                                    <!-- main menu navbar start -->
                                    <nav class="desktop-menu">
                                        <ul>
                                            <li><a href="toUserIndex.do">首页  </a>
                                            </li>
                                            <li><a href="toShop.do">购物 </a>
                                            </li>
                                            <li><a href="toContactUs.do">联系我们</a></li>
                                        </ul>
                                    </nav>
                                    <!-- main menu navbar end -->
                                </div>
                            </div>
                        </div>
                        <!-- main menu area end -->

                        <!-- mini cart area start -->
                        <div class="col-lg-3">
                            <div class="header-right d-flex align-items-center justify-content-end">
                                <div class="header-configure-area">
                                    <ul class="nav justify-content-end">
                                        <li class="header-search-container mr-0">
                                            <button class="search-trigger d-block"><i class="pe-7s-search"></i></button>
                                            <form class="header-search-box d-none animated jackInTheBox">
                                                <input type="text" placeholder="Search entire store hire" class="header-search-field">
                                                <button class="header-search-btn"><i class="pe-7s-search"></i></button>
                                            </form>
                                        </li>
                                        <li class="user-hover">
                                            <a href="#">
                                                <i class="pe-7s-user"></i>
                                            </a>
                                            <ul class="dropdown-list">
                                                <li><a href="toUserLogin.do">登录</a></li>
                                                <li><a href="toUserRegister.do">注册</a></li>
                                                <li><a href="toUserAccount.do">我的信息</a></li>
                                                <li><a href="doUserLogout.do">退出</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="toCollectPage.do?uid=${sessionScope.user.uid }">
                                                <i class="pe-7s-like"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="toCartPage.do?uid=${sessionScope.user.uid }" class="minicart-btn">
                                                <i class="pe-7s-shopbag"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- mini cart area end -->

                    </div>
                </div>
            </div>
            <!-- header middle area end -->
        </div>
    </header>
    <!-- end Header Area -->




    <main>
        <!-- breadcrumb area start -->
        <div class="breadcrumb-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb-wrap">
                            <nav aria-label="breadcrumb">
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="toUserIndex.do"><i class="fa fa-home"></i></a></li>
                                    <li class="breadcrumb-item"><a href="toShop.do">购物</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">商品详情</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb area end -->

        <!-- page main wrapper start -->
        <div class="shop-main-wrapper section-padding pb-0">
            <div class="container">
                <div class="row">
                    <!-- product details wrapper start -->
                    <div class="col-lg-12 order-1 order-lg-2">
                        <!-- product details inner end -->
                        <div class="product-details-inner">
                            <div class="row">
                                <div class="col-lg-5">
                                    <div class="product-large-slider">
                                        <div class="pro-large-img img-zoom">
                                            <img src="${cloth.gimg }" alt="product-details" />
                                        </div>
                                        <div class="pro-large-img img-zoom">
                                            <img src="${cloth.gimg }" alt="product-details" />
                                        </div>
                                        <div class="pro-large-img img-zoom">
                                            <img src="${cloth.gimg }" alt="product-details" />
                                        </div>
                                        <div class="pro-large-img img-zoom">
                                            <img src="${cloth.gimg }" alt="product-details" />
                                        </div>
                                    </div>
                                    <div class="pro-nav slick-row-10 slick-arrow-style">
                                        <div class="pro-nav-thumb">
                                            <img src="${cloth.gimg }" alt="product-details" />
                                        </div>
                                        <div class="pro-nav-thumb">
                                            <img src="${cloth.gimg }" alt="product-details" />
                                        </div>
                                        <div class="pro-nav-thumb">
                                            <img src="${cloth.gimg }" alt="product-details" />
                                        </div>
                                        <div class="pro-nav-thumb">
                                            <img src="${cloth.gimg }" alt="product-details" />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-7">
                                    <div class="product-details-des">
                                        <h3 class="product-name">${cloth.gname }</h3>
                                        <div class="ratings d-flex">
                                            <span><i class="fa fa-star-o"></i></span>
                                            <span><i class="fa fa-star-o"></i></span>
                                            <span><i class="fa fa-star-o"></i></span>
                                            <span><i class="fa fa-star-o"></i></span>
                                            <span><i class="fa fa-star-o"></i></span>
                                            <div class="pro-review">
                                                <span>1 Reviews</span>
                                            </div>
                                        </div>
                                        <div class="price-box">
                                            <span class="price-regular">${cloth.gprice }元</span>
                                        </div>
                                        <div class="availability">
                                            <i class="fa fa-check-circle"></i>
                                            <span>库存： ${cloth.gnum } </span>
                                        </div>
                                        <p class="pro-desc">${cloth.gmaterial }</p>
                                        <div class="quantity-cart-box d-flex align-items-center">
                                            <div class="action_link">
                                                <a class="btn btn-cart2" href="toCart.do?uid=${sessionScope.user.uid }&gid=${cloth.gid }" id="add_cart">加入购物车</a>
                                            </div>
                                        </div>
                                        <div class="useful-links">
                                            <a href="toCollect.do?uid=${sessionScope.user.uid }&gid=${cloth.gid}" data-toggle="tooltip" title="加入收藏"><i
                                                    class="pe-7s-like"></i>收藏</a>
                                        </div>
                                        <div class="like-icon">
                                            <a class="facebook" href="#"><i class="fa fa-facebook"></i>like</a>
                                            <a class="twitter" href="#"><i class="fa fa-twitter"></i>tweet</a>
                                            <a class="pinterest" href="#"><i class="fa fa-pinterest"></i>save</a>
                                            <a class="google" href="#"><i class="fa fa-google-plus"></i>share</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- product details inner end -->

                        <!-- product details reviews start -->
                        <div class="product-details-reviews section-padding pb-0">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="product-review-info">
                                        <ul class="nav review-tab">
                                            <li>
                                                <a class="active" data-toggle="tab" href="#tab_one">商品描述</a>
                                            </li>
                                            <li>
                                                <a data-toggle="tab" href="#tab_two">商品信息</a>
                                            </li>
                                            <li>
                                                <a data-toggle="tab" href="#tab_three">评价</a>
                                            </li>
                                        </ul>
                                        <div class="tab-content reviews-tab">
                                            <div class="tab-pane fade show active" id="tab_one">
                                                <div class="tab-one">
                                                    <p>${cloth.gdescription }</p>
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="tab_two">
                                                <table class="table table-bordered">
                                                    <tbody>
                                                        <tr>
                                                            <td>颜色</td>
                                                            <td>${cloth.gcolor }</td>
                                                        </tr>
                                                        <tr>
                                                            <td>尺码</td>
                                                            <td>${cloth.gsize }</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="tab-pane fade" id="tab_three">
                                                <c:forEach items="${comment }" var="comment">
                                                    <div class="total-reviews">
                                                        <div class="review-box">
                                                            <div class="post-author">
                                                                <p><span>${comment.uname } -</span> <span> <fmt:formatDate value="${comment.regTime}" pattern="yyyy-MM-dd HH:mm:ss"/> </span></p>
                                                            </div>
                                                            <p>${comment.uphone }</p>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- product details reviews end -->
                    </div>
                    <!-- product details wrapper end -->
                </div>
            </div>
        </div>
        <!-- page main wrapper end -->
        <section class="related-products section-padding">
            <div class="container">
            </div>
        </section>
    </main>

    <!-- Scroll to top start -->
    <div class="scroll-top not-visible">
        <i class="fa fa-angle-up"></i>
    </div>
    <!-- Scroll to Top End -->


    <!-- footer area start -->
    <footer class="black-bg">
        <div class="footer-widget-area">
            <div class="container">
                <div class="row mtn-30">
                    <div class="col-lg-3 col-sm-6">
                        <div class="footer-widget-item mt-30">
                            <h6 class="widget-title">CUSTOM LINKS</h6>
                            <ul class="usefull-links">
                                <li><a href="#">Privacy policy</a></li>
                                <li><a href="#">Order status</a></li>
                                <li><a href="#">Returns & exchanges</a></li>
                                <li><a href="#">Size guide</a></li>
                                <li><a href="#">Cart</a></li>
                                <li><a href="#">FAQ</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="footer-widget-item mt-30">
                            <h6 class="widget-title">PRODUCTS</h6>
                            <ul class="usefull-links">
                                <li><a href="#">Prices drop</a></li>
                                <li><a href="#">New products</a></li>
                                <li><a href="#">Best sales</a></li>
                                <li><a href="#">Contact us</a></li>
                                <li><a href="#">Sitemap</a></li>
                                <li><a href="#">Stores</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="footer-widget-item mt-30">
                            <h6 class="widget-title">OUR COMPANY</h6>
                            <ul class="usefull-links">
                                <li><a href="#">Delivery</a></li>
                                <li><a href="#">Legal notice</a></li>
                                <li><a href="#">About us</a></li>
                                <li><a href="#">Secure payment</a></li>
                                <li><a href="#">Contact us</a></li>
                                <li><a href="#">Sitemap</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="footer-widget-item mt-30">
                            <h6 class="widget-title">YOUR ACCOUNT</h6>
                            <ul class="usefull-links">
                                <li><a href="#">Personal info</a></li>
                                <li><a href="#">Orders</a></li>
                                <li><a href="#">Credit slips</a></li>
                                <li><a href="#">Addresses</a></li>
                                <li><a href="#">Stores</a></li>
                                <li><a href="#">FAQ</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom-area text-center">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <p class="copyright">
                            Copyright <a href="http://www.bootstrapmb.com/" title="bootstrapmb">君悦衣坊</a>. All Rights Reserved
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer area end -->

    <!-- JS
============================================ -->

    <!-- Modernizer JS -->
    <script src="js/vendor/modernizr-3.6.0.min.js"></script>
    <!-- jQuery JS -->
    <script src="js/vendor/jquery-3.3.1.min.js"></script>
    <!-- Popper JS -->
    <script src="js/vendor/popper.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="js/vendor/bootstrap.min.js"></script>
    <!-- slick Slider JS -->
    <script src="js/plugins/slick.min.js"></script>
    <!-- Nice Select JS -->
    <script src="js/plugins/nice-select.min.js"></script>
    <!-- jquery UI JS -->
    <script src="js/plugins/jqueryui.min.js"></script>
    <!-- Image zoom JS -->
    <script src="js/plugins/image-zoom.min.js"></script>
    <!-- mailchimp active js -->
    <script src="js/plugins/ajaxchimp.js"></script>
    <!-- contact form dynamic js -->
    <script src="js/plugins/ajax-mail.js"></script>
    <!-- google map api -->
    <script src="http://ditu.google.cn/maps/api/js?key=AIzaSyCfmCVTjRI007pC1Yk2o2d_EhgkjTsFVN8"></script>
    <!-- google map active js -->
    <script src="js/plugins/google-map.js"></script>
    <!-- Main JS -->
    <script src="js/main.js"></script>
</body>

</html>
