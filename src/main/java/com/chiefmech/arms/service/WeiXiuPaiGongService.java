package com.chiefmech.arms.service;

import java.util.List;

import com.chiefmech.arms.entity.WeiXiuPaiGong;

public interface WeiXiuPaiGongService {
	public int insertItem(WeiXiuPaiGong item);

	public int updateItem(WeiXiuPaiGong item);

	public int deleteItem(String id);

	public String getWeiXiuPaiGongEasyUiJSon(WeiXiuPaiGong query, int page, int rows);
	
	public List<WeiXiuPaiGong> selectItem();
}