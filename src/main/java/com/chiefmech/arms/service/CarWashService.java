package com.chiefmech.arms.service;

import com.chiefmech.arms.entity.CarWash;

public interface CarWashService {

	public int insertItem(CarWash item);

	public int updateItem(CarWash item);

	public int deleteItem(String id);

	public CarWash findItemById(String txtGuid);

	public String getCarWashEasyUiJSon(CarWash query, int page, int rows);

	int updateCarWashStatus(CarWash item);

}
