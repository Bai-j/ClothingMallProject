<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.ssm.entity.Clothes"%>
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
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon -->


<!-- CSS
	============================================ -->
<!-- google fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,300i,400,400i,600,600i,700,700i%7CPoppins:300,300i,400,400i,500,500i,600,700,800,900&display=swap"
	rel="stylesheet">
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
	<header class="header-area header-wide"> <!-- main header start -->
	<div class="main-header d-none d-lg-block">

		<!-- header middle area start -->
		<div class="header-main-area sticky">
			<div class="container">
				<div class="row align-items-center position-relative">

					<!-- start logo area -->
					<div class="col-lg-3">
						<div class="logo">
							<a href="toUserIndex.do"> <img src="img/logo/logo1.png"
								alt="Brand Logo">
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
									<li><a href="toUserIndex.do">首页 </a></li>
									<li><a href="toShop.do">购物 </a></li>
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
						<div
							class="header-right d-flex align-items-center justify-content-end">
							<div class="header-configure-area">
								<ul class="nav justify-content-end">
									<li class="header-search-container mr-0">
										<button class="search-trigger d-block">
											<i class="pe-7s-search"></i>
										</button>
										<form class="header-search-box d-none animated jackInTheBox">
											<input type="text" placeholder="Search entire store hire"
												class="header-search-field">
											<button class="header-search-btn">
												<i class="pe-7s-search"></i>
											</button>
										</form>
									</li>
									<li class="user-hover"><a href="#"> <i
											class="pe-7s-user"></i>
									</a>
										<ul class="dropdown-list">
											<li><a href="toUserLogin.do">登录</a></li>
											<li><a href="toUserRegister.do">注册</a></li>
											<li><a href="toUserAccount.do">我的信息</a></li>
											<li><a href="doUserLogout.do">退出</a></li>
										</ul></li>
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




	<main> <!-- breadcrumb area start -->
	<div class="breadcrumb-area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="breadcrumb-wrap">
						<nav aria-label="breadcrumb">
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="toUserIndex.do"><i
									class="fa fa-home"></i></a></li>
							<li class="breadcrumb-item active" aria-current="page">购物</li>
						</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- breadcrumb area end --> 
	
	<!-- page main wrapper start -->
	<div class="main">
	<div class="shop-main-wrapper section-padding">
		<div class="container">
			<div class="row">
				<!-- sidebar area start -->
				<div class="col-lg-3 order-2 order-lg-1">
					<aside class="sidebar-wrapper"> <!-- single sidebar start -->
					<div class="sidebar-single">
						<h4 class="sidebar-title">商品种类</h4>
						<div class="sidebar-body">
							<ul class="shop-categories">
								<li><a href="toShop2.do?gcategory=1">女装 </a></li>
								<li><a href="toShop2.do?gcategory=2">男装 </a></li>
								<li><a href="toShop2.do?gcategory=3">饰品</a></li>
								<li><a href="toShop2.do?gcategory=4">鞋子 </a></li>
							</ul>
						</div>
					</div>
					<!-- single sidebar end --> 
					
					<!-- single sidebar start -->
					<div class="sidebar-banner">
						<div class="img-container">
							<a href="#"> <img src="img/banner/banner14.jpg" alt="">
							</a>
						</div>
					</div>
					<!-- single sidebar end --> </aside>
				</div>
				<!-- sidebar area end -->

				<!-- shop main wrapper start -->
				<div class="col-lg-9 order-1 order-lg-2">
					<div class="shop-product-wrapper">
						<!-- shop product top wrap start -->
						<div class="shop-top-bar">
							<div class="row align-items-center">
								<div class="col-lg-7 col-md-6 order-2 order-md-1">
									<div class="top-bar-left">
										<div class="product-view-mode">
											<a href="#" data-target="grid-view" data-toggle="tooltip"
												title="Grid View"><i class="fa fa-th"></i></a> <a
												class="active" href="#" data-target="list-view"
												data-toggle="tooltip" title="List View"><i
												class="fa fa-list"></i></a>
										</div>
									</div>
								</div>
								<div class="col-lg-5 col-md-6 order-1 order-md-2">
									<div class="top-bar-right">
										<div class="product-short">
											<form action="toShop.do" method="post">
												<input type="text" name="gdescription"
													value="${gdescription==null?'':gdescription}" class="nice-select"
													name="sortby" placeholder="关键信息" />&nbsp; <input
													type="submit" value="搜索" class="btn btn-primary btn-sm" />
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- shop product top wrap start -->

						<!-- product item list wrapper start -->
						<div class="shop-product-wrap list-view row mbn-30">
							<!-- product single item start -->
							<%
								ArrayList<Clothes> clothes = (ArrayList<Clothes>) request.getAttribute("clotheslist");
								for (int i = 0; i < clothes.size() && clothes != null; i++) {
									Clothes cloth = clothes.get(i);
							%>
							<div class="col-md-4 col-sm-6">
								<!-- product grid start -->
								<div class="product-item">
									<figure class="product-thumb"> <a
										href="toDetails.do?gid=<%=cloth.getGid()%>"> <img class="pri-img"
										src="<%=cloth.getGimg()%>" alt="product" style="height: 15vw">
										<img class="sec-img" src="<%=cloth.getGimg()%>" alt="product"
										style="height: 15vw">
									</a>
									<div class="button-group">
										<a href="toCollect.do?uid=${sessionScope.user.uid }&gid=<%=cloth.getGid() %>" data-toggle="tooltip"
											title="Add to Wishlist"><i class="pe-7s-like"></i></a> <a
											href="toCart.do?uid=${sessionScope.user.uid }&gid=<%=cloth.getGid() %>" data-toggle="tooltip" title="加入购物车"><i
											class="pe-7s-cart"></i></a> <a href="toQuickView.do?gid=<%=cloth.getGid() %>" data-toggle="modal"
											data-target="#quick_view"><span data-toggle="tooltip"
											title="快速查看"><i class="pe-7s-look"></i></span></a>
									</div>
									</figure>
									<div class="product-caption text-center">
										<h6 class="product-name">
											<a href="toDetails.do?gid=<%=cloth.getGid()%>"><%=cloth.getGname()%></a>
										</h6>
										<div class="price-box">
											<span class="price-regular"><%=cloth.getGprice()%>元</span>
										</div>
									</div>
								</div>
								<!-- product grid end -->

								<!-- product list item end -->
								<div class="product-list-item">
									<figure class="product-thumb"> <a
										href="toDetails.do?gid=<%=cloth.getGid()%>"> <img class="pri-img"
										src="<%=cloth.getGimg()%>" alt="product" style="height: 15vw">
										<img class="sec-img" src="<%=cloth.getGimg()%>" alt="product"
										style="height: 15vw">
									</a> </figure>
									<div class="product-content-list">
										<h5 class="product-name">
											<a href="toDetails.do?gid=<%=cloth.getGid()%>"><%=cloth.getGname()%></a>
										</h5>
										<div class="price-box">
											<span class="price-regular"><%=cloth.getGprice()%>元</span>
										</div>
										<p><%=cloth.getGmaterial()%>
										</p>
										<div class="button-group">
											<a href="toCollect.do?uid=${sessionScope.user.uid }&gid=<%=cloth.getGid() %>" data-toggle="tooltip"
												title="加入收藏"><i class="pe-7s-like"></i></a> <a
												href="toCart.do?uid=${sessionScope.user.uid }&gid=<%=cloth.getGid() %>" data-toggle="tooltip"
												title="加入购物车"><i class="pe-7s-cart"></i></a> <a
												href="#" data-toggle="modal" data-target="#quick_view"><span
												data-toggle="tooltip" title="快速查看" data-cloth="<%=cloth.getGimg()%>"><i
													class="pe-7s-look"></i></span></a>
										</div>
									</div>
								</div>
								<!-- product list item end -->
							</div>
							<%
								}
							%>
						</div>
						<!-- product item list wrapper end -->

						<!-- start pagination area -->
						<div class="paginatoin-area text-center">
							<ul class="pagination-box">
								<li><a
									href="toShop.do?pno=${page.navigateFirstPage}&&gcategory=${gcategory}&&gdescription=${gdescription}">首页</a></li>
								<li><a class="previous"
									href="toShop.do?pno=${page.hasPreviousPage==true?page.prePage:page.navigateFirstPage}&&gcategory=${gcategory}&&gdescription=${gdescription}"><i
										class="pe-7s-angle-left"></i></a></li>
								<li><a class="next"
									href="toShop.do?pno=${page.hasNextPage==true?page.nextPage:page.navigateLastPage}&&gcategory=${gcategory}&&gdescription=${gdescription}"><i
										class="pe-7s-angle-right"></i></a></li>
								<li><a
									href="toShop.do?pno=${page.navigateLastPage}&&gcategory=${gcategory}&&gdescription=${gdescription}">末页</a></li>
								<li>当前页${page.size}条数据，共${page.total}条数据，当前第${page.pageNum}页/共${page.pages}页</li>
							</ul>
						</div>
						<!-- end pagination area -->
					</div>
				</div>
				<!-- shop main wrapper end -->
			</div>
		</div>
	</div>
	</div>
	<!-- page main wrapper end --> 
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
						Copyright <a href="http://www.bootstrapmb.com/"
							title="bootstrapmb">君悦衣坊</a>. All Rights Reserved
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
	<script
		src="http://ditu.google.cn/maps/api/js?key=AIzaSyCfmCVTjRI007pC1Yk2o2d_EhgkjTsFVN8"></script>
	<!-- google map active js -->
	<script src="js/plugins/google-map.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>
</body>

<style type="text/css">
.main {
	background: url(img/background/1.jpg) no-repeat center;
	background-size: cover;
}
.widget-title {
	color:#222222;
}
.black-bg {
	background-color:#f5f5f5;
}
</style>

</html>
