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
import com.ssm.entity.Admin;
import com.ssm.entity.Clothes;
import com.ssm.entity.User;
import com.ssm.service.AdminService;
import com.ssm.service.ClothesService;
import com.ssm.service.UserService;

@Controller
public class ManageController {
	@Autowired
	private UserService userService;
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private ClothesService clothesService;

	// 查询用户列表
	@RequestMapping("/toUserList.do")
	public ModelAndView getUserList(@RequestParam(name = "uname", required = true, defaultValue = "") String uname,
			@RequestParam(name = "uemail", required = true, defaultValue = "") String uemail,
			@RequestParam(name = "pno", required = true, defaultValue = "1") Integer pno) {
		ModelAndView mv = new ModelAndView();
		PageHelper.startPage(pno, 6); // 开始分页
		PageHelper.orderBy("uid asc");
		// 1、调用业务处理
		List<User> list = userService.getUserList(uname,uemail);
		PageInfo<User> page = new PageInfo<User>(list); // 分好页的数据
		// 2、根据业务处理来处理数据
		if (list != null) {
			// 3、列表数据的展示-去用户列表页面并且带数据过去
			/* return new ModelAndView("booklist","bklist",bkList); */
			mv.addObject("uname", uname);
			mv.addObject("uemail", uemail);
			mv.addObject("pno", pno);
			mv.addObject("list", list);
			mv.addObject("page", page);
			mv.setViewName("admin/userlist");
			return mv;
		}
		return null;
	}
	
	// 去用户修改页面
	@RequestMapping("/toUpdateUser.do")
	public ModelAndView toUpdateUser(Integer uid) {
		User u = userService.selectByUid(uid);
		if(u != null ) {
			return new ModelAndView ("admin/updateUser", "u", u);
		}
		return null;
	}
	
	// 用户修改
	@RequestMapping("updateUser.do")
	public ModelAndView updateUser(User user) {
		int num = userService.updateUser(user);
		if(num > 0 ) {
			return new ModelAndView ("redirect:toUserList.do", "msg", "修改成功！");
		}
		return null;
	}
	
	// 用户详情
	@RequestMapping("/toUserDetail.do")
	public String selectUserDetail(Integer uid, Model model) {
		User u = userService.selectByUid(uid);
		if (u != null) {
			model.addAttribute("u", u);
			return "admin/userDetail";
		}
		return null;
	}

	// 根据uid删除用户
	@RequestMapping("/toDeleteUser.do")
	public ModelAndView deleteUser(Integer uid) {
		int num = userService.deleteUserByUid(uid);
		if (num > 0) {
			return new ModelAndView("forward:toUserList.do", "msg", "删除成功！");
		}
		return null;
	}

	// 去增加用户页面
	@RequestMapping("/toAddUser.do")
	public String toAddPage() {
		return "admin/addUser";
	}

	// 增加用户
	@RequestMapping("/addUser.do")
	public ModelAndView addUser(User user) {
		// 1.调用业务处理
		int num = userService.addUser(user);
		// 2.根据业务处理来处理数据
		if (num > 0) {// 增加成功-去用户列表页面-重定向到列表展示页面的url
			return new ModelAndView("redirect:toUserList.do", "msg", "增加成功！");
		}
		return null;
	}
	
	// 去管理员个人信息页面
	@RequestMapping("/toAdminAccount.do")
	public ModelAndView toAdminAccount(Integer aid) {
		Admin a = adminService.selectByAid(aid);
		if(a != null ) {
			return new ModelAndView ("admin/adminAccount", "a", a);
		}
		return null;
	}
	
	// 修改管理员信息
	@RequestMapping("/updateAdmin.do")
	public ModelAndView updateAdmin(Admin admin) {
		int num = adminService.updateAdmin(admin);
		if(num > 0 ) {
			return new ModelAndView ("redirect:toAdminAccount.do", "msg", "修改成功！");
		}
		return null;
	}
	
	// 查询商品列表
	@RequestMapping("/toClothesList.do")
	public ModelAndView getClothesList(@RequestParam(name = "gdescription", required = true, defaultValue = "") String gdescription,
			@RequestParam(name = "pno", required = true, defaultValue = "1") Integer pno) {
		ModelAndView mv = new ModelAndView();
		PageHelper.startPage(pno, 6); // 开始分页
		PageHelper.orderBy("gid asc");
		// 1、调用业务处理
		List<Clothes> list = clothesService.getClothes(gdescription);
		PageInfo<Clothes> page = new PageInfo<Clothes>(list); // 分好页的数据
		// 2、根据业务处理来处理数据
		if (list != null) {
			// 3、列表数据的展示-去图书列表页面并且带数据过去
			/* return new ModelAndView("booklist","bklist",bkList); */
			mv.addObject("gdescription", gdescription);
			mv.addObject("pno", pno);
			mv.addObject("list", list);
			mv.addObject("page", page);
			mv.setViewName("admin/clotheslist");
			return mv;
		}
		return null;
	}

	// 去商品修改页面
	@RequestMapping("/toUpdateClothes.do")
	public ModelAndView toUpdateClothes(Integer gid) {
		Clothes c = clothesService.getClothesByGid(gid);
		if (c != null) {
			return new ModelAndView("admin/updateClothes", "c", c);
		}
		return null;
	}

	// 商品修改
	@RequestMapping("updateClothes.do")
	public ModelAndView updateUser(Clothes clothes) {
		int num = clothesService.updateClothes(clothes);
		if (num > 0) {
			return new ModelAndView("redirect:toClothesList.do", "msg", "修改成功！");
		}
		return null;
	}

	// 商品详情
	@RequestMapping("/toClothesDetail.do")
	public String selectClothesDetail(Integer gid, Model model) {
		Clothes c = clothesService.getClothesByGid(gid);
		if ( c != null) {
			model.addAttribute("c", c);
			return "admin/clothesDetail";
		}
		return null;
	}

	// 根据gid删除商品
	@RequestMapping("/toDeleteClothes.do")
	public ModelAndView deleteClothes(Integer gid) {
		int num = clothesService.deleteClothesByGid(gid);
		if (num > 0) {
			return new ModelAndView("forward:toClothesList.do", "msg", "删除成功！");
		}
		return null;
	}

	// 去增加商品页面
	@RequestMapping("/toAddClothes.do")
	public String toAddClothes() {
		return "admin/addClothes";
	}

	// 增加商品
	@RequestMapping("/addClothes.do")
	public ModelAndView addClothes(Clothes clothes) {
		// 1.调用业务处理
		int num = clothesService.addClothes(clothes);
		// 2.根据业务处理来处理数据
		if (num > 0) {// 增加成功-去商品列表页面-重定向到列表展示页面的url
			return new ModelAndView("redirect:toClothesList.do", "msg", "增加成功！");
		}
		return null;
	}
}
