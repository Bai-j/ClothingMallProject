package com.ssm.service;

import java.util.List;

import com.ssm.entity.Address;

public interface AddressService {
	// 根据uid查询全部地址
	List<Address> getAddressListByUid(Integer uid);
	
	// 增加地址
	int addAddress(Address address);
	
	// 根据adid删除地址
	int deleteAddressByAdid(Integer adid);
	
	// 修改地址
	int updateAddress(Address address);

}
