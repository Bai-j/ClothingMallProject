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
                                    <li class="breadcrumb-item active" aria-current="page">个人中心</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb area end -->

        <!-- my account wrapper start -->
        <div class="my-account-wrapper section-padding">
            <div class="container">
                <div class="section-bg-color">
                    <div class="row">
                        <div class="col-lg-12">
                            <!-- My Account Page Start -->
                            <div class="myaccount-page-wrapper">
                                <!-- My Account Tab Menu Start -->
                                <div class="row">
                                    <div class="col-lg-3 col-md-4">
                                        <div class="myaccount-tab-menu nav" role="tablist">
                                            <a href="#dashboad" class="active" data-toggle="tab"><i class="fa fa-dashboard"></i>信息菜单</a>
                                            <a href="#orders" data-toggle="tab"><i class="fa fa-cart-arrow-down"></i>我的订单</a>
                                            <a href="#account-info" data-toggle="tab"><i class="fa fa-user"></i>个人信息</a>
                                            <a href="doUserLogout.do"><i class="fa fa-sign-out"></i> 退出</a>
                                        </div>
                                    </div>
                                    <!-- My Account Tab Menu End -->

                                    <!-- My Account Tab Content Start -->
                                    <div class="col-lg-9 col-md-8">
                                        <div class="tab-content" id="myaccountContent">
                                            <!-- Single Tab Content Start -->
                                            <div class="tab-pane fade show active" id="dashboad" role="tabpanel">
                                                <div class="myaccount-content">
                                                    <h5>信息菜单</h5>
                                                    <div class="welcome">
                                                        <p>欢迎您，<strong>${sessionScope.user.uname}!</strong><a href="doUserLogout.do" class="logout"> 退出</a></p>
                                                    </div>
                                                    <p class="mb-0">从这里，你可以快速查看你的订单及个人信息，并对个人信息进行修改，对订单进行评价。</p>
                                                    <div align="center">
                                                        <p style="color: Blue">${msg}</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Tab Content End -->

                                            <!-- Single Tab Content Start -->
                                            <div class="tab-pane fade" id="orders" role="tabpanel">
                                                <div class="myaccount-content">
                                                    <h5>订单</h5>
                                                    <div class="myaccount-table table-responsive text-center">
                                                        <table class="table table-bordered">
                                                            <thead class="thead-light">
                                                                <tr>
                                                                    <th>订单编号</th>
                                                                    <th>商品名称</th>
                                                                    <th>购买数量</th>
                                                                    <th>订单总额</th>
                                                                    <th>操作</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                              <c:forEach items="${orders }" var="o">
                                                                <tr>
                                                                    <td>${o.gdescription }</td>
                                                                    <td><a href="toDetails.do?uid=${sessionScope.user.uid }&gid=${o.gid }">${o.gname }</a></td>
                                                                    <td>${o.gnum }</td>
                                                                    <td>${o.gprice }<span>元</span></td>
                                                                    <td><a class="btn btn-cart2" href="toComment.do?uid=${sessionScope.user.uid }&gid=${o.gid }&gname=${o.gname }">评价</a></td>
                                                                </tr>
                                                              </c:forEach>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Single Tab Content End -->

                                            <!-- Single Tab Content Start -->
                                            <div class="tab-pane fade" id="account-info" role="tabpanel">
                                                <div class="myaccount-content">
                                                    <h5>个人信息</h5>
                                                    <div class="account-details-form">
													<form action="doUpdateUser.do" method="post" id="form">
													    <input type="hidden" name="uid" value="${sessionScope.user.uid }" />
														<div class="single-input-item">
															<label for="first-name" class="required">用户名</label> 
															<input type="text" id="first-name" placeholder="用户名" name="uname" value="${sessionScope.user.uname }"/>
														</div>
														<div class="single-input-item">
															<label for="uphone" class="required">电话</label> 
															<input type="text" id="uphone" placeholder="电话" name="uphone" value="${sessionScope.user.uphone }"/>
														</div>
														<fieldset>
															<legend>修改密码</legend>
															<div class="row">
																<div class="col-lg-6">
																	<div class="single-input-item">
																		<label for="newpwd" class="required">新密码</label> 
																		<input type="password" id="newpwd" placeholder="新密码" name="upassword"/>
																	</div>
																</div>
																<div class="col-lg-6">
																	<div class="single-input-item">
																		<label for="confirm-pwd" class="required">确认密码</label> 
																		<input type="password" id="confirm-pwd" placeholder="确认密码" onkeyup="checkPwd()"><span id="tishi"></span></input>
																	</div>
																</div>
															</div>
														</fieldset>
														<div class="single-input-item">
															<button class="btn btn-sqr" type="submit" id="re">保存修改</button>
														</div>
													</form>
													<div align="center">
                                                        <p id="nmsg"></p>
                                                        <p id="pamsg"></p>
                                                        <p id="phmsg"></p>
                                                    </div>
												</div>
                                                </div>
                                            </div> 
                                            <!-- Single Tab Content End -->
                                        </div>
                                    </div> 
                                    <!-- My Account Tab Content End -->
                                </div>
                            </div> 
                            <!-- My Account Page End -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- my account wrapper end -->
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

