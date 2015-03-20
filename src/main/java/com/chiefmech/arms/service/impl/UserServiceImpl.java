package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

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
	public int insertItem(User item) {
		return userDao.insertItem(item);
	}

	@Override
	public int updateItem(User item) {
		return userDao.updateItem(item);
	}

	@Override
	public int deleteItem(String id) {
		return userDao.deleteItem(id);
	}

	@Override
	public String getUserEasyUiJSon(User query, int page, int rows) {
		List<User> lst = userDao.getUserList(query, page, rows);
		int total = userDao.getUserListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public User findUserById(String id) {
		return userDao.findUserById(id);
	}

	@Override
	public User findUserByLoginName(String loginName) {
		return userDao.findUserByLoginName(loginName);
	}

	@Override
	public String updateUserPersonalInfo(UserPersonalInfo personalInfo) {
		String userId = personalInfo.getUserId();
		String txtOldPwd = personalInfo.getTxtOldPwd();
		String txtNewPwd1 = personalInfo.getTxtNewPwd1();

		if (!userDao.isPwdMatched(userId, txtOldPwd)) {
			return "oldPwd_error";
		}

		int rowsAffected = userDao.updatePassword(userId, txtNewPwd1);
		return (rowsAffected == 1) ? "success" : "failed";
	}

	@Override
	public boolean isLoginNameExist(User item) {
		return userDao.isLoginNameExist(item);
	}

	@Override
	public List<String> getUserPrivilegeLst(String userId) {
		return userDao.getUserPrivilegeLst(userId);
	}

}
