<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<jsp:include page="topAndLeft.jsp"/>
<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
<h3>商品管理</h3>
<div class="table-responsive">
	<form action="updateClothes.do?gid=${c.gid }" method="post">
		<table class="table table-bordered  table-hover table-striped">
			<tr style="background-color: rgba(100, 149, 237, 0.3)">
				<th colspan="2"><h5 style="text-align: center">修改商品</h5></th>
			</tr>
			<tr>
				<td class="info">图片</td>
				<td><img src="${c.gimg }" alt="product" style="height: 15vw">
				    <input type="text" name="gimg" id="gimg"
					value="${c.gimg}"/></td>
			</tr>
			<tr>
				<td class="info">名称<span style="color: blue">(*)</span><span
					style="color: blue" id="nmsg"></span></td>
				<td><input type="text" name="gname" id="gname"
					value="${c.gname}" /></td>
			</tr>
			<tr>
				<td class="info">价格<span style="color: blue">(*)</span><span
					style="color: blue" id="pmsg"></span></td>
				<td><input type="text" name="gprice" id="gprice"
					value="${c.gprice}" /></td>
			</tr>
			<tr>
				<td class="info">库存<span style="color: blue">(*)</span><span
					style="color: blue" id="kmsg"></span></td>
				<td><input type="text" name="gnum" id="gnum"
					value="${c.gnum}" /></td>
			</tr>
			<tr>
				<td class="info">类别<span style="color: blue">(*)</span><span
					style="color: blue" id="cmsg"></span></td>
				<td><input type="text" name="gcategory" value="${c.gcategory}" /></td>
			</tr>
			<tr>
				<td class="info">描述<span style="color: blue">(*)</span><span
					style="color: blue" id="dmsg"></span></td>
				<td><input type="text" name="gdescription" value="${c.gdescription}" /></td>
			</tr>
			<tr>
				<td class="info">材质<span style="color: blue">(*)</span><span
					style="color: blue" id="mmsg"></span></td>
				<td><input type="text" name="gmaterial" id="gmaterial"
					value="${c.gmaterial}"/>
			</tr>
			<tr>
				<td class="info">尺码<span style="color: blue">(*)</span><span
					style="color: blue" id="smsg"></span></td>
				<td><input type="text" name="gsize" id="gsize"
					value="${c.gsize}" />
			</tr>
			<tr>
				<td class="info">颜色<span style="color: blue">(*)</span><span
					style="color: blue" id="comsg"></span></td>
				<td><input type="text" name="gcolor" id="gcolor"
					value="${c.gcolor}" />
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
		return checkGname() && checkGprice() && checkGnum() && checkGcategory() && checkGdescription()
		       && checkGmaterial() && checkGsize() && checkGcolor();
	});
	//离开焦点时 
	$("#gname").blur(checkGname);
	$("#gprice").blur(checkGprice);
	$("#gcategory").blur(checkGcategory);
	$("#gnum").blur(checkGnum);
	$("#gdescription").blur(checkGdescription);
	$("#gmaterial").blur(checkGmaterial);
	$("#gsize").blur(checkGsize);
	$("#gcolor").blur(checkGcolor);
});

//验证商品名称
function checkGname() {
	//1、获取文本框的值
	var gname=$("#gname").val();
	//2、根据值做判断
	if(gname.length==0){ //长度为0表示为空
		//给其提示 
		$("#nmsg").html("*商品名称不能为空");
		return false;
	}
	//3、返回true或者false
	return true;
}

//验证商品价格
function checkGprice() {
	//1、获取文本框的值
	var gprice=$("#gprice").val();
	//2、根据值做判断
	if(gprice.length==0){ //长度为0表示为空
		//给其提示 
		$("#pmsg").html("*商品价格不能为空");
		return false;
	}
	//3、返回true或者false
	return true;
}

//验证库存
function checkGnum() {
	//1、获取文本框的值
	var gnum=$("#gnum").val();
	//2、根据值做判断
	if(gnum.length==0){ //长度为0表示为空
		//给其提示 
		$("#kmsg").html("*库存不能为空");
		return false;
	}
	//3、返回true或者false
	return true;
}

//验证商品种类
function checkGcategory() {
	//1、获取文本框的值
	var gcategory=$("#gcategory").val();
	//2、根据值做判断
	if(gcategory.length==0){ //长度为0表示为空
		//给其提示 
		$("#cmsg").html("*商品种类不能为空");
		return false;
	}else if(gcategory!=1 && gcategory!=2 && gcategory!=3 && gcategory!=4 ){
		//给其提示 
		$("#cmsg").html("*商品种类只能为1（女装）、2（男装）、3（饰品）、4（鞋子）");
		return false;
	}
	//3、返回true或者false
	return true;
}

//验证商品描述
function checkGdescription(){
	//1、获取文本框的值
	var gdescription=$("#gdescription").val();
	//2、根据值做判断
	if(gdescription.length==0){ //长度为0表示为空
		//给其提示 
		$("#dmsg").html("*商品描述不能为空");
		return false;
	}
	//3、返回true或者false
	return true;
}

//验证商品材质
function checkGmaterial(){
	//1、获取文本框的值
	var gmaterial=$("#gmaterial").val();
	//2、根据值做判断
	if(gmaterial.length==0){ //长度为0表示为空
		//给其提示 
		$("#mmsg").html("*商品材质不能为空");
		return false;
	}
	//3、返回true或者false
	return true;
}

//验证商品尺码
function checkGsize(){
	//1、获取文本框的值
	var gsize=$("#gsize").val();
	//2、根据值做判断
	if(gsize.length==0){ //长度为0表示为空
		//给其提示 
		$("#smsg").html("*商品尺码不能为空");
		return false;
	}
	//3、返回true或者false
	return true;
}

//验证商品颜色
function checkGcolor(){
	//1、获取文本框的值
	var gcolor=$("#gcolor").val();
	//2、根据值做判断
	if(gcolor.length==0){ //长度为0表示为空
		//给其提示 
		$("#comsg").html("*商品颜色不能为空");
		return false;
	}
	//3、返回true或者false
	return true;
}

</script>
</body>
</html>