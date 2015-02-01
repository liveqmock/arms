package com.chiefmech.arms.service;

import com.chiefmech.arms.entity.TaoCan;

public interface TaoCanService {

	public int insertItem(TaoCan item);

	public int updateItem(TaoCan item);

	public int deleteItem(String id);

	public String getTaoCanEasyUiJSon(TaoCan item, int page, int rows);

}
