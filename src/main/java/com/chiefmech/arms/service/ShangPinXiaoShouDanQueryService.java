package com.chiefmech.arms.service;
import java.util.List;

import com.chiefmech.arms.entity.ShangPinXiaoShouDan;

public interface ShangPinXiaoShouDanQueryService {
	public int insertItem(ShangPinXiaoShouDan item);

	public int updateItem(ShangPinXiaoShouDan item);

	public int deleteItem(int id);

	public String getXiaoShouQueryEasyUiJSon(ShangPinXiaoShouDan query, int page, int rows);
	
	public List<ShangPinXiaoShouDan> selectItem();

}
