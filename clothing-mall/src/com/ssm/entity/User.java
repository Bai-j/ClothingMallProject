package com.ssm.entity;

import java.sql.Timestamp;
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
@Table(name="user")
public class User {
	@KeySql(useGeneratedKeys=true)
	@Id
	private Integer uid; //用户编号
	private String uname; //用户名称
	private String upassword; //用户密码
	private String uemail; //用户邮箱
	private String uphone; //用户电话
	private String ustatus; //用户激活状态
	private String ucode; //用户激活码
	//@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date logTime; //用户登录时间
	private Date logoutTime; //用户最近退出时间
	private Date regTime; //用户注册时间
}
