package com.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssm.dao.CommentMapper;
import com.ssm.entity.Clothes;
import com.ssm.entity.Comment;
import com.ssm.entity.User;
import com.ssm.service.CommentService;

@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentMapper commentMapper;
	
	// 添加评论
	@Transactional
	public int addComment(Comment comment) {
		return commentMapper.insertSelective(comment);
	}

	// 查询商品评论
	@Override
	public List<User> getCommentList(Integer gid) {
		return commentMapper.getCommentList(gid);
	}

	// 查询所有商品评论
	@Override
	public List<Clothes> selectComment() {
		return commentMapper.selectComment();
	}

}
