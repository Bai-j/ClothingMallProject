package com.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssm.dao.AddressMapper;
import com.ssm.entity.Address;
import com.ssm.service.AddressService;

@Service
public class AddressServiceImpl implements AddressService {

	@Autowired
	private AddressMapper addressMapper;
	
	// 根据uid查询地址
	@Override
	public List<Address> getAddressListByUid(Integer uid) {
		return addressMapper.getAddressList(uid);
	}

	// 增加地址
	@Transactional
	public int addAddress(Address address) {
		return addressMapper.insert(address);
	}

	// 删除地址
	@Transactional
	public int deleteAddressByAdid(Integer adid) {
		return addressMapper.deleteByPrimaryKey(adid);
	}

	// 修改地址
	@Transactional
	public int updateAddress(Address address) {
		return addressMapper.updateByPrimaryKeySelective(address);
	}

}
