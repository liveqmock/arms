package com.chiefmech.arms.service;

import com.chiefmech.arms.entity.WeiXiuXiangMu;

public interface WeiXiuXiangMuService {

	public int insertItem(WeiXiuXiangMu item);

	public int updateItem(WeiXiuXiangMu item);

	public int deleteItem(String id);

	public String getWeiXiuXiangMuEasyUiJSon(WeiXiuXiangMu query, int page,
			int rows);

}
