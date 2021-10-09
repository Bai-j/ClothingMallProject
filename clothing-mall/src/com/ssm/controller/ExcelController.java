package com.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.excel.EasyExcel;
import com.ssm.entity.Clothes;
import com.ssm.entity.User;
import com.ssm.service.ClothesService;
import com.ssm.service.CommentService;
import com.ssm.service.OrderService;
import com.ssm.service.UserService;

@Controller
public class ExcelController {
	@Autowired
	private UserService userService;
	
	@Autowired
	private ClothesService clothesService;
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private CommentService commentService;
	
	// 导出用户列表
	@RequestMapping("/exportUserExcel.do")
    public ModelAndView exportUser(HttpServletResponse response) {
		// 写数据-导出

		// 准备excel文件
		String filename = "D:/eclipseworkspace/clothing-mall/userlist.xls";
		// 准备数据
		List<User> list = userService.getUserList();

		// 写数据
		EasyExcel.write(filename, User.class).sheet("sheet1").doWrite(list);
		
		return new ModelAndView("redirect:toUserList.do");
    }
	
	// 导出商品列表
	@RequestMapping("/exportClothesExcel.do")
	public ModelAndView exportClothes(HttpServletResponse response) {
		// 写数据-导出

		// 准备excel文件
		String filename = "D:/eclipseworkspace/clothing-mall/clotheslist.xls";
		// 准备数据
		List<Clothes> list = clothesService.getClothesList();

		// 写数据
		EasyExcel.write(filename, Clothes.class).sheet("sheet1").doWrite(list);
		
		return new ModelAndView("redirect:toClothesList.do");
	}
	
	// 导出订单列表
	@RequestMapping("/exportOrderExcel.do")
	public ModelAndView exportOrder(HttpServletResponse response) {
		// 写数据-导出

		// 准备excel文件
		String filename = "D:/eclipseworkspace/clothing-mall/orderlist.xls";
		// 准备数据
		List<Clothes> list = orderService.getOrderList();

		// 写数据
		EasyExcel.write(filename, Clothes.class).sheet("sheet1").doWrite(list);

		return new ModelAndView("redirect:toOrderList.do");
	}
	
	// 导出评论列表
	@RequestMapping("/exportCommentExcel.do")
	public ModelAndView exportComment(HttpServletResponse response) {
		// 写数据-导出

		// 准备excel文件
		String filename = "D:/eclipseworkspace/clothing-mall/commentlist.xls";
		// 准备数据
		List<Clothes> list = commentService.selectComment();

		// 写数据
		EasyExcel.write(filename, Clothes.class).sheet("sheet1").doWrite(list);

		return new ModelAndView("redirect:toCommentList.do");
	}
}
