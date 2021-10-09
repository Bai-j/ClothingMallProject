package com.ssm.entity;

import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import tk.mybatis.mapper.annotation.KeySql;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name="collect")
public class Collect {
	@KeySql(useGeneratedKeys=true)
	@Id
	private Integer cid; // 收藏编号 
	private Integer uid; // 用户编号
	private Integer gid; // 商品编号
	//private Date collectTime; // 收藏时间
}
