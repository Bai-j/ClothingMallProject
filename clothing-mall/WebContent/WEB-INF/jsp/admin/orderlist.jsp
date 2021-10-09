<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<jsp:include page="topAndLeft.jsp"/>
<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
<h3>订单管理</h3>
<div class="table-responsive">
	<table class="table table-bordered table-sm table-striped">
		<thead>
			<tr>
				<th>订单编号</th>
				<th>用户名称</th>
				<th>商品名称</th>
				<th>下单数量</th>
				<th>订单总价</th>
				<th>订单备注</th>
				<th>收货信息</th>
				<th>下单时间</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="o">
				<tr>
					<th>${o.gsize}</th>
					<th>${o.gcategory}</th>
					<th>${o.gname}</th>
					<th>${o.gnum}</th>
					<th>${o.gprice}</th>
					<th>${o.gdescription}</th>
					<th>${o.gimg}</th>
					<th><fmt:formatDate value="${o.gupTime}" pattern="yyyy-MM-dd HH:mm:ss"/></th>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div align="center">
	<p style="color: CornflowerBlue">
		<a
			href="toUserList.do?pno=${page.navigateFirstPage}">首页</a>&nbsp;
		<a
			href="toUserList.do?pno=${page.hasPreviousPage==true?page.prePage:page.navigateFirstPage}">上页</a>&nbsp;
		<a
			href="toUserList.do?pno=${page.hasNextPage==true?page.nextPage:page.navigateLastPage}">下页</a>&nbsp;
		<a
			href="toUserList.do?pno=${page.navigateLastPage}">末页</a>&nbsp;
		&nbsp;当前页${page.size}条数据，共${page.total}条数据，当前第${page.pageNum}页/共${page.pages}页
	</p>
	<p>
		<a href="exportOrderExcel.do">订单列表导出</a>
	</p>
	</div>
</div>
</main>
</div>
</div>

</body>
</html>