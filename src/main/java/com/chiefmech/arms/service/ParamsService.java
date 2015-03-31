package com.chiefmech.arms.service;

import com.chiefmech.arms.entity.Param;

public interface ParamsService {

	public int insertItem(Param item);

	public int updateItem(Param item);

	public int deleteItem(String id);

	public String getParamEasyUiJSon(Param item);
}
