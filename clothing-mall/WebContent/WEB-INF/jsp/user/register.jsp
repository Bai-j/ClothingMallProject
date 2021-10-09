<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <!--  header start -->
        <div class="-header d-none d-lg-block">

            <!-- header middle area start -->
            <div class="header-main-area sticky">
                <div class="container">
                    <div class="row align-items-center position-relative">

                        <!-- start logo area -->
                        <div class="col-lg-3">
                            <div class="logo">
                                <a href="index.html">
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
                                    <li class="breadcrumb-item active" aria-current="page">注册</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb area end -->

        <!-- login register wrapper start -->
        <div class="main">
        <div class="login-register-wrapper section-padding">
            <div class="container">
                <div class="member-area-from-wrap">
                    <div class="row">
                        <!-- Register Content Start -->
                        <div class="col-lg-6">
                            <div class="login-reg-form-wrap sign-up-form">
                                <h4>注册</h4>
                                <form action="doUserRegister.do" method="post" id="form">
                                    <div class="single-input-item">
                                        <input type="text" name="uname" id="uname" placeholder="用户名" required />
                                    </div>
                                    <div class="single-input-item">
                                        <input type="text" name="uemail" id="uemail" placeholder="邮箱" required />
                                    </div>
                                    <div class="single-input-item">
                                        <input type="text" name="uphone" id="uphone" placeholder="电话" required />
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="single-input-item">
                                                <input type="password" name="upassword" id="upassword" placeholder="密码" required />
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="single-input-item">
                                                <input type="password" name="" id="upwd" placeholder="确认密码" required onkeyup="checkPwd()"><span id="tishi"></span></input>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-input-item">
                                        <button class="btn btn-sqr" type="submit" id="re">注册</button>
                                    </div>
                                </form>
                                <div align="center">
                                    <p style="color: Blue">${msg}</p>
                                    <p id="nmsg"></p>
                                    <p id="pamsg"></p>
                                    <p id="phmsg"></p>
                                    <p id="emsg"></p>
                                </div>
                            </div>
                        </div>
                        <!-- Register Content End -->
                    </div>
                </div>
            </div>
        </div>
        </div>
        <!-- login register wrapper end -->
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
.main {
	background: url(img/background/6.jpg) no-repeat center;
	background-size: cover;
}
.container {
    width: 100%;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: 1px; 
    margin-left: auto;
}
.widget-title {
	color:#222222;
}
.black-bg {
	background-color:#f5f5f5;
}
</style>

<script type="text/javascript">
	function checkPwd() {
		var password = document.getElementById("upassword").value;
		var repassword = document.getElementById("upwd").value;

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
				if (checkName() && checkUpassword() && checkUphone() && checkUemail()){
					return true;
				} else {
					return false;
				}
			});
		});
		//用户离开焦点时 
		$("#uname").blur(checkName);
		$("#upassword").blur(checkUpassword);
		$("#uphone").blur(checkUphone);
		$("#uemail").blur(checkUemail);
	});

	//验证用户名
	function checkName() {
		//1、获取文本框的值
		var name = $("#uname").val();
		//2、编写验证规则
		var reg = /^\w{3,8}$/;
		var flag = reg.test(name);
		if (flag) {
			//去边框-清空提示信息 
			$("#uname").css("border", "");
			$("#nmsg").html("");
			return true;
		} else {
			//加边框-给提示信息 
			$("#uname").css("border", "1px solid blue");
			$("#nmsg").html("用户名不能为空且由3-8位数字字母下划线组成!").css("color", "blue");
			//获取焦点
			$("#uname").focus();
			return false;
		}
		;
		//3.作出对应响应信息(return即为响应)
	}

	//验证密码
	function checkUpassword() {
		//1、获取文本框的值
		var pwd = $("#upassword").val();
		//2、编写验证规则
		var reg = /^\w{6,8}$/;
		var flag = reg.test(pwd);
		if (flag) {
			//去边框-清空提示信息
			$("#upassword").css("border", "");
			$("#pamsg").html("");
			return true;
		} else {
			//加红色边框-给提示信息 
			$("#upassword").css("border", "1px solid blue");
			$("#pamsg").html("密码不能为空且由6-8位数字字母下划线组成!").css("color", "blue");
			//获取焦点
			$("#upassword").focus();
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
	
	//验证邮箱
	function checkUemail() {
		//1、获取文本框的值
		var uemail = $("#uemail").val();
		//2、编写验证规则
		var reg = /^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/;
		var flag = reg.test(uemail);
		if (flag) {
			//去边框-清空提示信息
			$("#uemail").css("border", "");
			$("#emsg").html("");
			return true;
		} else {
			//加红色边框-给提示信息 
			$("#uemail").css("border", "1px solid blue");
			$("#emsg").html("邮箱不能为空且邮箱格式需规范!").css("color", "blue");
			//获取焦点
			$("#uemail").focus();
			return false;
		}
		;
		//3.作出对应响应信息(return即为响应)
	}
</script>

</html>