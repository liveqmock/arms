package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;
import org.springframework.stereotype.Service;
import com.chiefmech.arms.dao.ChengBaoGongSiDao;
import com.chiefmech.arms.entity.ChengBaoGongSi;
import com.chiefmech.arms.service.ChengBaoGongSiService;

@Service("chengBaoGongSiService")
public class ChengBaoGongSiServiceImpl implements ChengBaoGongSiService {

	@Resource()
	private ChengBaoGongSiDao chengBaoGongSiDao;

	@Override
	public int insertItem(ChengBaoGongSi item) {
		return chengBaoGongSiDao.insertItem(item);
	}

	@Override
	public int updateItem(ChengBaoGongSi item) {
		return chengBaoGongSiDao.updateItem(item);
	}

	@Override
	public int deleteItem(String id) {
		return chengBaoGongSiDao.deleteItem(id);
	}

	@Override
	public String getChengBaoGongSiEasyUiJSon(ChengBaoGongSi query, int page,
			int rows) {
		List<ChengBaoGongSi> lst = chengBaoGongSiDao.getChengBaoGongSiList(
				query, page, rows);
		int total = chengBaoGongSiDao.getChengBaoGongSiListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public List<ChengBaoGongSi> selectItem() {
		return chengBaoGongSiDao.selectItem();
	}

}
