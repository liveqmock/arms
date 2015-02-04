package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.SystemOwnerDaoSqlProvider;
import com.chiefmech.arms.entity.SystemOwner;

@Repository("systemOwnerDao")
public interface SystemOwnerDao {

	@SelectProvider(type = SystemOwnerDaoSqlProvider.class, method = "getSystemOwnerList")
	public List<SystemOwner> getSystemOwnerList(
			@Param("item") SystemOwner query, @Param("page") int page,
			@Param("rows") int rows);

	@SelectProvider(type = SystemOwnerDaoSqlProvider.class, method = "getSystemOwnerListCount")
	public int getSystemOwnerListCount(@Param("item") SystemOwner query);

	@Insert("insert into users(userId,loginName,displayName,password,lastLoginTime,isLimit,jigouName,departName) values(#{userId},#{loginName},#{displayName},#{password},#{lastLoginTime},#{isLimit},#{jigouName},#{departName})")
	public int insertItem(SystemOwner item);

	@Update("update users set loginName=#{loginName},displayName=#{displayName},password=#{password},lastLoginTime=#{lastLoginTime},isLimit=#{isLimit},jigouName=#{jigouName},departName=#{departName} where userId=#{userId}")
	public int updateItem(SystemOwner item);

	@Delete("delete from users where userId=#{userId}")
	public int deleteItem(String id);

	@Select("select * from users")
	public List<SystemOwner> selectItem();
	
	@Select("select * from users where userId=#{userId}")
	public SystemOwner findSystemOwnerById(String id);

}
