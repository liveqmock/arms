package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.GroupDao;
import com.chiefmech.arms.entity.Group;
import com.chiefmech.arms.service.GroupService;

@Service("groupService")
public class GroupServiceImpl implements GroupService {
	@Resource()
	private GroupDao groupDao;

	@Override
	public int insertItem(Group item) {
		return groupDao.insertItem(item);
	}

	@Override
	public int updateItem(Group item) {
		return groupDao.updateItem(item);
	}

	@Override
	public int deleteItem(String id) {
		return groupDao.deleteItem(id);
	}

	@Override
	public String getGroupEasyUiJSon(Group query, int page, int rows) {
		List<Group> lst = groupDao.getGroupList(query, page, rows);
		int total = groupDao.getGroupListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public List<Group> selectItem() {
		return groupDao.selectItem();
	}

	@Override
	public boolean isGroupNameExist(Group item) {
		return groupDao.isGroupNameExist(item);
	}

}
