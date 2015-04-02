package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.common.util.SessionUtil;
import com.chiefmech.arms.dao.TaoKaDao;
import com.chiefmech.arms.entity.TaoKaItem;
import com.chiefmech.arms.entity.TaoKaSort;
import com.chiefmech.arms.service.TaoKaService;

@Service("taoKaService")
public class TaoKaServiceImpl implements TaoKaService {

	@Resource()
	private TaoKaDao taoKaDao;

	@Override
	public String getTaoKaSortEasyUiJSon() {
		List<TaoKaSort> lst = taoKaDao.getTaoKaSortList(SessionUtil
				.getShopInfo().getShopCode());

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}",
				lst.size(), lstJson);
		return jsonStr;
	}

	@Override
	public int insertTaoKaSort(TaoKaSort item) {
		return taoKaDao.insertTaoKaSort(item);
	}

	@Override
	public int updateTaoKaSort(TaoKaSort item) {
		return taoKaDao.updateTaoKaSort(item);
	}

	@Override
	public int deleteTaoKaSort(String txtGuid) {
		int rowAffected = taoKaDao.deleteAllTaoKaItemByTaoKaSortGuid(txtGuid);
		if (rowAffected >= 0) {
			rowAffected = taoKaDao.deleteTaoKaSort(txtGuid);
		}
		return rowAffected;
	}

	@Override
	public String getTaoKaItemEasyUiJSon() {
		List<TaoKaItem> lst = taoKaDao.getTaoKaItemList(SessionUtil
				.getShopInfo().getShopCode());

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}",
				lst.size(), lstJson);
		return jsonStr;
	}

	@Override
	public int insertTaoKaItem(TaoKaItem item) {
		return taoKaDao.insertTaoKaItem(item);
	}

	@Override
	public int updateTaoKaItem(TaoKaItem item) {
		return taoKaDao.updateTaoKaItem(item);
	}

	@Override
	public int deleteTaoKaItem(String txtGuid) {
		return taoKaDao.deleteTaoKaItem(txtGuid);
	}

}
