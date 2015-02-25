package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.GroupDaoSqlProvider;
import com.chiefmech.arms.entity.Group;

@Repository("groupDao")
public interface GroupDao {

	@SelectProvider(type = GroupDaoSqlProvider.class, method = "getGroupList")
	public List<Group> getGroupList(@Param("item") Group query,
			@Param("page") int page, @Param("rows") int rows);

	@SelectProvider(type = GroupDaoSqlProvider.class, method = "getGroupListCount")
	public int getGroupListCount(@Param("item") Group query);

	@Insert("insert into groups(groupId,groupName) values(#{groupId},#{groupName})")
	public int insertItem(Group item);

	@Update("update groups set groupName=#{groupName} where groupId=#{groupId}")
	public int updateItem(Group item);

	@Delete("delete from groups where groupId=#{groupId}")
	public int deleteItem(String id);

	@Select("select * from groups")
	public List<Group> selectItem();

	@Select("select count(*) from groups where groupName=#{groupName} and groupId!=#{groupId}")
	public boolean isGroupNameExist(Group item);

}
