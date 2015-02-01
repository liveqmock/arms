package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.DepartMentDao;
import com.chiefmech.arms.entity.DepartMent;
import com.chiefmech.arms.service.DepartMentService;

@Service("departMentService")
public class DepartMentServiceImpl implements DepartMentService {
	@Resource()
	private DepartMentDao departMentDao;

	@Override
	public int insertItem(DepartMent item) {
		return departMentDao.insertItem(item);
	}

	@Override
	public int updateItem(DepartMent item) {
		return departMentDao.updateItem(item);
	}

	@Override
	public int deleteItem(String id) {
		return departMentDao.deleteItem(id);
	}

	@Override
	public String getDepartMentEasyUiJSon(DepartMent query, int page, int rows) {
		List<DepartMent> lst = departMentDao.getDepartMentList(query, page, rows);
		int total = departMentDao.getDepartMentListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public List<DepartMent> selectItem() {
		return departMentDao.selectItem();
	}
	
}
