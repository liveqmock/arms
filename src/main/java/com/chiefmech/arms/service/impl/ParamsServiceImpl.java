package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.ParamDao;
import com.chiefmech.arms.entity.Param;
import com.chiefmech.arms.service.ParamsService;

@Service("paramService")
public class ParamsServiceImpl implements ParamsService {
	@Resource()
	private ParamDao paramDao;

	@Override
	public int insertItem(Param item) {
		return paramDao.insertItem(item);
	}

	@Override
	public int updateItem(Param item) {
		return paramDao.updateItem(item);
	}

	@Override
	public int deleteItem(String id) {
		return paramDao.deleteItem(id);
	}

	@Override
	public String getParamEasyUiJSon(Param item) {
		List<Param> lst = paramDao.getParamList(item);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}",
				lst.size(), lstJson);
		return jsonStr;
	}

}
