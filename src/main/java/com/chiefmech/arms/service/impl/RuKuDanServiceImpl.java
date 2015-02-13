package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.RuKuDanDao;
import com.chiefmech.arms.entity.KuCunOperLog;
import com.chiefmech.arms.entity.RuKuDan;
import com.chiefmech.arms.entity.RuKuDanWuLiao;
import com.chiefmech.arms.entity.query.CaiGouWuLiaoSearchBean;
import com.chiefmech.arms.entity.view.VCaiGouWuLiao;
import com.chiefmech.arms.service.KuCunService;
import com.chiefmech.arms.service.RuKuDanService;

@Service("ruKuDanService")
public class RuKuDanServiceImpl implements RuKuDanService {

	@Resource()
	private RuKuDanDao ruKuDanDao;
	@Resource()
	private KuCunService kuCunService;

	@Override
	public String getRuKuDanEasyUiJSon(CaiGouWuLiaoSearchBean query) {
		List<VCaiGouWuLiao> lst = ruKuDanDao.getVCaiGouWuLiaoList(query);
		int total = ruKuDanDao.getVCaiGouWuLiaoListCount(query);

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
		if (ruKuDan.getTxtStatus().equals("审核完毕")) {
			String ruKuSort = ruKuDan.getDdlRuKuSort();
			if ("日常采购".equals(ruKuSort)) {
				List<RuKuDanWuLiao> lst = ruKuDanDao
						.getRuKuDanWuLiaoList(ruKuDan.getTxtGuid());
				for (RuKuDanWuLiao ruKuDanWuLiao : lst) {
					KuCunOperLog operLog = new KuCunOperLog(ruKuDan,
							ruKuDanWuLiao);
					kuCunService.updateKuCun(operLog);
				}
			} else if ("临时采购".equals(ruKuSort)) {
				ruKuDanDao.updateCaiGouWuLiaoStatus(ruKuDan.getTxtGuid(),"已下单");
			}
		}
		return ruKuDanDao.updateRuKuDanStatus(ruKuDan);
	}

	@Override
	public String getRuKuDanWuLiaoEasyUiJSon(String txtRuKuDanGuid) {
		List<RuKuDanWuLiao> lst = ruKuDanDao
				.getRuKuDanWuLiaoList(txtRuKuDanGuid);
		int total = (lst == null) ? 0 : lst.size();

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public int updateRuKuDanWuLiao(RuKuDanWuLiao ruKuDanWuLiao) {
		return ruKuDanDao.updateRuKuDanWuLiao(ruKuDanWuLiao);
	}

	@Override
	public int insertRuKuDanWuLiao(RuKuDanWuLiao ruKuDanWuLiao) {
		return ruKuDanDao.insertRuKuDanWuLiao(ruKuDanWuLiao);
	}

	@Override
	public int deleteRuKuDanWuLiao(String txtWuLiaoGuid) {
		return ruKuDanDao.deleteRuKuDanWuLiao(txtWuLiaoGuid);
	}

}
