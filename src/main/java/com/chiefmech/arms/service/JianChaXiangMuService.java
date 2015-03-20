package com.chiefmech.arms.service;
import java.util.List;

import com.chiefmech.arms.entity.JianChaXiangMu;

public interface JianChaXiangMuService {

	public int insertItem(JianChaXiangMu item);

	public int updateItem(JianChaXiangMu item);

	public int deleteItem(String id);
	
	public String getJianChaXiangMuEasyUiJSon(JianChaXiangMu item, int page, int rows);
	
	public List<JianChaXiangMu> selectItem();
}
