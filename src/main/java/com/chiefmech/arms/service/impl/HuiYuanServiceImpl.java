package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.HuiYuanDao;
import com.chiefmech.arms.entity.HuiYuan;
import com.chiefmech.arms.service.HuiYuanService;


@Service("HuiYuanService")
public class HuiYuanServiceImpl implements HuiYuanService {
	@Resource()
	private HuiYuanDao huiYuanDao;

	@Override
	public int insertItem(HuiYuan item) {

		return huiYuanDao.insertItem(item);
	}

	@Override
	public int updateItem(HuiYuan item) {

		return huiYuanDao.updateItem(item);
	}

	@Override
	public int deleteItem(String id) {

		return huiYuanDao.deleteItem(id);
	}

	@Override
	public String getHuiYuanEasyUiJSon(HuiYuan query, int page, int rows) {
		List<HuiYuan> lst = huiYuanDao.getHuiYuanList(query, page, rows);
		int total = huiYuanDao.getHuiYuanListCount(query);
		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public String getNewHuiYuanBianHao() {
		return huiYuanDao.getNewHuiYuanBianHao();
	}

}
