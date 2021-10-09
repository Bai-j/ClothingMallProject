package com.ssm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.ssm.entity.Address;

import tk.mybatis.mapper.common.Mapper;

public interface AddressMapper extends Mapper<Address>{
	// 根据uid查询地址
	@Select("select aaid,name,phone,address from address where uid = #{uid}")
	List<Address> getAddressList(Integer uid);
}
