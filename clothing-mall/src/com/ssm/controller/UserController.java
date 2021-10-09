package com.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.entity.Clothes;
import com.ssm.entity.User;
import com.ssm.service.OrderService;
import com.ssm.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@Autowired
	private OrderService orderService;
	
	// 去首页
	@RequestMapping("/toUserIndex.do")
	public String toUserIndexPage() {
		return "user/index";
	}
		
	// 去注册页面
	@RequestMapping("/toUserRegister.do")
	public String toRegPage() {
		return "user/register";
	}

	// 注册
	@RequestMapping("/doUserRegister.do")
	public ModelAndView reg(User user,Model model) {
		User u = userService.CheckUname(user.getUname());
		if (u == null) {
			boolean flag = userService.regist(user);
			if (flag)
				return new ModelAndView("user/login", "user", user);// 注册成功-去登录页面并带当前注册信息过去
		} else {
			model.addAttribute("msg", "用户名不唯一，请重新注册！");
			return new ModelAndView("forward:toUserRegister.do");
		}
		return null;
	}

	// 激活邮件
	@RequestMapping("/activeMail.do")
	public ModelAndView activeEmail(String ucode, HttpServletResponse res) throws Exception {
		boolean flag = userService.active(ucode);
		//String msg = null; // 带到页面的信息
		if (flag) {
			return new ModelAndView("redirect:toUserLogin.do");
			/*msg = "<h3>激活成功!<a href='toUserLogin.do'>请登录</a></h3>";*/
		} else {
			return new ModelAndView("redirect:toContactUs.do");
			/*msg = "激活失败!请联系管理员!";*/
		}
		/*res.setContentType("text/html;charset=utf-8");
		res.getWriter().write(msg); // 写出信息*/
	}

	// 去登录页面
	@RequestMapping("/toUserLogin.do")
	public String toLoginPage() {
		return "user/login";
	}

	// 登录
	@RequestMapping("/doUserLogin.do")
	public String login(User user, Model model, HttpSession session) {
		// 调用业务
		User u1 = userService.login(user);
		// 作判断
		if (u1 != null) {// 不为空
			if (!"Y".equals(u1.getUstatus())) {
				// 用户名和密码正确-但账号没有激活-给提示消息，重新登录
				model.addAttribute("msg", "该账号未激活！请联系管理员!");
				return "forward:toUserLogin.do";
			}
			// 登录成功-去首页-并将当前登录用户信息保存到session当中
			session.setAttribute("user", u1);
			userService.logTime(user);
			return "redirect:toShop.do";
		} else { // 用户名或密码错误-提示信息，重新登录
			model.addAttribute("msg", "用户名或密码不正确!");
			return "forward:toUserLogin.do";
		}
	}

	// 退出
	@RequestMapping("/doUserLogout.do")
	public String exitSystem(HttpSession session,HttpServletRequest request) {
		session = request.getSession();
		User user = (User) session.getAttribute("user");
		userService.logoutTime(user);
		session.removeAttribute("user");
		session.invalidate();
		return "redirect:toUserLogin.do";
	}
	
	// 去个人中心页面
	@RequestMapping("/toUserAccount.do")
	public String toUserAccount(HttpSession session,HttpServletRequest request) {
		session = request.getSession();
		User user = (User) session.getAttribute("user");
		List<Clothes> list = orderService.getOrderList(user.getUid());
		session.setAttribute("orders", list);
		return "user/my-account";
	}
	
	// 修改用户
	@RequestMapping("/doUpdateUser.do")
	public ModelAndView updateUser(User user,HttpSession session,Model model) {
		User u = userService.CheckUname(user.getUname());
		if (u == null) {
			int num = userService.updateUser(user);
			if (num > 0) {
				session.setAttribute("user", user);
				return new ModelAndView("redirect:toUserAccount.do", "msg", "修改成功！");
			}
		} else {
			model.addAttribute("msg", "用户名不唯一，请重新修改！");
			return new ModelAndView("forward:toUserAccount.do");
		}
		return null;
	}
	
	// 去联系我们页面
	@RequestMapping("/toContactUs.do")
	public String toContactUs() {
		return "user/contact-us";
	}
		
}
