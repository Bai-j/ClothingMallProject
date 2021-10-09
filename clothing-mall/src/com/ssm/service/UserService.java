package com.ssm.service;

import java.util.List;

import com.ssm.entity.User;

public interface UserService {
	// 注册用户
	boolean regist(User user);

	// 激活邮件
	boolean active(String ucode);

	// 用户登录
	User login(User user);
	
	// 用户登录时间
	int logTime(User user);
	
	// 用户退出时间
	int logoutTime(User user);
	
	// 修改用户
	int updateUser(User user);
	
	// 查询所有用户信息
	List<User> getUserList(String uname,String uemail);

	// 根据uid查询用户详情
	User selectByUid(Integer uid);

	// 删除某个用户信息
	int deleteUserByUid(Integer uid);
	
	// 增加用户
	int addUser(User user);
	
	// 查询所有用户——用于导出用户列表
	List<User> getUserList();
	
	//验证用户名是否唯一
    User CheckUname(String uname);
}
