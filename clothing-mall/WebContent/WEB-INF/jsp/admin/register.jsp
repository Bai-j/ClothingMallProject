<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>注册页面</title>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="shortcut icon" href="icon/favicon.ico" />
<link type="text/css" rel="stylesheet" href="css/styleRegister.css" />
<style>
body {
	background: url(img/banner/banner10.jpg) no-repeat center;
	background-size: cover;
}
</style>
<script type="text/javascript">
	$(function() {
		//用户提交表单时
		$("#re").click(function() {
			//提交表单
			$("#form").submit(function() {
				if (checkName() && checkPwd() && checkaphone() && checkaemail()){
					return true;
				} else {
					return false;
				}
			});
		});
		//用户离开焦点时 
		$("#aname").blur(checkName);
		$("#apassword").blur(checkPwd);
		$("#aphone").blur(checkaphone);
		$("#aemail").blur(checkaemail);
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
	
	//验证电话
	function checkaphone() {
		//1、获取文本框的值
		var aphone = $("#aphone").val();
		//2、编写验证规则
		var reg = /^1[0-9]{10}$/;
		var flag = reg.test(aphone);
		if (flag) {
			//去边框-清空提示信息
			$("#aphone").css("border", "");
			$("#phmsg").html("");
			return true;
		} else {
			//加红色边框-给提示信息 
			$("#aphone").css("border", "1px solid blue");
			$("#phmsg").html("电话不能为空且由1开头的11位数字组成!").css("color", "blue");
			//获取焦点
			$("#aphone").focus();
			return false;
		}
		;
		//3.作出对应响应信息(return即为响应)
	}
	
	//验证邮箱
	function checkaemail() {
		//1、获取文本框的值
		var aemail = $("#aemail").val();
		//2、编写验证规则
		var reg = /^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$/;
		var flag = reg.test(aemail);
		if (flag) {
			//去边框-清空提示信息
			$("#aemail").css("border", "");
			$("#emsg").html("");
			return true;
		} else {
			//加红色边框-给提示信息 
			$("#aemail").css("border", "1px solid blue");
			$("#emsg").html("邮箱不能为空且邮箱格式需规范!").css("color", "blue");
			//获取焦点
			$("#aemail").focus();
			return false;
		}
		;
		//3.作出对应响应信息(return即为响应)
	}
	
</script>
</head>
<body>
    <div class="outer-wrap">
        <div class="div_login">
            <form action="doAdminRegister.do" method="post" id="form">
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
                        <td class="td_text">电话：</td>
                        <td>
                            <input type="text" name="aphone" id="aphone"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_text">邮箱：</td>
                        <td>
                            <input type="text" name="aemail" id="aemail"/>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input type="submit" value="注册" id="re"/>
                        </td>
                        <td>
                            <a href="toAdminLogin.do">登录</a>
                        </td>
                    </tr>
                </table>
            </form>
            <div align="center">
                <p id="nmsg"></p>
                <p id="pmsg"></p>
                <p id="phmsg"></p>
                <p id="emsg"></p>
            </div>
        </div>
    </div>
</body>
</html>