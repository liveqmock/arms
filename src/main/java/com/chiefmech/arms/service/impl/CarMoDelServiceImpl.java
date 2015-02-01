package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.CarMoDelViewDao;
import com.chiefmech.arms.entity.view.CarMoDelView;
import com.chiefmech.arms.service.CarMoDelService;

@Service("carMoDelService")
public class CarMoDelServiceImpl implements CarMoDelService {

	@Resource()
	private CarMoDelViewDao carMoDelDao;

	@Override
	public int insertItem(CarMoDelView item) {
		return carMoDelDao.insertItem(item);
	}

	@Override
	public int updateItem(CarMoDelView item) {
		return carMoDelDao.updateItem(item);
	}

	@Override
	public int deleteItem(int id) {
		return carMoDelDao.deleteItem(id);
	}

	@Override
	public String getCarMoDelEasyUiJSon(CarMoDelView query, int page, int rows) {
		List<CarMoDelView> lst = carMoDelDao.getCarMoDelList(query, page, rows);
		int total = carMoDelDao.getCarMoDelListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public List<CarMoDelView> findCarMoDel() {
		return null;
	}

}
