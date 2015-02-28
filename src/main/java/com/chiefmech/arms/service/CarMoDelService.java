package com.chiefmech.arms.service;

import java.util.List;

import com.chiefmech.arms.entity.view.CarModelView;

public interface CarModelService {

	public int insertItem(CarModelView item);

	public int updateItem(CarModelView item);

	public int deleteItem(String id);

	public String getCarMoDelEasyUiJSon(CarModelView query, int page, int rows);

	public List<CarModelView> findCarMoDel();
	
	public int insertItemCarBrand(CarModelView item);

	public int updateItemCarBrand(CarModelView item);

	public int deleteItemCarBrand(String id);
}
