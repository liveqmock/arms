package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.CustomVehicleDao;
import com.chiefmech.arms.entity.CustomVehicle;
import com.chiefmech.arms.service.CustomVehicleService;

@Service("customVehicleService")
public class CustomVehicleServiceImpl implements CustomVehicleService {
	@Resource()
	private CustomVehicleDao customVehicleDao;

	@Override
	public int insertCustomVehicle(CustomVehicle item) {
		return customVehicleDao.insertCustomVehicle(item);
	}

	@Override
	public int updateCustomVehicle(CustomVehicle item) {
		return customVehicleDao.updateCustomVehicle(item);
	}

	@Override
	public List<CustomVehicle> queryCustomVehicleByCustId(String txtCustId) {
		return customVehicleDao.queryCustomVehicleByCustId(txtCustId);
	}

	@Override
	public CustomVehicle queryCustomVehicleByVehicleId(String txtVehicleId) {
		return customVehicleDao.queryCustomVehicleByVehicleId(txtVehicleId);
	}

	@Override
	public int changeCarOwner(String newCustId, String vehicleId) {
		return customVehicleDao.changeCarOwner(newCustId, vehicleId);
	}

}
