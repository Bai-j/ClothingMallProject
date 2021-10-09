package com.ssm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.ssm.entity.Clothes;
import com.ssm.entity.Shopcart;

import tk.mybatis.mapper.common.Mapper;

public interface ShopcartMapper extends Mapper<Shopcart>{
	// 查询用户是否加购
	@Select("select * from shopcart where uid=#{uid} and gid=#{gid}")
	Shopcart selectShopcartByUidAndGid(Shopcart shopcart);

	// 根据用户查询购物车
//	@Select("select * from clothes where gid in (select gid from shopcart where uid=#{uid})")
//	List<Clothes> showShopcart(Integer uid);

	// 根据用户查询购物车
	@Select("SELECT T1.gid,T1.gname,T1.gprice,T1.gimg,T2.add_num gnum FROM clothes T1 JOIN shopcart T2 ON T2.gid = T1.gid AND T2.uid = #{uid}")
	List<Clothes> showShopcart(Integer uid);
	
	// 根据uid和gid查询购物车
	@Select("SELECT T1.gid,T1.gname,T1.gprice,T1.gimg,T2.add_num gnum FROM clothes T1 JOIN shopcart T2 ON T2.gid = T1.gid = #{gid} AND T2.uid = #{uid}")
	Clothes selectShopcart(Integer uid,Integer gid);
	
	
	// 添加购物车
	@Insert("insert into shopcart (uid,gid) values (#{uid},#{gid})")
	public int insertSelective(Shopcart shopcart);
	
	// 删除购物车
	@Delete("delete from shopcart where uid = #{uid} and gid = #{gid}")
	int delete(Shopcart shopcart);
	
	// 更新购物车
	@Update("update shopcart set addNum = #{addNum} where uid = #{uid} and gid = #{gid}")
	int updateShopcart(Shopcart shopcart);
}
