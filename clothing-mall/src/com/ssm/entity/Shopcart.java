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
@Table(name="user")
public class Shopcart {
	@KeySql(useGeneratedKeys=true)
	@Id
	private Integer sid; // 购物车编号
	private Integer uid; // 用户编号
	private Integer gid;  // 商品编号
	//private Date addTime; // 加购时间
	private Integer addNum; // 加购数量
	private String gsum; // 商品总价
	
	//商品一对一
	//private Clothes clothes;
}
