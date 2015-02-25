package com.chiefmech.arms.service;

import java.util.List;

import com.chiefmech.arms.entity.User;
import com.chiefmech.arms.entity.UserPersonalInfo;

public interface UserService {

	public boolean isLoginNameExist(User item);

	public int insertItem(User item);

	public int updateItem(User item);

	public int deleteItem(String id);

	public String getUserEasyUiJSon(User query, int page, int rows);

	public List<User> selectItem();

	public User findUserById(String id);

	public User findUserByLoginName(String loginName);

	public String updateUserPersonalInfo(UserPersonalInfo personalInfo);

}
