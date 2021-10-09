package com.ssm.service;

import com.ssm.entity.Admin;

public interface AdminService {
	// 注册管理员
	boolean regist(Admin admin);

	// 激活邮件
	boolean active(String acode);

	// 管理员登录
	Admin login(Admin admin);
	
	// 管理员登录时间
	int logTime(Admin admin);
	
	// 管理员退出时间
	int logoutTime(Admin admin);
	
	// 根据aid查看管理员信息
	Admin selectByAid(Integer aid);
	
	// 修改管理员信息
	int updateAdmin(Admin admin);
}
