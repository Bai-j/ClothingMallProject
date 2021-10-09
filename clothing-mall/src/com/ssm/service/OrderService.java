package com.ssm.service;

import java.util.List;

import com.ssm.entity.Clothes;
import com.ssm.entity.Orders;

public interface OrderService {
	// 根据uid查询订单
	/*Clothes getOrder(Integer uid);*/
	
	// 根据uid查询所有订单
	List<Clothes> getOrderList(Integer uid);
	
	// 查询所有订单
	List<Clothes> getOrderList();
	
	// 添加订单
	int addOrder(Orders order);
	
	// 删除订单
	int deleteOrder(Orders order);
}
