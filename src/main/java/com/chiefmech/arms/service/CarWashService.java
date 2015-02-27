package com.chiefmech.arms.service;

import com.chiefmech.arms.entity.CarWash;

public interface CarWashService {

	public int insertItem(CarWash item);

	public int updateItem(CarWash item);

	public int deleteItem(String id);

	public String getCarWashEasyUiJSon(CarWash query, int page, int rows);

}
