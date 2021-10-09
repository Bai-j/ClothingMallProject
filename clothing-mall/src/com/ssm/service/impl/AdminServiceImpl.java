package com.ssm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssm.dao.AdminMapper;
import com.ssm.entity.Admin;
import com.ssm.service.AdminService;
import com.ssm.utils.MailUtils;
import com.ssm.utils.UuidUtil;

@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminMapper adminMapper;

	// 管理员注册
	@Transactional
	public boolean regist(Admin admin) {
		// 设置激活码
		admin.setAcode(UuidUtil.getUuid());
		// 设置激活状态
		admin.setAstatus("N");
		int num = adminMapper.insertSelective(admin);
		if (num > 0) {// 发送邮件
			String content = "<a href='http://localhost:8989/clothing-mall/activeAdminMail.do?" + "acode=" + admin.getAcode()
					+ "'>点击激活【君悦衣坊】</a>";
			MailUtils.sendMail(admin.getAemail(), content, "激活邮件!");
			return true;
		}
		return false;
	}

	// 管理员激活
	@Transactional
	public boolean active(String acode) {
		// 根据激活码查询当前注册的用户是否是在本平台注册的用户
		Admin admin = new Admin();
		admin.setAcode(acode);
		Admin a1 = adminMapper.selectOne(admin);
		if (a1 != null) { // 有此用户-更新激活状态//激活-修改当前注册用户的激活状态-更新动作
			a1.setAstatus("Y");
			if (adminMapper.updateByPrimaryKeySelective(a1) > 0)
				return true;
			else
				return false;
		}
		return false;// 响应
	}

	// 管理员登录
	@Override
	public Admin login(Admin admin) {
		return adminMapper.selectOne(admin);
	}

	// 更新登录时间
	@Transactional
	public int logTime(Admin admin) {
		return adminMapper.updateAdminLogTimeByUname(admin);
	}

	// 更新退出时间
	@Transactional
	public int logoutTime(Admin admin) {
		return adminMapper.updateAdminLogoutTimeByUname(admin);
	}

	@Override
	public Admin selectByAid(Integer aid) {
		return adminMapper.selectByPrimaryKey(aid);
	}

	@Transactional
	public int updateAdmin(Admin admin) {
		return adminMapper.updateByPrimaryKeySelective(admin);
	}

}
