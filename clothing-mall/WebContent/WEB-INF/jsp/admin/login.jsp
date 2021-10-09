<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>登录页面</title>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="shortcut icon" href="icon/favicon.ico" />
<link type="text/css" rel="stylesheet" href="css/styleLogin.css" />
<script type="text/javascript">
	$(function() {
		//用户提交表单时
		$("#lg").click(function() {
			//提交表单
			$("#form").submit(function() {
				if (checkName() && checkPwd()) {
					return true;
				} else {
					return false;
				}
			});
		});
		//用户离开焦点时 
		$("#aname").blur(checkName);
		$("#apassword").blur(checkPwd);
	});

	//验证用户名
	function checkName() {
		//1、获取文本框的值
		var name = $("#aname").val();
		//2、编写验证规则
		var reg = /^\w{3,8}$/;
		var flag = reg.test(name);
		if (flag) {
			//去边框-清空提示信息 
			$("#aname").css("border", "");
			$("#nmsg").html("");
			return true;
		} else {
			//加边框-给提示信息 
			$("#aname").css("border", "1px solid blue");
			$("#nmsg").html("用户名不能为空且由3-8位数字字母下划线组成!").css("color", "blue");
			//获取焦点
			$("#aname").focus();
			return false;
		}
		;
		//3.作出对应响应信息(return即为响应)
	}

	//验证密码
	function checkPwd() {
		//1、获取文本框的值
		var pwd = $("#apassword").val();
		//2、编写验证规则
		var reg = /^\w{6,8}$/;
		var flag = reg.test(pwd);
		if (flag) {
			//去边框-清空提示信息
			$("#apassword").css("border", "");
			$("#pmsg").html("");
			return true;
		} else {
			//加红色边框-给提示信息 
			$("#apassword").css("border", "1px solid blue");
			$("#pmsg").html("密码不能为空且由6-8位数字字母下划线组成!").css("color", "blue");
			//获取焦点
			$("#apassword").focus();
			return false;
		}
		;
		//3.作出对应响应信息(return即为响应)
	}
</script>
<style>
body {
	background: url(img/banner/banner10.jpg) no-repeat center;
	background-size: cover;
}
</style>
</head>
<body>
    <div class="outer-wrap">
        <div class="div_login">
            <form action="doAdminLogin.do" method="post" id="form">
                <table class="tab_login">
                    <tr>
                        <td class="td_text">用户名：</td>
                        <td>
                            <input type="text" name="aname" id="aname"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_text">密码：</td>
                        <td>
                            <input type="password" name="apassword" id="apassword"/>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input type="submit" value="登录" id="lg"/>
                        </td>
                    </tr>
                </table>
            </form>
            <div align="center">
                <p style="color: Blue">${msg}</p>
                <p id="nmsg"></p>
                <p id="pmsg"></p>
            </div>
        </div>
    </div>
</body>
</html>