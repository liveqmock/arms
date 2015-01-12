package com.chiefmech.arms.service;

import com.chiefmech.arms.entity.User;
import com.chiefmech.arms.entity.UserPersonalInfo;

public interface UserService {

	public User findUser(User user);

	public String updateUserPersonalInfo(UserPersonalInfo personalInfo);

}
