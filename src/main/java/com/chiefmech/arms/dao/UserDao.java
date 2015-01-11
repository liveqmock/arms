package com.chiefmech.arms.dao;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.entity.User;

@Repository("userDao")
public interface UserDao {

	@Select("select * from users where loginName = #{loginName} and password = #{password} and isLimit = 1")
	public User findUser(User user);
}
