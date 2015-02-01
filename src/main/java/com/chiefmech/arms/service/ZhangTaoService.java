package com.chiefmech.arms.service;

import java.util.List;

import com.chiefmech.arms.entity.ZhangTao;

public interface ZhangTaoService {

	public int insertItem(ZhangTao item);

	public int updateItem(ZhangTao item);

	public int deleteItem(String id);

	public String getZhangTaoEasyUiJSon(ZhangTao query, int page, int rows);
	
	public List<ZhangTao> findZhangTao();
}
