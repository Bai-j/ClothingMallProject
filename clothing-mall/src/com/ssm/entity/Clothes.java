package com.ssm.entity;

import java.util.Date;

import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import tk.mybatis.mapper.annotation.KeySql;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name="clothes")
public class Clothes {
	@KeySql(useGeneratedKeys=true)
	@Id
	private Integer gid; // 商品编号
	private String gname; // 商品名称
	private String gprice; // 商品价格
	private Integer gnum; // 商品数量
	private String gcategory; // 商品种类
	private String gdescription; // 商品描述
	private String gimg; // 商品图片
	private Date gupTime; // 商品上架时间
	private Date gdownTime; // 商品下架时间
	private String gsize; // 商品尺码
	private String gcolor; // 商品颜色
	private String gmaterial; // 商品材质
}
