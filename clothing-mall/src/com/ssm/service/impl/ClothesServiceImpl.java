package com.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssm.dao.ClothesMapper;
import com.ssm.entity.Clothes;
import com.ssm.service.ClothesService;

@Service
public class ClothesServiceImpl implements ClothesService {
	@Autowired
	private ClothesMapper clothesMapper;
	
	// 根据关键词查询商品
	@Override
	public List<Clothes> getClothes(String gdescription) {
		return clothesMapper.getClothesList(gdescription);
	}

	// 根据gid查询商品
	@Override
	public Clothes getClothesByGid(Integer gid) {
		return clothesMapper.selectByPrimaryKey(gid);
	}
	
	// 修改商品
	@Transactional
	public int updateClothes(Clothes clothes) {
		return clothesMapper.updateByPrimaryKeySelective(clothes);
	}

	// 删除商品
	@Transactional
	public int deleteClothesByGid(Integer gid) {
		return clothesMapper.deleteByPrimaryKey(gid);
	}

	// 添加商品
	@Transactional
	public int addClothes(Clothes clothes) {
		return clothesMapper.insertSelective(clothes);
	}

	// 查询所有商品——用于导出商品列表
	@Override
	public List<Clothes> getClothesList() {
		return clothesMapper.selectAll();
	}

	// 根据关键描述按类别查询商品
	@Override
	public List<Clothes> getCagetoryList(String gcategory, String gdescription) {
		return clothesMapper.getCategoryList(gcategory, gdescription);
	}

}
