package com.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.entity.Clothes;
import com.ssm.entity.Shopcart;
import com.ssm.service.ShopcartService;

@Controller
public class ShopcartController {
	@Autowired
	private ShopcartService shopcartService;
	
	// 加入购物车
	@RequestMapping("/toCart.do")
	public ModelAndView toCart(Shopcart shopcart,Integer uid,HttpServletResponse response) throws Exception {
		List<Clothes> list = shopcartService.showShopcart(uid);
		
		//request.setAttribute("clothes", list);
		Shopcart shopcart1 = shopcartService.selectShopcartByUidAndGid(shopcart);
		if (shopcart1 != null) {
			return new ModelAndView("user/cart","clothes", list);
		} else {
			shopcartService.insertShopcart(shopcart);
			List<Clothes> list1 = shopcartService.showShopcart(uid);
			return new ModelAndView("user/cart","clothes", list1);
		}
	}
	
	// 去购物车页面
	@RequestMapping("/toCartPage.do")
	public ModelAndView toCartPage(Integer uid) {
		List<Clothes> list = shopcartService.showShopcart(uid);
		return new ModelAndView("user/cart","clothes", list);
	}
	
	// 删除购物车
	@RequestMapping("/toDeleteCart.do")
	public ModelAndView toDeleteCart(Shopcart shopcart,Integer uid) {
		shopcartService.deleteShopcart(shopcart);
		List<Clothes> list = shopcartService.showShopcart(uid);
		return new ModelAndView("user/cart","clothes",list);
	}
}
