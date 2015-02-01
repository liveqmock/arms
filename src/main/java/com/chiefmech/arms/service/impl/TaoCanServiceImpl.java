package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.TaoCanDao;
import com.chiefmech.arms.entity.TaoCan;
import com.chiefmech.arms.service.TaoCanService;

@Service("taoCanService")
public class TaoCanServiceImpl implements TaoCanService {
	@Resource()
	private TaoCanDao taoCanDao;

	@Override
	public int insertItem(TaoCan item) {

		return taoCanDao.insertItem(item);
	}

	@Override
	public int updateItem(TaoCan item) {

		return taoCanDao.updateItem(item);
	}

	@Override
	public int deleteItem(String id) {

		return taoCanDao.deleteItem(id);
	}

	@Override
	public String getTaoCanEasyUiJSon(TaoCan query, int page, int rows) {
		List<TaoCan> lst = taoCanDao.getTaoCanList(query, page, rows);
		int total = taoCanDao.getTaoCanListCount(query);
		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

}
