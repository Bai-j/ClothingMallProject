package com.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssm.dao.OrderMapper;
import com.ssm.entity.Clothes;
import com.ssm.entity.Orders;
import com.ssm.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderMapper orderMapper;
	
	// 根据uid查询所有订单
	@Override
	public List<Clothes> getOrderList(Integer uid) {
		return orderMapper.showOrder(uid);
	}

	// 查询所有订单
	@Override
	public List<Clothes> getOrderList() {
		return orderMapper.selectOrder();
	}

	// 增加订单
	@Transactional
	public int addOrder(Orders order) {
		return orderMapper.insertSelective(order);
	}

	// 删除订单
	@Transactional
	public int deleteOrder(Orders order) {
		return orderMapper.delete(order);
	}

	// 根据用户查询订单
//	@Override
//	public Clothes getOrder(Integer uid) {
//		return orderMapper.getOrder(uid);
//	}

}
