<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<jsp:include page="topAndLeft.jsp"/>
<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
<h3>个人信息</h3>
<div class="table-responsive">
	<form action="updateAdmin.do" method="post">
		<table class="table table-bordered  table-hover table-striped">
			<tr>
				<td class="info">昵称</td>
				<td><input type="text" name="aname" id="aname"
					value="${a.aname}" readonly="readonly" />
			</tr>
			<tr>
				<td class="info">密码</td>
				<td><input type="text" name="apassword" id="apassword"
					value="${a.apassword}" /></td>
			</tr>
			<tr>
				<td class="info">邮箱</td>
				<td><input type="text" name="aemail" id="aemail"
					value="${a.aemail}" /></td>
			</tr>
			<tr>
				<td class="info">电话</td>
				<td><input type="text" name="aphone" id="aphone"
					value="${a.aphone}" /></td>
			</tr>
			<tr>
				<td class="info">状态</td>
				<td><input type="text" name="astatas" value="${a.astatus}" /></td>
			</tr>
			<tr>
				<td class="info">激活码</td>
				<td><input type="text" name="acode" value="${a.acode}" /></td>
			</tr>
			<tr>
				<th colspan="2"><input type="sabmit" id="sab" value="保存修改"
					class="btn btn-primary pall-right btn-sm" /> <input type="batton"
					id="but" value="返回" class="btn btn-primary pall-right btn-sm" /></th>
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
});
</script>
</body>
</html>