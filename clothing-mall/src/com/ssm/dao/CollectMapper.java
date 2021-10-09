package com.ssm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.ssm.entity.Clothes;
import com.ssm.entity.Collect;

import tk.mybatis.mapper.common.Mapper;

public interface CollectMapper extends Mapper<Collect>{
	// 查询用户是否收藏
	@Select("select * from collect where uid=#{uid} and gid=#{gid}")
	Collect selectCollectByUidAndGid(Collect collect);

	// 根据用户查询收藏
	@Select("select * from clothes where gid in (select gid from collect where uid=#{uid})")
	List<Clothes> showCollect(Integer uid);
	
	// 添加收藏
	@Insert("insert into collect (uid,gid) values (#{uid},#{gid})")
	public int insertSelective(Collect collect);
}
