package com.ssm.service;

import java.util.List;

import com.ssm.entity.Clothes;
import com.ssm.entity.Shopcart;

public interface ShopcartService {
	// 加入购物车
	int insertShopcart(Shopcart shopcart);

	// 删除购物车
	int deleteShopcart(Shopcart shopcart);

	// 查询是否加购
	Shopcart selectShopcartByUidAndGid(Shopcart shopcart);

	// 根据用户查询购物车
	List<Clothes> showShopcart(Integer uid);
	
	// 更新购物车
	int updateShopcart(Shopcart shopcart);
	
	// 根据uid和gid查询购物车
	Clothes selectShopcart(Integer uid,Integer gid);
}
