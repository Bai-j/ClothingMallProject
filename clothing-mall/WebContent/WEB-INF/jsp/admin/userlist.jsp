<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<jsp:include page="topAndLeft.jsp"/>
<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
<h3>用户管理</h3>
<div class="table-responsive">
	<form action="toUserList.do" method="post">
		<p style="color: CornflowerBlue">
			姓名：<input type="text" name="uname" value="${uname==null?'':uname}" />&nbsp;
			邮箱：<input type="text" name="uemail" value="${uemail==null?'':uemail}" />&nbsp;
			<input type="submit" value="搜索" class="btn btn-primary btn-sm" />
		</p>
	</form>
	<table class="table table-bordered table-sm table-striped">
		<thead>
			<tr>
				<th>编号</th>
				<th>昵称</th>
				<th>密码</th>
				<th>邮箱</th>
				<th>电话</th>
				<th>状态</th>
				<th>激活码</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="u">
				<tr>
					<th>${u.uid}</th>
					<th>${u.uname}</th>
					<th>${u.upassword}</th>
					<th>${u.uemail}</th>
					<th>${u.uphone}</th>
					<th>${u.ustatus=="Y"?'激活':'未激活'}</th>
					<th>${u.ucode}</th>
					<th><a href="toUserDetail.do?uid=${u.uid}">详情</a> 
					    <a href="toUpdateUser.do?uid=${u.uid}">修改</a> 
					    <a href="toDeleteUser.do?uid=${u.uid}">删除</a>
					</th>
				</tr>
			</c:forEach>
			<tr>
				<th colspan="8" style="text-align: center">
				    <input type="button" id="bt" value="新增用户" onclick="location.href='toAddUser.do'" class="btn btn-primary" /></th>
			</tr>
		</tbody>
	</table>
	<div align="center">
	<p style="color: CornflowerBlue">
		<a
			href="toUserList.do?pno=${page.navigateFirstPage}&&uname=${uname}&&uemail=${uemail}">首页</a>&nbsp;
		<a
			href="toUserList.do?pno=${page.hasPreviousPage==true?page.prePage:page.navigateFirstPage}&&uname=${uname}&&uemail=${uemail}">上页</a>&nbsp;
		<a
			href="toUserList.do?pno=${page.hasNextPage==true?page.nextPage:page.navigateLastPage}&&uname=${uname}&&uemail=${uemail}">下页</a>&nbsp;
		<a
			href="toUserList.do?pno=${page.navigateLastPage}&&uname=${uname}&&uemail=${uemail}">末页</a>&nbsp;
		&nbsp;当前页${page.size}条数据，共${page.total}条数据，当前第${page.pageNum}页/共${page.pages}页
	</p>
	<p>
		<a href="exportUserExcel.do">用户列表导出</a>
	</p>
	</div>
</div>
</main>
</div>
</div>

</body>
</html>