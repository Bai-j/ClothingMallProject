package com.ssm.service;

import java.util.List;

import com.ssm.entity.Clothes;

public interface ClothesService {
	// 查询全部商品
	List<Clothes> getClothes(String gdescription);
	
	// 查询商品详情
	Clothes getClothesByGid(Integer gid);
	
	// 修改商品
	int updateClothes(Clothes clothes);

	// 删除某个商品信息
	int deleteClothesByGid(Integer gid);

	// 增加商品
	int addClothes(Clothes clothes);
	
	// 查询所有商品——用于导出商品表
	List<Clothes> getClothesList();
	
	// 按类别查询商品
    List<Clothes> getCagetoryList(String gcategory,String gdescription);
}
