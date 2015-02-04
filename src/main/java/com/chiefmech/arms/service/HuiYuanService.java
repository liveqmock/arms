package com.chiefmech.arms.service;

import java.util.List;

import com.chiefmech.arms.entity.CheZhuLianXiRen;
import com.chiefmech.arms.entity.HuiYuan;
import com.chiefmech.arms.entity.JiGou;


public interface HuiYuanService {

	public int insertItem(HuiYuan item);

	public int updateItem(HuiYuan item);

	public int deleteItem(String id);

	public String getHuiYuanEasyUiJSon(HuiYuan item, int page, int rows);
	
}
