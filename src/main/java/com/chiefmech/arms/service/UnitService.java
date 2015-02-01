package com.chiefmech.arms.service;

import com.chiefmech.arms.entity.Unit;

public interface UnitService {
	public int insertItem(Unit item);

	public int updateItem(Unit item);

	public int deleteItem(String id);

	public String getUnitEasyUiJSon(Unit query, int page, int rows);
}
