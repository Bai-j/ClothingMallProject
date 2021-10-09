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
@Table(name="orders")
public class Orders {
	@KeySql(useGeneratedKeys=true)
	@Id
	private Integer oid; // 订单编号
	private Integer uid; // 用户编号
	private Integer gid; // 商品编号
	private Integer onum; // 商品数量
	private String oprice; // 订单总价
	private Date orderTime; // 下单时间
	private String onote; // 订单备注
	private String ostatus; // 订单状态
	private String oaddress; // 收货地址
	private String ocode; // 随机订单编号
}
