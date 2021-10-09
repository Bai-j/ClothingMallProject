<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<jsp:include page="topAndLeft.jsp"/>
<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
<h3>商品管理</h3>
<div class="table-responsive">
	<form action="toClothesList.do" method="post">
		<p style="color: CornflowerBlue">
			商品：<input type="text" name="gdescription" value="${gdescription==null?'':gdescription}" />
			<input type="submit" value="搜索" class="btn btn-primary btn-sm" />
		</p>
	</form>
	<table class="table table-bordered table-sm table-striped">
		<thead>
			<tr>
				<th>编号</th>
				<th>图片</th>
				<th>名称</th>
				<th>价格</th>
				<th>库存</th>
				<th>类别</th>
				<th>描述</th>
				<th>材质</th>
				<th>尺码</th>
				<th>颜色</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="c">
				<tr>
					<th>${c.gid}</th>
					<th><img src="${c.gimg }" alt="product" style="height: 15vw;width:15vw"></th>
					<th>${c.gname}</th>
					<th>${c.gprice}</th>
					<th>${c.gnum}</th>
					<th>${c.gcategory}</th>
					<th>${c.gdescription}</th>
					<th>${c.gmaterial}</th>
					<th>${c.gsize}</th>
					<th>${c.gcolor}</th>
					<th><p><a href="toClothesDetail.do?gid=${c.gid}">详情</a></p>
					    <p><a href="toUpdateClothes.do?gid=${c.gid}">修改</a></p> 
					    <p><a href="toDeleteClothes.do?gid=${c.gid}">删除</a></p>
					</th>
				</tr>
			</c:forEach>
			<tr>
				<th colspan="13" style="text-align: center">
				    <input type="button" id="bt" value="新增商品" onclick="location.href='toAddClothes.do'" class="btn btn-primary" /></th>
			</tr>
		</tbody>
	</table>
	<div align="center">
	<p style="color: CornflowerBlue">
		<a
			href="toClothesList.do?pno=${page.navigateFirstPage}&&gdescription=${gdescription}">首页</a>&nbsp;
		<a
			href="toClothesList.do?pno=${page.hasPreviousPage==true?page.prePage:page.navigateFirstPage}&&gdescription=${gdescription}">上页</a>&nbsp;
		<a
			href="toClothesList.do?pno=${page.hasNextPage==true?page.nextPage:page.navigateLastPage}&&gdescription=${gdescription}">下页</a>&nbsp;
		<a
			href="toClothesList.do?pno=${page.navigateLastPage}&&gdescription=${gdescription}">末页</a>&nbsp;
		&nbsp;当前页${page.size}条数据，共${page.total}条数据，当前第${page.pageNum}页/共${page.pages}页
	</p>
	<p>
		<a href="exportClothesExcel.do">商品列表导出</a>
	</p>
	</div>
</div>
</main>
</div>
</div>

</body>
</html>