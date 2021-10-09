package com.ssm.service;

import java.util.List;

import com.ssm.entity.Clothes;
import com.ssm.entity.Collect;

public interface CollectService {
	// 添加收藏
	int insertCollect(Collect collect);

	// 取消收藏
	int deleteCollect(Collect collect);

	// 查询是否收藏
	Collect selectCollectByUidAndGid(Collect collect);

	// 根据用户查询收藏
	List<Clothes> showCollect(Integer uid);
}
