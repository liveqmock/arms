package com.chiefmech.arms.service;
import java.util.List;

import com.chiefmech.arms.entity.JiGou;

public interface JiGouService {
	public int insertItem(JiGou item);

	public int updateItem(JiGou item);

	public int deleteItem(String jigouGuid);

	public String getJiGouEasyUiJSon(JiGou query, int page, int rows);

	public List<JiGou> selectItem();

}
