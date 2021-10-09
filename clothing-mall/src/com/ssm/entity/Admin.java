package com.ssm.entity;

import java.util.Date;

import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import tk.mybatis.mapper.annotation.KeySql;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name="admin")
public class Admin {
	@KeySql(useGeneratedKeys=true)
	@Id
	private Integer aid; //管理员编号
	private String aname; //管理员名称
	private String apassword; //管理员密码
	private String aemail; //管理员邮箱
	private String aphone; //管理员电话
	private String astatus; //管理员激活状态
	private String acode; //管理员激活码
	//@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date logTime; //管理员登录时间
	private Date logoutTime; //管理员最近退出时间
	private Date regTime; //管理员注册时间
}
