package com.ssm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

import com.ssm.entity.Clothes;

import tk.mybatis.mapper.common.Mapper;

public interface ClothesMapper extends Mapper<Clothes> {
	// 根据关键描述查询商品
	List<Clothes> getClothesList(@Param("gdescription")String gdescription);
	
	// 根据关键描述按类别查询商品
	List<Clothes> getCategoryList(@Param("gcategory")String gcategory,@Param("gdescription")String gdescription);
	
	//增加商品
    @Insert("insert into clothes (gname,gprice,gnum,gcategory,gdescription,gmaterial,gsize,gcolor,gimg,gup_time) values (#{gname},#{gprice},#{gnum},#{gcategory},#{gdescription},#{gmaterial},#{gsize},#{gcolor},#{gimg},now())")
	public int insertSelective(Clothes clothes);
	
}
