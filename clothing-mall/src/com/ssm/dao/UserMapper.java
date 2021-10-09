package com.ssm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.ssm.entity.User;

import tk.mybatis.mapper.common.Mapper;

public interface UserMapper extends Mapper<User> {
	// 更新登录时间
	@Update("update user set log_time = NOW() where uname = #{uname}")
	int updateUserLogTimeByUname(User user);

	// 更新退出时间
	@Update("update user set logout_time = NOW() where uname = #{uname}")
	int updateUserLogoutTimeByUname(User user);
	
	//根据用户名和邮箱查询用户
    List<User> getUserList(@Param("uname")String uname,@Param("uemail")String uemail);
    
    //验证用户名是否唯一
    @Select("select * from user where uname=#{uname}")
    User CheckUname(String uname);
    
    //注册用户
    @Insert("insert into user (uname,upassword,uemail,uphone,ustatus,ucode,reg_time) values (#{uname},#{upassword},#{uemail},#{uphone},#{ustatus},#{ucode},now())")
	public int insertSelective(User user);

}
