package com.ssm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.entity.Admin;
import com.ssm.service.AdminService;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
	
	// 去首页
	@RequestMapping("/toAdminIndex.do")
	public String toAdminIndexPage() {
		return "admin/index";
	}

	// 去注册页面
	@RequestMapping("/toAdminRegister.do")
	public String toAdminRegister() {
		return "admin/register";
	}

	// 注册
	@RequestMapping("/doAdminRegister.do")
	public ModelAndView adminRegister(Admin admin) {
		boolean flag = adminService.regist(admin);
		if (flag)
			return new ModelAndView("admin/login", "admin", admin);// 注册成功-去登录页面并带当前注册信息过去
		else
			return new ModelAndView("redirect:toAdminRegister.do");
	}

	// 激活邮件
	@RequestMapping("/activeAdminMail.do")
	public ModelAndView activeAdminEmail(String acode, HttpServletResponse res) throws Exception {
		boolean flag = adminService.active(acode);
		//String msg = null; // 带到页面的信息
		if (flag) {
			return new ModelAndView("redirect:toAdminLogin.do");
		} else {
			return new ModelAndView("redirect:toAdminRegister.do");
		}
		/*res.setContentType("text/html;charset=utf-8");
		res.getWriter().write(msg); // 写出信息
*/	}

	// 去登录页面
	@RequestMapping("/toAdminLogin.do")
	public String toAdminLogin() {
		return "admin/login";
	}

	// 登录
	@RequestMapping("/doAdminLogin.do")
	public String adminLogin(Admin admin, Model model, HttpSession session) {
		// 调用业务
		Admin a1 = adminService.login(admin);
		// 作判断
		if (a1 != null) {// 不为空
			if (!"Y".equals(a1.getAstatus())) {
				// 用户名和密码正确-但账号没有激活-给提示消息，重新登录
				model.addAttribute("msg", "该账号未激活！请联系管理员!");
				return "forward:toAdminLogin.do";
			}
			// 登录成功-去首页-并将当前登录用户信息保存到session当中
			session.setAttribute("admin", a1);
			adminService.logTime(admin);
			return "redirect:toAdminIndex.do";
		} else { // 用户名或密码错误-提示信息，重新登录
			model.addAttribute("msg", "用户名或密码不正确!");
			return "forward:toAdminLogin.do";
		}
	}

	// 退出
	@RequestMapping("/doAdminLogout.do")
	public String adminLogout(HttpSession session,HttpServletRequest request) {
		session = request.getSession();
		Admin admin = (Admin) session.getAttribute("admin");
		adminService.logoutTime(admin);
		session.removeAttribute("admin");
		session.invalidate();
		return "redirect:toAdminLogin.do";
	}
}
