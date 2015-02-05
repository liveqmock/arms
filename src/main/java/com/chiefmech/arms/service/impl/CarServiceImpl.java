package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.CarDao;
import com.chiefmech.arms.entity.CarBrand;
import com.chiefmech.arms.entity.CarModel;
import com.chiefmech.arms.service.CarService;


@Service("carService")
public class CarServiceImpl implements CarService {

	@Resource()
	private CarDao carDao;
	
	@Override
	public List<CarBrand> getAllCarBrand() {
		return carDao.getAllCarBrand();
	}

	@Override
	public List<CarModel> findCarModelByBrandName(String brandName) {
		return carDao.findCarModelByBrandName(brandName);
	}

}
