package com.ssm.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Update;

import com.ssm.entity.Admin;

import tk.mybatis.mapper.common.Mapper;

public interface AdminMapper extends Mapper<Admin> {
	// 更新登录时间
	@Update("update admin set log_time = NOW() WHERE aname = #{aname}")
	int updateAdminLogTimeByUname(Admin admin);

	// 更新退出时间
	@Update("update admin set logout_time = NOW() WHERE aname = #{aname}")
	int updateAdminLogoutTimeByUname(Admin admin);
	
	// 注册管理员
	@Insert("insert into admin (aname,apassword,aemail,aphone,astatus,acode,reg_time) values (#{aname},#{apassword},#{aemail},#{aphone},#{astatus},#{acode},now())")
	int insertSelective(Admin admin);
}
