package com.ssm.entity;

import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import tk.mybatis.mapper.annotation.KeySql;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name="address")
public class Address {
	@KeySql(useGeneratedKeys=true)
	@Id
	private Integer adid; // 地址编号
	private Integer uid; // 用户编号
	private String name; // 收货姓名
	private String phone; // 联系电话
	private String address; // 收货地址
}
