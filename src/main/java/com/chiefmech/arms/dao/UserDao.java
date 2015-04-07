package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.UserDaoSqlProvider;
import com.chiefmech.arms.entity.User;

@Repository("userDao")
public interface UserDao {

	@SelectProvider(type = UserDaoSqlProvider.class, method = "getUserList")
	public List<User> getUserList(@Param("item") User query,
			@Param("page") int page, @Param("rows") int rows);

	@SelectProvider(type = UserDaoSqlProvider.class, method = "getUserListCount")
	public int getUserListCount(@Param("item") User query);

	@Insert("insert into users(userId,loginName,displayName,password,expirydate,groupName,shopCode,showOwnerTel) values(#{userId},#{loginName},#{displayName},#{password},#{expirydate},#{groupName},#{shopCode},#{showOwnerTel})")
	public int insertItem(User item);

	@Update("update users set loginName=#{loginName},displayName=#{displayName},password=#{password},expirydate=#{expirydate},groupName=#{groupName},shopCode=#{shopCode},showOwnerTel=#{showOwnerTel} where userId=#{userId}")
	public int updateItem(User item);

	@Delete("delete from users where userId=#{userId}")
	public int deleteItem(String id);

	@Select("select * from users where userId=#{userId}")
	public User findUserById(String id);

	@Select("select * from users where loginName = #{loginName}")
	public User findUserByLoginName(String loginName);

	@Select("select count(*) from users where userId = #{userId} and password = #{password}")
	public boolean isPwdMatched(@Param("userId") String userId,
			@Param("password") String password);

	@Update("update users set password = #{password} where userId = #{userId}")
	public int updatePassword(@Param("userId") String userId,
			@Param("password") String password);

	@Select("select count(*) from users where loginName=#{loginName} and userId!=#{userId}")
	public boolean isLoginNameExist(User item);

	@Select("select t2.privilege from users t1, group_privileges t2 where t1.userId=#{userId} and t1.groupName=t2.groupName")
	public List<String> getUserPrivilegeLst(String userId);

}
