package com.chiefmech.arms.service;
import java.util.List;

import com.chiefmech.arms.entity.DepartMent;

public interface DepartMentService {
	public int insertItem(DepartMent item);

	public int updateItem(DepartMent item);

	public int deleteItem(String id);

	public String getDepartMentEasyUiJSon(DepartMent query, int page, int rows);
	
	public List<DepartMent> selectItem();

}
