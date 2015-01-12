package com.chiefmech.arms.dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.entity.User;

@Repository("userDao")
public interface UserDao {

	@Select("select * from users where loginName = #{loginName} and password = #{password} and isLimit = 1")
	public User findUser(User user);

	@Select("select count(*) from users where userId = #{userId} and password = #{password}")
	public boolean isPwdMatched(@Param("userId") String userId,
			@Param("password") String password);

	@Update("update users set password = #{password} where userId = #{userId}")
	public int updatePassword(@Param("userId") String userId,
			@Param("password") String password);

}
