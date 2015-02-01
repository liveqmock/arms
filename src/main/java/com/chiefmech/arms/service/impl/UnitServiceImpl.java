package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.UnitDao;
import com.chiefmech.arms.entity.Unit;
import com.chiefmech.arms.service.UnitService;

@Service("unitService")
public class UnitServiceImpl implements UnitService {

	@Resource()
	private UnitDao unitDao;

	@Override
	public int insertItem(Unit item) {
		return unitDao.insertItem(item);
	}

	@Override
	public int updateItem(Unit item) {
		return unitDao.updateItem(item);
	}

	@Override
	public int deleteItem(String id) {
		return unitDao.deleteItem(id);
	}

	@Override
	public String getUnitEasyUiJSon(Unit query, int page, int rows) {
		List<Unit> lst = unitDao.getUnitList(query, page, rows);
		int total = unitDao.getUnitListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

}
