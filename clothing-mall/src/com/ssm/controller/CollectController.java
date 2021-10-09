package com.ssm.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.entity.Clothes;
import com.ssm.entity.Collect;
import com.ssm.service.CollectService;

@Controller
public class CollectController {
	@Autowired
	private CollectService collectService;
	
	@RequestMapping("/toCollectPage.do")
	public ModelAndView toCollectPage(Integer uid) {
		List<Clothes> list = collectService.showCollect(uid);
		return new ModelAndView("user/collect","clothes", list);
	}
	
	// 查询是否收藏，并跳转到收藏页面
	@RequestMapping("/toCollect.do")
	public ModelAndView collectYseOrNo(Collect collect,Integer uid) {
		List<Clothes> list = collectService.showCollect(uid);
		//request.setAttribute("clothes", list);
		Collect collect1 = collectService.selectCollectByUidAndGid(collect);
		if (collect1 != null) {
			return new ModelAndView("user/collect","clothes", list);
		} else {
			collectService.insertCollect(collect);
			List<Clothes> list1 = collectService.showCollect(uid);
			return new ModelAndView("user/collect","clothes", list1);
		}
	}
	
	// 取消收藏
	@RequestMapping("/toDeleteCollect.do")
	public ModelAndView toDelectCollect(Collect collect,Integer uid) {	
		collectService.deleteCollect(collect);
		List<Clothes> list = collectService.showCollect(uid);
		return new ModelAndView("user/collect","clothes", list);
	}
}
