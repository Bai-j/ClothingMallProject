package com.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssm.dao.UserMapper;
import com.ssm.entity.User;
import com.ssm.service.UserService;
import com.ssm.utils.MailUtils;
import com.ssm.utils.UuidUtil;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	// 用户注册
	@Transactional
	public boolean regist(User user) {
		// 设置激活码
		user.setUcode(UuidUtil.getUuid());
		// 设置激活状态
		user.setUstatus("N");
		int num = userMapper.insertSelective(user);
		if (num > 0) {// 发送邮件
			String content = "<a href='http://localhost:8989/clothing-mall/activeMail.do?" + "ucode=" + user.getUcode()
					+ "'>点击激活【君悦衣坊】</a>";
			MailUtils.sendMail(user.getUemail(), content, "激活邮件!");
			return true;
		}
		return false;
	}

	// 用户激活
	@Transactional
	public boolean active(String ucode) {
		// 根据激活码查询当前注册的用户是否是在本平台注册的用户
		User user = new User();
		user.setUcode(ucode);
		User u1 = userMapper.selectOne(user);
		if (u1 != null) { // 有此用户-更新激活状态//激活-修改当前注册用户的激活状态-更新动作
			u1.setUstatus("Y");
			if (userMapper.updateByPrimaryKeySelective(u1) > 0)
				return true;
			else
				return false;
		}
		return false;// 响应
	}

	// 用户登录
	@Override
	public User login(User user) {
		return userMapper.selectOne(user);
	}
	
	// 更新登录时间
	@Transactional
	public int logTime(User user) {
		return userMapper.updateUserLogTimeByUname(user);
	}

	// 更新退出时间
	@Transactional
	public int logoutTime(User user) {
		return userMapper.updateUserLogoutTimeByUname(user);
	}

	// 修改用户
	@Transactional
	public int updateUser(User user) {
		return userMapper.updateByPrimaryKeySelective(user);
	}

	// 查询所有用户
	@Override
	public List<User> getUserList(String uname,String uemail) {
		return userMapper.getUserList(uname, uemail);
	}

	// 根据uid查询用户详情
	@Override
	public User selectByUid(Integer uid) {
		return userMapper.selectByPrimaryKey(uid);
	}

	// 删除用户
	@Transactional
	public int deleteUserByUid(Integer uid) {
		return userMapper.deleteByPrimaryKey(uid);
	}

	// 添加用户
	@Transactional
	public int addUser(User user) {
		return userMapper.insertSelective(user);
	}

	// 查询所有用户——用于导出用户列表
	@Override
	public List<User> getUserList() {
		return userMapper.selectAll();
	}

	@Override
	public User CheckUname(String uname) {
		return userMapper.CheckUname(uname);
	}

}
