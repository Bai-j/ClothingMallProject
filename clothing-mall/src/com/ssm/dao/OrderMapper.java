package com.ssm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.ssm.entity.Clothes;
import com.ssm.entity.Orders;

import tk.mybatis.mapper.common.Mapper;

public interface OrderMapper extends Mapper<Orders> {
	// 根据用户查询订单
	@Select("SELECT T1.gid,T1.gname,T2.onum gnum,T2.oprice gprice,T2.ocode gdescription FROM clothes T1 JOIN orders T2 ON T2.gid = T1.gid AND T2.uid = #{uid}")
	List<Clothes> showOrder(Integer uid);
	
	// 查询所有订单
	@Select("SELECT T1.gname,T2.uname gcategory,T3.onum gnum,T3.oprice gprice,T3.order_time gupTime,T3.onote gdescription,T3.oaddress gimg,T3.ocode gsize FROM clothes T1 JOIN `user` T2 JOIN orders T3 ON T1.gid=T3.gid AND T2.uid=T3.uid")
	List<Clothes> selectOrder();
	
	
	// 添加订单
	@Insert("insert into orders (uid,gid,onum,oprice,order_time,onote,ostatus,oaddress,ocode) values (#{uid},#{gid},#{onum},#{oprice},now(),#{onote},#{ostatus},#{oaddress},#{ocode})")
	int insertSelective(Orders order);
}
