<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<jsp:include page="topAndLeft.jsp"/>
<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
<h3>商品管理</h3>
<div class="table-responsive">
	<table class="table table-bordered  table-hover table-striped">
		<tr style="background-color: rgba(100, 149, 237, 0.3)">
			<th colspan="2"><h5 style="text-align: center">商品详情</h5></th>
		</tr>
		<tr>
			<td class="info">图片</td>
			<td><img src="${c.gimg }" alt="product" style="height: 15vw"></td>
		</tr>
		<tr>
			<td class="info">名称</td>
			<td>${c.gname}</td>
		</tr>
		<tr>
			<td class="info">价格</td>
			<td>${c.gprice}</td>
		</tr>
		<tr>
			<td class="info">库存</td>
			<td>${c.gnum}</td>
		</tr>
		<tr>
			<td class="info">类别</td>
			<td>${c.gcategory}</td>
		</tr>
		<tr>
			<td class="info">描述</td>
			<td>${c.gdescription}</td>
		</tr>
		<tr>
			<td class="info">材质</td>
			<td>${c.gmaterial}</td>
		</tr>
		<tr>
			<td class="info">尺码</td>
			<td>${c.gsize}</td>
		</tr>
		<tr>
			<td class="info">颜色</td>
			<td>${c.gcolor}</td>
		</tr>
		<tr>
			<td class="info">上架时间</td>
			<td><fmt:formatDate value="${c.gupTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
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