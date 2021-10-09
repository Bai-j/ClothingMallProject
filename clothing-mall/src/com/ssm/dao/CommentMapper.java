package com.ssm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.ssm.entity.Clothes;
import com.ssm.entity.Comment;
import com.ssm.entity.User;

import tk.mybatis.mapper.common.Mapper;

public interface CommentMapper extends Mapper<Comment> {
	// 添加评论
	@Insert("insert into comment (uid,gid,comment,comment_time) values (#{uid},#{gid},#{comment},now())")
	int insertSelective(Comment comment);
	
	// 查询评论
	@Select("SELECT T1.uid,T1.uname,T2.comment uphone,T2.comment_time regTime FROM user T1 JOIN comment T2 ON T2.uid = T1.uid AND T2.gid = #{gid}")
	List<User> getCommentList(Integer gid);
	
	// 查询所有评论
	@Select("SELECT T1.gname,T2.uname gcategory,T3.comment gdescription,T3.comment_time gupTime FROM clothes T1 JOIN `user` T2 JOIN comment T3 ON T1.gid=T3.gid AND T2.uid=T3.uid")
	List<Clothes> selectComment();
}
