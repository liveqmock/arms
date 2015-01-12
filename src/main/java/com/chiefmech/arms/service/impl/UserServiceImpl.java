package com.chiefmech.arms.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.UserDao;
import com.chiefmech.arms.entity.User;
import com.chiefmech.arms.entity.UserPersonalInfo;
import com.chiefmech.arms.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Resource()
	private UserDao userDao;

	@Override
	public User findUser(User condition) {
		User user = this.userDao.findUser(condition);
		return user;
	}

	@Override
	public String updateUserPersonalInfo(UserPersonalInfo personalInfo) {
		String userId = personalInfo.getUserId();
		String txtOldPwd = personalInfo.getTxtOldPwd();
		String txtNewPwd1 = personalInfo.getTxtNewPwd1();

		if (!this.userDao.isPwdMatched(userId, txtOldPwd)) {
			return "oldPwd_error";
		}

		int rowsAffected = this.userDao.updatePassword(userId, txtNewPwd1);
		return (rowsAffected == 1) ? "success" : "failed";
	}

}
