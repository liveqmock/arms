package com.chiefmech.arms.service;

import java.util.List;

import com.chiefmech.arms.entity.CustomVehicle;

public interface CustomVehicleService {

	public int insertCustomVehicle(CustomVehicle item);

	public int updateCustomVehicle(CustomVehicle item);

	public CustomVehicle queryCustomVehicleByVehicleId(String txtVehicleId);

	public List<CustomVehicle> queryCustomVehicleByCustId(String txtCustId);

	public int changeCarOwner(String newCustId, String vehicleId);
}
