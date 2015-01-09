package com.chiefmech.arms.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.UserDao;
import com.chiefmech.arms.entity.User;
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

}
