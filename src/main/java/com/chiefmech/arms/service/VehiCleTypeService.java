package com.chiefmech.arms.service;

import java.util.List;
import com.chiefmech.arms.entity.VehiCleType;

public interface VehiCleTypeService {

	public int insertItem(VehiCleType item);

	public int updateItem(VehiCleType item);

	public int deleteItem(int id);

	public String getVehiCleTypeEasyUiJSon(VehiCleType query, int page, int rows);
	
	public List<VehiCleType> findVehiCleType();

}
