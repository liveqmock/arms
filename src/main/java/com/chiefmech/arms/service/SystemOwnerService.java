package com.chiefmech.arms.service;

import java.util.List;

import com.chiefmech.arms.entity.SystemOwner;

public interface SystemOwnerService {
	
	public int insertItem(SystemOwner item);

	public int updateItem(SystemOwner item);

	public int deleteItem(String id);

	public String getSystemOwnerEasyUiJSon(SystemOwner query, int page, int rows);
	
	public List<SystemOwner> selectItem();

}
