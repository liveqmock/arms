package com.chiefmech.arms.service;

import java.util.List;

import com.chiefmech.arms.entity.view.CarMoDelView;

public interface CarMoDelService {

	public int insertItem(CarMoDelView item);

	public int updateItem(CarMoDelView item);

	public int deleteItem(int id);

	public String getCarMoDelEasyUiJSon(CarMoDelView query, int page, int rows);

	public List<CarMoDelView> findCarMoDel();
}
