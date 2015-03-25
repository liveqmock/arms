package com.chiefmech.arms.service;

import java.util.List;

import com.chiefmech.arms.entity.GroupPrivilege;

public interface GroupService {

	public String getGroupPrivilegesEasyUiJSon(GroupPrivilege query);

	public int insertGroupPrivilege(GroupPrivilege item);

	public int updateGroupPrivilegesItem(GroupPrivilege item);

	public int deleteGroupPrivilegesItemById(int id);

	public int deleteGroupPrivileges(String groupName);

	public List<String> selectGroupPrivilegesItem(String groupName);

	public Boolean isGroupNameExist(GroupPrivilege item);

	public String getPrivilegeByRemark(String remark);
}
