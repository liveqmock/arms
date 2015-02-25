package com.chiefmech.arms.service;
import java.util.List;

import com.chiefmech.arms.entity.Group;

public interface GroupService {
	public int insertItem(Group item);

	public int updateItem(Group item);

	public boolean isGroupNameExist(Group item);

	public int deleteItem(String id);

	public String getGroupEasyUiJSon(Group query, int page, int rows);

	public List<Group> selectItem();

}
