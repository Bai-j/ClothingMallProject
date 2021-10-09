<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<jsp:include page="topAndLeft.jsp"/>
<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
<h3>用户管理</h3>
<div class="table-responsive">
	<table class="table table-bordered  table-hover table-striped">
		<tr style="background-color: rgba(100, 149, 237, 0.3)">
			<th colspan="2"><h5 style="text-align: center">用户详情</h5></th>
		</tr>
		<tr>
			<td class="info">昵称</td>
			<td>${u.uname}</td>
		</tr>
		<tr>
			<td class="info">密码</td>
			<td>${u.upassword}</td>
		</tr>
		<tr>
			<td class="info">邮箱</td>
			<td>${u.uemail}</td>
		</tr>
		<tr>
			<td class="info">电话</td>
			<td>${u.uphone}</td>
		</tr>
		<tr>
			<td class="info">状态</td>
			<td>${u.ustatus}</td>
		</tr>
		<tr>
			<td class="info">激活码</td>
			<td>${u.ucode}</td>
		</tr>
		<tr>
			<th colspan="2"><input type="button" id="but" value="返回"
				class="btn btn-primary pull-right btn-sm" /></th>
		</tr>
	</table>
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