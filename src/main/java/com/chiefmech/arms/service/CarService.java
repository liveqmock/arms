package com.chiefmech.arms.service;

import java.util.List;

import com.chiefmech.arms.entity.CarBrand;
import com.chiefmech.arms.entity.CarModel;

public interface CarService {

	public List<CarBrand> getAllCarBrand();

	public List<CarModel> findCarModelByBrandName(String brandName);

}
