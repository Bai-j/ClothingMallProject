package com.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssm.dao.ShopcartMapper;
import com.ssm.entity.Clothes;
import com.ssm.entity.Shopcart;
import com.ssm.service.ShopcartService;

@Service
public class ShopcartServiceImpl implements ShopcartService {
	@Autowired
	private ShopcartMapper shopcartMapper;
	
	// 添加购物车
	@Transactional
	public int insertShopcart(Shopcart shopcart) {
		return shopcartMapper.insertSelective(shopcart);
	}

	// 删除购物车
	@Transactional
	public int deleteShopcart(Shopcart shopcart) {
		return shopcartMapper.delete(shopcart);
	}

	// 查询用户是否加购
	@Transactional
	public Shopcart selectShopcartByUidAndGid(Shopcart shopcart) {
		return shopcartMapper.selectShopcartByUidAndGid(shopcart);
	}

	// 查询用户购物车
	@Override
	public List<Clothes> showShopcart(Integer uid) {
		return shopcartMapper.showShopcart(uid);
	}

	@Transactional
	public int updateShopcart(Shopcart shopcart) {
		return shopcartMapper.updateShopcart(shopcart);
	}

	@Override
	public Clothes selectShopcart(Integer uid, Integer gid) {
		return shopcartMapper.selectShopcart(uid, gid);
	}

}
