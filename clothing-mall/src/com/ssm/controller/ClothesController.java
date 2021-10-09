package com.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.entity.Clothes;
import com.ssm.entity.User;
import com.ssm.service.ClothesService;
import com.ssm.service.CommentService;

@Controller
public class ClothesController {
	@Autowired
	private ClothesService clothesService;
	
	@Autowired
	private CommentService commentService;
	
	// 查询所有商品，去购物首页
	@RequestMapping("/toShop.do")
	public ModelAndView getClothesList(@RequestParam(name = "gdescription", required = true, defaultValue = "") String gdescription,
			@RequestParam(name = "pno", required = true, defaultValue = "1") Integer pno) {
		ModelAndView mv = new ModelAndView();
		PageHelper.startPage(pno, 9); // 开始分页
		PageHelper.orderBy("gid asc");
		// 1、调用业务处理
		List<Clothes> clotheslist = clothesService.getClothes(gdescription);
		PageInfo<Clothes> page = new PageInfo<Clothes>(clotheslist); // 分好页的数据
		// 2、根据业务处理来处理数据
		if (clotheslist != null) {
			// 3、列表数据的展示-去购物页面并且带数据过去
			/* return new ModelAndView("booklist","bklist",bkList); */
			mv.addObject("gdescription", gdescription);
			/* mv.addObject("author", author); */
			mv.addObject("pno", pno);
			mv.addObject("clotheslist", clotheslist);
			mv.addObject("page", page);
			mv.setViewName("user/shop");
			return mv;
		}
		return null;
	}
	
	// 去商品详情页面
	@RequestMapping("toDetails.do")
	public ModelAndView toDeatsils(Integer gid,HttpSession session) {
		Clothes cloth = clothesService.getClothesByGid(gid);
		List<User> comment = commentService.getCommentList(gid);
		System.out.println("comment : " + comment);
		session.setAttribute("comment", comment);
		if (cloth != null ) {
			return new ModelAndView("user/details","cloth",cloth);
		}
		return null;
	}
	
	// 按类别查询商品，去购物首页
	@RequestMapping("/toShop2.do")
	public ModelAndView getCagetoryList(
			@RequestParam(name = "gcategory", required = true, defaultValue = "") String gcategory,
			@RequestParam(name = "gdescription", required = true, defaultValue = "") String gdescription,
			@RequestParam(name = "pno", required = true, defaultValue = "1") Integer pno) {
		ModelAndView mv = new ModelAndView();
		PageHelper.startPage(pno, 9); // 开始分页
		PageHelper.orderBy("gid asc");
		// 1、调用业务处理
		List<Clothes> clotheslist = clothesService.getCagetoryList(gcategory, gdescription);
		PageInfo<Clothes> page = new PageInfo<Clothes>(clotheslist); // 分好页的数据
		// 2、根据业务处理来处理数据
		if (clotheslist != null) {
			// 3、列表数据的展示-去购物页面并且带数据过去
			/* return new ModelAndView("booklist","bklist",bkList); */
			mv.addObject("gcategory", gcategory);
			mv.addObject("gdescription", gdescription);
			mv.addObject("pno", pno);
			mv.addObject("clotheslist", clotheslist);
			mv.addObject("page", page);
			mv.setViewName("user/shop2");
			return mv;
		}
		return null;
	}
	
}
