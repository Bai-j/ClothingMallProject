package com.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.entity.Clothes;
import com.ssm.entity.Comment;
import com.ssm.service.CommentService;

@Controller
public class CommentController {
	@Autowired
	private CommentService commentService;
	
	// 去评价页面
	@RequestMapping("/toComment.do")
	public String toOrderPage(Integer gid, String gname, Model model) {

		model.addAttribute("gid", gid);
		model.addAttribute("gname", gname);

		return "user/comment";
	}
	
	// 提交评论
	@RequestMapping("/doComment.do")
	public ModelAndView addComment(Comment comment) {
		int num = commentService.addComment(comment);
		if(num > 0) {
			return new ModelAndView("redirect:toUserAccount.do");
		}
		return null;
	}
	
	// 查询所有订单
	@RequestMapping("/toCommentList.do")
	public ModelAndView getOrderList(@RequestParam(name = "pno", required = true, defaultValue = "1") Integer pno) {
		ModelAndView mv = new ModelAndView();
		PageHelper.startPage(pno, 8); // 开始分页
		PageHelper.orderBy("gupTime asc");
		// 1、调用业务处理
		List<Clothes> list = commentService.selectComment();
		PageInfo<Clothes> page = new PageInfo<Clothes>(list); // 分好页的数据
		// 2、根据业务处理来处理数据
		if (list != null) {
			// 3、列表数据的展示-去订单列表页面并且带数据过去
			mv.addObject("pno", pno);
			mv.addObject("list", list);
			mv.addObject("page", page);
			mv.setViewName("admin/commentlist");
			return mv;
		}
		return null;
	}
}
