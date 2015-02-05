package com.chiefmech.arms.service;

import com.chiefmech.arms.entity.HuiYuan;



public interface HuiYuanService {

	public int insertItem(HuiYuan item);

	public int updateItem(HuiYuan item);

	public int deleteItem(String id);

	public String getHuiYuanEasyUiJSon(HuiYuan item, int page, int rows);
	
	public String getNewHuiYuanBianHao();
	
}
