package com.ssm.service;

import java.util.List;

import com.ssm.entity.Clothes;
import com.ssm.entity.Comment;
import com.ssm.entity.User;

public interface CommentService {
	// 添加评论
	int addComment(Comment comment);
	
	// 根据gid查询评论
	List<User> getCommentList(Integer gid);
	
	// 查询所有评论
	List<Clothes> selectComment();
}
