package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.GroupDao;
import com.chiefmech.arms.entity.GroupPrivilege;
import com.chiefmech.arms.service.GroupService;

@Service("groupService")
public class GroupServiceImpl implements GroupService {
	@Resource()
	private GroupDao groupDao;

	@Override
	public int insertGroupPrivilege(GroupPrivilege item) {
		return groupDao.insertGroupPrivilegesItem(item);
	}

	@Override
	public int updateGroupPrivilegesItem(GroupPrivilege item) {
		return groupDao.updateGroupPrivilegesItem(item);
	}

	@Override
	public int deleteGroupPrivilegesItemById(int id) {
		return groupDao.deleteGroupPrivilegesItemById(id);
	}

	@Override
	public int deleteGroupPrivileges(String groupName) {
		return groupDao.deleteGroupPrivilegesItem(groupName);
	}

	@Override
	public List<String> selectGroupPrivilegesItem(String groupName) {
		return groupDao.selectGroupPrivilegesItem(groupName);
	}

	@Override
	public Boolean isGroupNameExist(GroupPrivilege item) {
		return groupDao.isGroupNameExist(item) > 0 ? true : false;
	}

	@Override
	public String getPrivilegeByRemark(String remark) {
		return groupDao.selectPrivilege(remark);
	}

	@Override
	public String getGroupPrivilegesEasyUiJSon(GroupPrivilege query) {
		List<GroupPrivilege> lst = groupDao.getGroupPrivilegesList(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}",
				lst.size(), lstJson);
		return jsonStr;
	}

}
