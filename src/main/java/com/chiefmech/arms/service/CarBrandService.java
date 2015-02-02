package com.chiefmech.arms.service;

import java.util.List;
import com.chiefmech.arms.entity.CarBrand;

public interface CarBrandService {

	public int insertItem(CarBrand item);

	public int updateItem(CarBrand item);

	public int deleteItem(int id);

	public String getCarBrandEasyUiJSon(CarBrand query, int page, int rows);

	public List<CarBrand> findCarBrand();
	
	
}
