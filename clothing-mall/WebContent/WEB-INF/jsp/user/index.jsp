<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.ssm.entity.Clothes" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        <!-- main header start -->
        <div class="main-header d-none d-lg-block">

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
        <!-- hero slider area start -->
        <section class="slider-area">
            <div class="hero-slider-active slick-arrow-style slick-arrow-style_hero slick-dot-style">
                <!-- single slider item start -->
                <div class="hero-single-slide hero-overlay">
                    <div class="hero-slider-item bg-img" data-bg="img/banner/banner1.jpg">
                    </div>
                </div>
                <!-- single slider item start -->

                <!-- single slider item start -->
                <div class="hero-single-slide hero-overlay">
                    <div class="hero-slider-item bg-img" data-bg="img/banner/banner2.jpg">
                    </div>
                </div>
                <!-- single slider item start -->
                
                <!-- single slider item start -->
                <div class="hero-single-slide hero-overlay">
                    <div class="hero-slider-item bg-img" data-bg="img/banner/banner3.jpg">
                    </div>
                </div>
                <!-- single slider item start -->
            </div>
        </section>
        <!-- hero slider area end -->

        <!-- service policy area start -->
        <div class="service-policy section-padding">
            <div class="container">
                <div class="row mtn-30">
                    <div class="col-md-4">
                        <div class="policy-item">
                            <div class="policy-icon">
                                <i class="pe-7s-plane"></i>
                            </div>
                            <div class="policy-content">
                                <h4 class="policy-title">免费送货</h4>
                                <p>所有商品均包邮</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="policy-item">
                            <div class="policy-icon">
                                <i class="pe-7s-headphones"></i>
                            </div>
                            <div class="policy-content">
                                <h4 class="policy-title">客户支持</h4>
                                <p>全天支持购物</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="policy-item">
                            <div class="policy-icon">
                                <i class="pe-7s-shield"></i>
                            </div>
                            <div class="policy-content">
                                <h4 class="policy-title">安全支付</h4>
                                <p>我们保证安全付款</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- service policy area end -->

        <!-- banner statistics area start -->
        <div class="banner-statistics-area">
            <div class="container">
                <div class="row mtn-20">
                    <div class="col-sm-6">
                        <figure class="banner-statistics mt-20">
                            <a href="#">
                                <img src="img/banner/banner4.jpg" alt="product banner" style="width:524px;height:209px">
                            </a>
                        </figure>
                    </div>
                    <div class="col-sm-6">
                        <figure class="banner-statistics mt-20">
                            <a href="#">
                                <img src="img/banner/banner6.jpg" alt="product banner" style="width:524px;height:209px">
                            </a>
                        </figure>
                    </div>
                </div>
            </div>
        </div>
        <!-- banner statistics area end -->

        <!-- product area start -->
        <section class="featured-area section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-header">
                            <!-- section title start -->
                            <div class="section-title">
                                <h3 class="title">特色产品</h3>
                            </div>
                            <!-- section title start -->
                            <!-- product tab menu start -->
                            <div class="product-tab-menu">
                                <ul class="nav justify-content-center">
                                    <li><a href="#tab1" class="active" data-toggle="tab">全部</a></li>
                                    <li><a href="#tab2" data-toggle="tab">新品</a></li>
                                    <li><a href="#tab3" data-toggle="tab">热销</a></li>
                                </ul>
                            </div>
                            <!-- product tab menu end -->
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="product-container">
                            <!-- product tab content start -->
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="tab1">
                                    <div class="product-carousel-4 slick-row-10 slick-arrow-style slick-arrow-style__append">
                                        <!-- product item start -->
                                        <div class="product-item">
                                            <figure class="product-thumb">
                                                <a href="#">
                                                    <img class="pri-img" src="img/clothes/1.jpg" alt="product" style="height:337px">
                                                    <img class="sec-img" src="img/clothes/f1.jpg" alt="product" style="height:337px">
                                                </a>
                                               
                                                <div class="button-group">
                                                    <a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="pe-7s-like"></i></a>
                                                    <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="pe-7s-cart"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                                </div>
                                            </figure>
                                        </div>
                                        <!-- product item end -->

                                        <!-- product item start -->
                                        <div class="product-item">
                                            <figure class="product-thumb">
                                                <a href="#">
                                                    <img class="pri-img" src="img/clothes/2.jpg" alt="product" style="height:337px">
                                                    <img class="sec-img" src="img/clothes/f2.jpg" alt="product" style="height:337px">
                                                </a>
                                                
                                                <div class="button-group">
                                                    <a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="pe-7s-like"></i></a>
                                                    <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="pe-7s-cart"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                                </div>
                                            </figure>
                                        </div>
                                        <!-- product item end -->

                                        <!-- product item start -->
                                        <div class="product-item">
                                            <figure class="product-thumb">
                                                <a href="#">
                                                    <img class="pri-img" src="img/clothes/3.jpg" alt="product" style="height:337px">
                                                    <img class="sec-img" src="img/clothes/f3.jpg" alt="product" style="height:337px">
                                                </a>
                                                
                                                <div class="button-group">
                                                    <a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="pe-7s-like"></i></a>
                                                    <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="pe-7s-cart"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                                </div>
                                            </figure>
                                        </div>
                                        <!-- product item end -->

                                        <!-- product item start -->
                                        <div class="product-item">
                                            <figure class="product-thumb">
                                                <a href="#">
                                                    <img class="pri-img" src="img/clothes/4.jpg" alt="product" style="height:337px">
                                                    <img class="sec-img" src="img/clothes/f4.jpg" alt="product" style="height:337px">
                                                </a>
                                                
                                                <div class="button-group">
                                                    <a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="pe-7s-like"></i></a>
                                                    <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="pe-7s-cart"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                                </div>
                                            </figure>
                                        </div>
                                        <!-- product item end -->

                                        <!-- product item start -->
                                        <div class="product-item">
                                            <figure class="product-thumb">
                                                <a href="#">
                                                    <img class="pri-img" src="img/clothes/5.jpg" alt="product" style="height:337px">
                                                    <img class="sec-img" src="img/clothes/m5.jpg" alt="product" style="height:337px">
                                                </a>
                                                
                                                <div class="button-group">
                                                    <a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="pe-7s-like"></i></a>
                                                    <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="pe-7s-cart"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                                </div>
                                            </figure>
                                        </div>
                                        <!-- product item end -->
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tab2">
                                    <div class="product-carousel-4 slick-row-10 slick-arrow-style slick-arrow-style__append">
                                        <!-- product item start -->
                                        <div class="product-item">
                                            <figure class="product-thumb">
                                                <a href="#">
                                                    <img class="pri-img" src="img/clothes/a1.jpg" alt="product">
                                                    <img class="sec-img" src="img/clothes/a6.jpg" alt="product">
                                                </a>
                                                <div class="button-group">
                                                    <a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="pe-7s-like"></i></a>
                                                    <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="pe-7s-cart"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                                </div>
                                            </figure>
                                        </div>
                                        <!-- product item end -->

                                        <!-- product item start -->
                                        <div class="product-item">
                                            <figure class="product-thumb">
                                                <a href="#">
                                                    <img class="pri-img" src="img/clothes/a2.jpg" alt="product">
                                                    <img class="sec-img" src="img/clothes/a7.jpg" alt="product">
                                                </a>
                                                <div class="button-group">
                                                    <a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="pe-7s-like"></i></a>
                                                    <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="pe-7s-cart"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                                </div>
                                            </figure>
                                        </div>
                                        <!-- product item end -->

                                        <!-- product item start -->
                                        <div class="product-item">
                                            <figure class="product-thumb">
                                                <a href="#">
                                                    <img class="pri-img" src="img/clothes/a16.jpg" alt="product">
                                                    <img class="sec-img" src="img/clothes/a8.jpg" alt="product">
                                                </a>
                                                <div class="button-group">
                                                    <a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="pe-7s-like"></i></a>
                                                    <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="pe-7s-cart"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                                </div>
                                            </figure>
                                        </div>
                                        <!-- product item end -->

                                        <!-- product item start -->
                                        <div class="product-item">
                                            <figure class="product-thumb">
                                                <a href="#">
                                                    <img class="pri-img" src="img/clothes/a4.jpg" alt="product">
                                                    <img class="sec-img" src="img/clothes/a9.jpg" alt="product">
                                                </a>
                                                <div class="button-group">
                                                    <a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="pe-7s-like"></i></a>
                                                    <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="pe-7s-cart"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                                </div>
                                            </figure>
                                        </div>
                                        <!-- product item end -->

                                        <!-- product item start -->
                                        <div class="product-item">
                                            <figure class="product-thumb">
                                                <a href="#">
                                                    <img class="pri-img" src="img/clothes/a5.jpg" alt="product">
                                                    <img class="sec-img" src="img/clothes/a10.jpg" alt="product">
                                                </a>
                                                <div class="button-group">
                                                    <a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="pe-7s-like"></i></a>
                                                    <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="pe-7s-cart"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                                </div>
                                            </figure>
                                        </div>
                                        <!-- product item end -->
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tab3">
                                    <div class="product-carousel-4 slick-row-10 slick-arrow-style slick-arrow-style__append">
                                        <!-- product item start -->
                                        <div class="product-item">
                                            <figure class="product-thumb">
                                                <a href="#">
                                                    <img class="pri-img" src="img/clothes/s1.jpg" alt="product">
                                                    <img class="sec-img" src="img/clothes/s6.jpg" alt="product">
                                                </a>
                                                <div class="button-group">
                                                    <a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="pe-7s-like"></i></a>
                                                    <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="pe-7s-cart"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                                </div>
                                            </figure>
                                        </div>
                                        <!-- product item end -->

                                        <!-- product item start -->
                                        <div class="product-item">
                                            <figure class="product-thumb">
                                                <a href="#">
                                                    <img class="pri-img" src="img/clothes/s2.jpg" alt="product">
                                                    <img class="sec-img" src="img/clothes/s7.jpg" alt="product">
                                                </a>
                                                <div class="button-group">
                                                    <a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="pe-7s-like"></i></a>
                                                    <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="pe-7s-cart"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                                </div>
                                            </figure>
                                        </div>
                                        <!-- product item end -->

                                        <!-- product item start -->
                                        <div class="product-item">
                                            <figure class="product-thumb">
                                                <a href="#">
                                                    <img class="pri-img" src="img/clothes/s15.jpg" alt="product">
                                                    <img class="sec-img" src="img/clothes/s8.jpg" alt="product">
                                                </a>
                                                <div class="button-group">
                                                    <a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="pe-7s-like"></i></a>
                                                    <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="pe-7s-cart"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                                </div>
                                            </figure>
                                        </div>
                                        <!-- product item end -->

                                        <!-- product item start -->
                                        <div class="product-item">
                                            <figure class="product-thumb">
                                                <a href="#">
                                                    <img class="pri-img" src="img/clothes/s4.jpg" alt="product">
                                                    <img class="sec-img" src="img/clothes/s9.jpg" alt="product">
                                                </a>
                                                <div class="button-group">
                                                    <a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="pe-7s-like"></i></a>
                                                    <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="pe-7s-cart"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                                </div>
                                            </figure>
                                        </div>
                                        <!-- product item end -->

                                        <!-- product item start -->
                                        <div class="product-item">
                                            <figure class="product-thumb">
                                                <a href="#">
                                                    <img class="pri-img" src="img/clothes/s16.jpg" alt="product">
                                                    <img class="sec-img" src="img/clothes/s10.jpg" alt="product">
                                                </a>
                                                <div class="button-group">
                                                    <a href="wishlist.html" data-toggle="tooltip" title="Add to Wishlist"><i class="pe-7s-like"></i></a>
                                                    <a href="cart.html" data-toggle="tooltip" title="Add to Compare"><i class="pe-7s-cart"></i></a>
                                                    <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                                </div>
                                            </figure>
                                        </div>
                                        <!-- product item end -->
                                    </div>
                                </div>
                            </div>
                            <!-- product tab content end -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- product area end -->

        <!-- banner statistics area start -->
        <div class="banner-statistics-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <figure class="banner-statistics">
                            <a href="#">
                                <img src="img/banner/banner7.jpg" alt="product banner">
                            </a>
                        </figure>
                    </div>
                </div>
            </div>
        </div>
        <!-- banner statistics area end -->

        <!-- featured product area start -->
        <section class="our-product section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!-- section title start -->
                        <div class="section-title text-center">
                            <h2 class="title">我们的产品</h2>
                        </div>
                        <!-- section title start -->
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="product-carousel-4_2 slick-row-10 slick-arrow-style">
                            <!-- product item start -->
                            <div class="product-item">
                                <figure class="product-thumb">
                                    <a href="#">
                                        <img class="pri-img" src="img/clothes/f6.jpg" alt="product">
                                        <img class="sec-img" src="img/clothes/f7.jpg" alt="product">
                                    </a>
                                    <div class="button-group">
                                        <a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="pe-7s-like"></i></a>
                                        <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="pe-7s-cart"></i></a>
                                        <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                    </div>
                                </figure>
                            </div>
                            <!-- product item end -->

                            <!-- product item start -->
                            <div class="product-item">
                                <figure class="product-thumb">
                                    <a href="#">
                                        <img class="pri-img" src="img/clothes/f8.jpg" alt="product">
                                        <img class="sec-img" src="img/clothes/f9.jpg" alt="product">
                                    </a>
                                    <div class="button-group">
                                        <a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="pe-7s-like"></i></a>
                                        <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="pe-7s-cart"></i></a>
                                        <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                    </div>
                                </figure>
                            </div>
                            <!-- product item end -->

                            <!-- product item start -->
                            <div class="product-item">
                                <figure class="product-thumb">
                                    <a href="#">
                                        <img class="pri-img" src="img/clothes/m6.jpg" alt="product">
                                        <img class="sec-img" src="img/clothes/m7.jpg" alt="product">
                                    </a>
                                    <div class="button-group">
                                        <a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="pe-7s-like"></i></a>
                                        <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="pe-7s-cart"></i></a>
                                        <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                    </div>
                                </figure>
                            </div>
                            <!-- product item end -->

                            <!-- product item start -->
                            <div class="product-item">
                                <figure class="product-thumb">
                                    <a href="#">
                                        <img class="pri-img" src="img/clothes/m8.jpg" alt="product">
                                        <img class="sec-img" src="img/clothes/m9.jpg" alt="product">
                                    </a>
                                    <div class="button-group">
                                        <a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="pe-7s-like"></i></a>
                                        <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="pe-7s-cart"></i></a>
                                        <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                    </div>
                                </figure>
                            </div>
                            <!-- product item end -->

                            <!-- product item start -->
                            <div class="product-item">
                                <figure class="product-thumb">
                                    <a href="#">
                                        <img class="pri-img" src="img/clothes/s11.jpg" alt="product">
                                        <img class="sec-img" src="img/clothes/s12.jpg" alt="product">
                                    </a>
                                    <div class="button-group">
                                        <a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="pe-7s-like"></i></a>
                                        <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="pe-7s-cart"></i></a>
                                        <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                    </div>
                                </figure>
                            </div>
                            <!-- product item end -->

                            <!-- product item start -->
                            <div class="product-item">
                                <figure class="product-thumb">
                                    <a href="#">
                                        <img class="pri-img" src="img/clothes/s13.jpg" alt="product">
                                        <img class="sec-img" src="img/clothes/s14.jpg" alt="product">
                                    </a>
                                    <div class="button-group">
                                        <a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="pe-7s-like"></i></a>
                                        <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="pe-7s-cart"></i></a>
                                        <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                    </div>
                                </figure>
                            </div>
                            <!-- product item end -->

                            <!-- product item start -->
                            <div class="product-item">
                                <figure class="product-thumb">
                                    <a href="#">
                                        <img class="pri-img" src="img/clothes/a17.jpg" alt="product">
                                        <img class="sec-img" src="img/clothes/a18.jpg" alt="product">
                                    </a>
                                    <div class="button-group">
                                        <a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="pe-7s-like"></i></a>
                                        <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="pe-7s-cart"></i></a>
                                        <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                    </div>
                                </figure>
                            </div>
                            <!-- product item end -->

                            <!-- product item start -->
                            <div class="product-item">
                                <figure class="product-thumb">
                                    <a href="#">
                                        <img class="pri-img" src="img/clothes/a15.jpg" alt="product">
                                        <img class="sec-img" src="img/clothes/a16.jpg" alt="product">
                                    </a>
                                    <div class="button-group">
                                        <a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="pe-7s-like"></i></a>
                                        <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="pe-7s-cart"></i></a>
                                        <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                    </div>
                                </figure>
                            </div>
                            <!-- product item end -->
                            
                            <!-- product item start -->
                            <div class="product-item">
                                <figure class="product-thumb">
                                    <a href="#">
                                        <img class="pri-img" src="img/clothes/f11.jpg" alt="product">
                                        <img class="sec-img" src="img/clothes/f12.jpg" alt="product">
                                    </a>
                                    <div class="button-group">
                                        <a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="pe-7s-like"></i></a>
                                        <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="pe-7s-cart"></i></a>
                                        <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                    </div>
                                </figure>
                            </div>
                            <!-- product item end -->

                            <!-- product item start -->
                            <div class="product-item">
                                <figure class="product-thumb">
                                    <a href="#">
                                        <img class="pri-img" src="img/clothes/m13.jpg" alt="product">
                                        <img class="sec-img" src="img/clothes/m14.jpg" alt="product">
                                    </a>
                                    <div class="button-group">
                                        <a href="#" data-toggle="tooltip" title="Add to Wishlist"><i class="pe-7s-like"></i></a>
                                        <a href="#" data-toggle="tooltip" title="Add to Compare"><i class="pe-7s-cart"></i></a>
                                        <a href="#" data-toggle="modal" data-target="#quick_view"><span data-toggle="tooltip" title="Quick View"><i class="pe-7s-look"></i></span></a>
                                    </div>
                                </figure>
                            </div>
                            <!-- product item end -->
                        </div>
                        
                    </div>
                </div>
            </div>
        </section>
        <!-- featured product area end --> 

        <!-- brand logo area start -->
        <div class="brand-logo section-padding pt-0">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="brand-logo-carousel slick-row-10 slick-arrow-style">
                            <!-- single brand start -->
                            <div class="brand-item">
                                <a href="#">
                                    <img src="img/brand/1.png" alt="">
                                </a>
                            </div>
                            <!-- single brand end -->

                            <!-- single brand start -->
                            <div class="brand-item">
                                <a href="#">
                                    <img src="img/brand/2.png" alt="">
                                </a>
                            </div>
                            <!-- single brand end -->

                            <!-- single brand start -->
                            <div class="brand-item">
                                <a href="#">
                                    <img src="img/brand/3.png" alt="">
                                </a>
                            </div>
                            <!-- single brand end -->

                            <!-- single brand start -->
                            <div class="brand-item">
                                <a href="#">
                                    <img src="img/brand/4.png" alt="">
                                </a>
                            </div>
                            <!-- single brand end -->

                            <!-- single brand start -->
                            <div class="brand-item">
                                <a href="#">
                                    <img src="img/brand/5.png" alt="">
                                </a>
                            </div>
                            <!-- single brand end -->

                            <!-- single brand start -->
                            <div class="brand-item">
                                <a href="#">
                                    <img src="img/brand/6.png" alt="">
                                </a>
                            </div>
                            <!-- single brand end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- brand logo area end -->
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

<style type="text/css">
.widget-title {
	color:#222222;
}
.black-bg {
	background-color:#f5f5f5;
}
</style>

</html>