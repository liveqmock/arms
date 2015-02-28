package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.CarWashDao;
import com.chiefmech.arms.entity.CarWash;
import com.chiefmech.arms.service.CarWashService;

@Service("carWashService")
public class CarWashServiceImpl implements CarWashService {

	@Resource()
	private CarWashDao carWashDao;

	@Override
	public int insertItem(CarWash item) {
		return carWashDao.insertItem(item);
	}

	@Override
	public int updateItem(CarWash item) {
		return carWashDao.updateItem(item);
	}

	@Override
	public int deleteItem(String id) {
		return carWashDao.deleteItem(id);
	}

	@Override
	public String getCarWashEasyUiJSon(CarWash query, int page, int rows) {
		List<CarWash> lst = carWashDao.getCarWashList(query, page, rows);
		int total = carWashDao.getCarWashListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public CarWash findItemById(String txtGuid) {
		return carWashDao.findItemById(txtGuid);
	}

	@Override
	public int updateCarWashStatus(CarWash item) {
		return carWashDao.updateCarWashStatus(item);
	}

}
