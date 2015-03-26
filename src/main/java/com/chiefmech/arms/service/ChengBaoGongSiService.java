package com.chiefmech.arms.service;

import com.chiefmech.arms.entity.ChengBaoGongSi;

public interface ChengBaoGongSiService {

	public int insertItem(ChengBaoGongSi item);

	public int updateItem(ChengBaoGongSi item);

	public int deleteItem(String id);

	public String getChengBaoGongSiEasyUiJSon(ChengBaoGongSi query, int page,
			int rows);
}