<script type="text/javascript">
	function checkPwd() {
		var password = document.getElementById("newpwd").value;
		var repassword = document.getElementById("confirm-pwd").value;

		if (password == repassword) {
			document.getElementById("tishi").innerHTML = "<br><font color='green'>两次密码输入一致</font>";
			document.getElementById("submit").disabled = false;

		} else {
			document.getElementById("tishi").innerHTML = "<br><font color='red'>两次输入密码不一致!</font>";
			document.getElementById("submit").disabled = true;
		}
	}
	
	$(function() {
		//用户提交表单时
		$("#re").click(function() {
			//提交表单
			$("#form").submit(function() {
				if (checkName() && checkUpassword() && checkUphone()){
					return true;
				} else {
					return false;
				}
			});
		});
		//用户离开焦点时 
		$("#first-name").blur(checkName);
		$("#newpwd").blur(checkUpassword);
		$("#uphone").blur(checkUphone);
	});

	//验证用户名
	function checkName() {
		//1、获取文本框的值
		var name = $("#first-name").val();
		//2、编写验证规则
		var reg = /^\w{3,8}$/;
		var flag = reg.test(name);
		if (flag) {
			//去边框-清空提示信息 
			$("#first-name").css("border", "");
			$("#nmsg").html("");
			return true;
		} else {
			//加边框-给提示信息 
			$("#first-name").css("border", "1px solid blue");
			$("#nmsg").html("用户名不能为空且由3-8位数字字母下划线组成!").css("color", "blue");
			//获取焦点
			$("#first-name").focus();
			return false;
		}
		;
		//3.作出对应响应信息(return即为响应)
	}

	//验证密码
	function checkUpassword() {
		//1、获取文本框的值
		var pwd = $("#newpwd").val();
		//2、编写验证规则
		var reg = /^\w{6,8}$/;
		var flag = reg.test(pwd);
		if (flag) {
			//去边框-清空提示信息
			$("#newpwd").css("border", "");
			$("#pamsg").html("");
			return true;
		} else {
			//加红色边框-给提示信息 
			$("#newpwd").css("border", "1px solid blue");
			$("#pamsg").html("密码不能为空且由6-8位数字字母下划线组成!").css("color", "blue");
			//获取焦点
			$("#newpwd").focus();
			return false;
		}
		;
		//3.作出对应响应信息(return即为响应)
	}
	
	//验证电话
	function checkUphone() {
		//1、获取文本框的值
		var uphone = $("#uphone").val();
		//2、编写验证规则
		var reg = /^1[0-9]{10}$/;
		var flag = reg.test(uphone);
		if (flag) {
			//去边框-清空提示信息
			$("#uphone").css("border", "");
			$("#phmsg").html("");
			return true;
		} else {
			//加红色边框-给提示信息 
			$("#uphone").css("border", "1px solid blue");
			$("#phmsg").html("电话不能为空且由1开头的11位数字组成!").css("color", "blue");
			//获取焦点
			$("#uphone").focus();
			return false;
		}
		;
		//3.作出对应响应信息(return即为响应)
	}
	
</script>

</html>
