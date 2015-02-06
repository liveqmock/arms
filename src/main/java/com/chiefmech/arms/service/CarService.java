package com.chiefmech.arms.service;

import java.util.List;

import com.chiefmech.arms.entity.CarBrand;
import com.chiefmech.arms.entity.CarModel;
import com.chiefmech.arms.entity.option.OptionBean;

public interface CarService {

	public List<CarBrand> getAllCarBrand();

	public List<CarModel> findCarModelByBrandName(String brandName);
	
	public List<OptionBean> getCarBrandAllOption();

	public List<OptionBean> getCarModelAllOption(String code);
}
