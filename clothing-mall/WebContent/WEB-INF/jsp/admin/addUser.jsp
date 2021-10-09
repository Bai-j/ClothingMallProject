<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<jsp:include page="topAndLeft.jsp"/>
<main ustatus="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
<h3>用户管理</h3>
<div class="table-responsive">
	<form action="addUser.do" method="post" style="align: center">
		<table class="table table-bordered  table-hover table-striped">
			<tr style="background-color: rgba(100, 149, 237, 0.3)">
				<th colspan="2"><h5 style="text-align: center">增加用户</h5></th>
			</tr>
			<tr>
				<td class="info">昵称<span style="color: blue">(*)</span><span
					style="color: blue" id="nmsg"></span></td>
				<td><input type="text" name="uname" id="uname" value="" />
			</tr>
			<tr>
				<td class="info">密码<span style="color: blue">(*)</span><span
					style="color: blue" id="pmsg"></span></td>
				<td><input type="password" name="upassword" id="upassword" value="" /></td>
			</tr>
			<tr>
				<td class="info">邮箱<span style="color: blue">(*)</span><span
					style="color: blue" id="emsg"></span></td>
				<td><input type="text" name="uemail" id="uemail" value="" /></td>
			</tr>
			<tr>
				<td class="info">电话<span style="color: blue">(*)</span><span
					style="color: blue" id="phmsg"></span></td>
				<td><input type="text" name="uphone" id="uphone" value="" /></td>
			</tr>
			<tr>
				<td class="info">状态<span style="color: blue">(*)</span><span
					style="color: blue" id="smsg"></span></td>
				<td><input type="text" name="ustatus" id="ustatus" value="" /></td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" id="sub" value="提交"
					class="btn btn-primary pull-right btn-sm" /> <input type="button"
					id="but" value="返回" class="btn btn-primary pull-right btn-sm" /></th>
			</tr>
		</table>
	</form>
</div>
</main>
</div>
</div>

<script type="text/javascript">
$(function(){
	$("#but").click(function(){ //返回 
		//history.go(-1);
		history.back();
	});
	
	$("#sub").click(function(){ //验证 
		return checkUname() && checkPassword() && checkUphone() && checkUemail() && checkUstatus();
	});
	//离开焦点时 
	$("#uname").blur(checkUname);
	$("#upassword").blur(checkPassword);
	$("#uphone").blur(checkUphone);
	$("#uemail").blur(checkUemail);
	$("#ustatus").blur(checkUstatus);
});

//验证用户名
function checkUname() {
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
function checkPassword() {
	//1、获取文本框的值
	var pwd = $("#upassword").val();
	//2、编写验证规则
	var reg = /^\w{6,8}$/;
	var flag = reg.test(pwd);
	if (flag) {
		//去边框-清空提示信息
		$("#upassword").css("border", "");
		$("#pmsg").html("");
		return true;
	} else {
		//加红色边框-给提示信息 
		$("#upassword").css("border", "1px solid blue");
		$("#pmsg").html("密码不能为空且由6-8位数字字母下划线组成!").css("color", "blue");
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

//验证状态
function checkUstatus(){
	//1、获取文本框的值
	var ustatus=$("#ustatus").val();
	//2、根据值做判断
	if(ustatus.length==0){ //长度为0表示为空
		//给其提示 
		$("#smsg").html("状态不能为空");
		return false;
	}else if(ustatus!='Y' && ustatus!='N'){
		//给其提示 
		$("#smsg").html("状态只能为Y（激活）或N（未激活）");
		return false;
	}
	//3、返回true或者false
	return true;
}
</script>

</body>
</html>