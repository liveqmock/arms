package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.RuKuDanDao;
import com.chiefmech.arms.entity.RuKuDan;
import com.chiefmech.arms.entity.query.RuKuDanSearchBean;
import com.chiefmech.arms.service.RuKuDanService;

@Service("ruKuDanService")
public class RuKuDanServiceImpl implements RuKuDanService {

	@Resource()
	private RuKuDanDao ruKuDanDao;

	@Override
	public String getRuKuDanEasyUiJSon(RuKuDanSearchBean query) {
		List<RuKuDan> lst = ruKuDanDao.getRuKuDanList(query);
		int total = ruKuDanDao.getRuKuDanListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public String getNewBillNo() {
		return ruKuDanDao.getNewBillNo();
	}

	@Override
	public int insertRuKuDan(RuKuDan ruKuDan) {
		return ruKuDanDao.insertRuKuDan(ruKuDan);
	}

	@Override
	public int updateRuKuDan(RuKuDan ruKuDan) {
		return ruKuDanDao.updateRuKuDan(ruKuDan);
	}

	@Override
	public RuKuDan findRuKuDanByGuid(String txtGuid) {
		return ruKuDanDao.findRuKuDanByGuid(txtGuid);
	}

	@Override
	public int updateRuKuDanStatus(RuKuDan ruKuDan) {
		return ruKuDanDao.updateRuKuDanStatus(ruKuDan);
	}

}
