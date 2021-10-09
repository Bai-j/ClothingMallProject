package com.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssm.dao.CollectMapper;
import com.ssm.entity.Clothes;
import com.ssm.entity.Collect;
import com.ssm.service.CollectService;

@Service
public class CollectServiceImpl implements CollectService {
	@Autowired
	private CollectMapper collectMapper;
	
	// 添加收藏
	@Transactional
	public int insertCollect(Collect collect) {
		return collectMapper.insertSelective(collect);
	}

	// 取消收藏
	@Transactional
	public int deleteCollect(Collect collect) {
		return collectMapper.delete(collect);
	}

	// 判断是否收藏
	@Transactional
	public Collect selectCollectByUidAndGid(Collect collect) {
		return collectMapper.selectCollectByUidAndGid(collect);
	}

	// 展示用户收藏
	@Override
	public List<Clothes> showCollect(Integer uid) {
		return collectMapper.showCollect(uid);
	}

}
