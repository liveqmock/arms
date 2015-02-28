package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.CarModelViewDao;
import com.chiefmech.arms.entity.view.CarModelView;
import com.chiefmech.arms.service.CarModelService;

@Service("carModelService")
public class CarModelServiceImpl implements CarModelService {

	@Resource()
	private CarModelViewDao carModelDao;

	@Override
	public int insertItem(CarModelView item) {
		return carModelDao.insertItem(item);
	}

	@Override
	public int updateItem(CarModelView item) {
		return carModelDao.updateItem(item);
	}

	@Override
	public int deleteItem(String id) {
		return carModelDao.deleteItem(id);
	}

	@Override
	public String getCarMoDelEasyUiJSon(CarModelView query, int page, int rows) {
		List<CarModelView> lst = carModelDao.getCarModelList(query, page, rows);
		int total = carModelDao.getCarModelListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public List<CarModelView> findCarMoDel() {
		return carModelDao.selectItem();
	}

	@Override
	public int insertItemCarBrand(CarModelView item) {
		if(carModelDao.isBrand(item.getBrandName())>=1){
			return 0;
		}
		return carModelDao.insertItemCarbrand(item);
	}

	@Override
	public int updateItemCarBrand(CarModelView item) {
		return carModelDao.updateItemCarbrand(item);
	}

	@Override
	public int deleteItemCarBrand(String id) {
		carModelDao.deleteCarModelItemByBrandId(id);
		return  carModelDao.deleteItemCarbrand(id);
	}

}
