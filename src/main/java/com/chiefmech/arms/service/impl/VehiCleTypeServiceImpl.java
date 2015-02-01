package com.chiefmech.arms.service.impl;

import java.util.List;
import javax.annotation.Resource;
import net.sf.json.JSONArray;
import org.springframework.stereotype.Service;
import com.chiefmech.arms.dao.VehiCleTypeDao;
import com.chiefmech.arms.entity.VehiCleType;
import com.chiefmech.arms.service.VehiCleTypeService;

@Service("vehiCleTypeService")
public class VehiCleTypeServiceImpl implements VehiCleTypeService {

	@Resource()
	private VehiCleTypeDao vehiCleTypeDao;

	@Override
	public int insertItem(VehiCleType item) {
		return vehiCleTypeDao.insertItem(item);
	}

	@Override
	public int updateItem(VehiCleType item) {
		return vehiCleTypeDao.updateItem(item);
	}

	@Override
	public int deleteItem(int id) {
		return vehiCleTypeDao.deleteItem(id);
	}

	@Override
	public String getVehiCleTypeEasyUiJSon(VehiCleType query, int page, int rows) {
		List<VehiCleType> lst = vehiCleTypeDao.getVehiCleTypeList(query, page,
				rows);
		int total = vehiCleTypeDao.getVehiCleTypeListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public List<VehiCleType> findVehiCleType() {
		return vehiCleTypeDao.selectItem();
	}

}
