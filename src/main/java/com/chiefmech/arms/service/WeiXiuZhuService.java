package com.chiefmech.arms.service;

import java.util.List;

import com.chiefmech.arms.entity.WeiXiuZhu;

public interface WeiXiuZhuService {
	public int insertItem(WeiXiuZhu item);

	public int updateItem(WeiXiuZhu item);

	public int deleteItem(String id);

	public String getWeiXiuPaiGongEasyUiJSon(WeiXiuZhu query, int page, int rows);
	
	public List<WeiXiuZhu> selectItem();
}
