package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.StoreDao;
import com.chiefmech.arms.entity.Store;
import com.chiefmech.arms.service.StoreService;

@Service("storeService")
public class StoreServiceImpl implements StoreService {
	@Resource()
	private StoreDao storeDao;

	@Override
	public int insertItem(Store item) {
		return storeDao.insertItem(item);
	}

	@Override
	public int updateItem(Store item) {
		return storeDao.updateItem(item);
	}

	@Override
	public int deleteItem(String id) {
		return storeDao.deleteItem(id);
	}

	@Override
	public String getStoreEasyUiJSon(Store query, int page, int rows) {
		List<Store> lst = storeDao.getStoreList(query, page, rows);
		int total = storeDao.getStoreListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public List<Store> selectItem() {
		return storeDao.selectItem();
	}

}
