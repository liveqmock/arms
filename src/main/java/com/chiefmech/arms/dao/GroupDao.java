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
import com.chiefmech.arms.entity.GroupPrivilege;

@Repository("groupDao")
public interface GroupDao {

	@SelectProvider(type = GroupDaoSqlProvider.class, method = "getGroupPrivilegesList")
	public List<GroupPrivilege> getGroupPrivilegesList(
			@Param("item") GroupPrivilege query);

	@Insert("insert into group_privileges(id,groupName,privilege,remark) values(#{id},#{groupName},#{privilege},#{remark})")
	public int insertGroupPrivilegesItem(GroupPrivilege item);

	@Update("update group_privileges set groupName=#{groupName},privilege=#{privilege},remark=#{remark} where id=#{id}")
	public int updateGroupPrivilegesItem(GroupPrivilege item);

	@Delete("delete from group_privileges where id=#{id}")
	public int deleteGroupPrivilegesItemById(int id);

	@Delete("delete from group_privileges where groupName=#{groupName}")
	public int deleteGroupPrivilegesItem(String groupName);

	@Select("select distinct remark from group_privileges where groupName=#{groupName}")
	public List<String> selectGroupPrivilegesItem(String groupName);

	@Select("select count(*) from group_privileges where groupName=#{groupName} and privilege=#{privilege}")
	public int isGroupNameExist(GroupPrivilege item);

	@Select("select distinct privilege from group_privileges where remark=#{remark}")
	public String selectPrivilege(String remark);

}
