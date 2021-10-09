package com.ssm.controller;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.entity.Clothes;
import com.ssm.service.OrderService;

@Controller
public class OrderController {
	@Autowired
	private OrderService orderService;
	
	// 去订单页面
	@RequestMapping("/toOrder.do")
	public String toOrderPage(Integer gid, String gname, Integer gnum, String gprice, Model model) {

		String ocode = UUID.randomUUID().toString().replace("-", "");
		model.addAttribute("gid", gid);
		model.addAttribute("gname", gname);
		model.addAttribute("num", gnum);
		model.addAttribute("price", gprice);
		model.addAttribute("ocode", ocode);

		return "user/order";
	}
	
	// 查询所有订单
	@RequestMapping("/toOrderList.do")
	public ModelAndView getOrderList(@RequestParam(name = "pno", required = true, defaultValue = "1") Integer pno) {
		ModelAndView mv = new ModelAndView();
		PageHelper.startPage(pno, 8); // 开始分页
		PageHelper.orderBy("gupTime asc");
		// 1、调用业务处理
		List<Clothes> list = orderService.getOrderList();
		PageInfo<Clothes> page = new PageInfo<Clothes>(list); // 分好页的数据
		// 2、根据业务处理来处理数据
		if (list != null) {
			// 3、列表数据的展示-去订单列表页面并且带数据过去
			mv.addObject("pno", pno);
			mv.addObject("list", list);
			mv.addObject("page", page);
			mv.setViewName("admin/orderlist");
			return mv;
		}
		return null;
	}
}
