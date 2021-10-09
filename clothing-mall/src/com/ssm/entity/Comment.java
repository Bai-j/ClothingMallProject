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
@Table(name="comment")
public class Comment {
	@KeySql(useGeneratedKeys=true)
	@Id
	private Integer coid; // 评论编号
	private Integer uid; // 用户编号
	private Integer gid; // 商品编号
	private String comment; // 用户评论
	private Date commentTime; // 评论时间
}
