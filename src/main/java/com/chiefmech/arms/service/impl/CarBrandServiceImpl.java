package com.chiefmech.arms.service.impl;

import java.util.List;
import javax.annotation.Resource;
import net.sf.json.JSONArray;
import org.springframework.stereotype.Service;
import com.chiefmech.arms.dao.CarBrandDao;
import com.chiefmech.arms.entity.CarBrand;
import com.chiefmech.arms.service.CarBrandService;

@Service("carBrandService")
public class CarBrandServiceImpl implements CarBrandService {

	@Resource()
	private CarBrandDao carBrandDao;

	@Override
	public int insertItem(CarBrand item) {
		return carBrandDao.insertItem(item);
	}

	@Override
	public int updateItem(CarBrand item) {
		return carBrandDao.updateItem(item);
	}

	@Override
	public int deleteItem(int id) {
		return carBrandDao.deleteItem(id);
	}

	@Override
	public String getCarBrandEasyUiJSon(CarBrand query, int page, int rows) {
		List<CarBrand> lst = carBrandDao.getCarBrandList(query, page, rows);
		int total = carBrandDao.getCarBrandListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public List<CarBrand> findCarBrand() {
		return carBrandDao.selectItem();
	}

}
