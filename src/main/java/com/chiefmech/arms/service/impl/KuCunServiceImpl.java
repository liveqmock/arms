package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.dao.KuCunDao;
import com.chiefmech.arms.entity.KuCun;
import com.chiefmech.arms.entity.KuCunOperLog;
import com.chiefmech.arms.entity.query.KuCunOperLogSearchBean;
import com.chiefmech.arms.service.KuCunService;

@Service("kuCunService")
public class KuCunServiceImpl implements KuCunService {

	@Resource()
	private KuCunDao kuCunDao;

	@Override
	public int updateKuCun(KuCunOperLog operLog) {
		int rowAffected;
		KuCun logKuCun = new KuCun(operLog);
		if (kuCunDao.isKuCunExist(logKuCun)) {
			// 更新现有库存信息
			KuCun kuCun = kuCunDao.findExistKuCun(logKuCun);
			logKuCun.setTxtKuCunGuid(kuCun.getTxtKuCunGuid());
			float totalAmount;
			int newQty;
			if (operLog.isKuCunPlusRequire()) {
				newQty = kuCun.getTxtQty() + operLog.getTxtQty();
				totalAmount = kuCun.getTxtChengBenJia() * kuCun.getTxtQty()
						+ operLog.getTxtChengBenJia() * operLog.getTxtQty();
			} else {
				newQty = kuCun.getTxtQty() - operLog.getTxtQty();
				totalAmount = kuCun.getTxtChengBenJia() * kuCun.getTxtQty()
						- operLog.getTxtChengBenJia() * operLog.getTxtQty();
			}
			kuCun.setTxtQty(newQty);
			kuCun.setTxtChengBenJia(newQty == 0 ? 0 : totalAmount / newQty);
			rowAffected = kuCunDao.updateKuCun(kuCun);
		} else {
			// 插入新的库存信息
			logKuCun.setTxtKuCunGuid(IDGen.getUUID());
			rowAffected = kuCunDao.insertKuCun(logKuCun);
		}
		if (rowAffected == 1) {
			rowAffected = kuCunDao.insertKuCunOperLog(operLog);
		}
		return rowAffected;
	}

	@Override
	public String getKuCunEasyUiJSon(String saleAfterWeiXiuGuid, KuCun query,
			int page, int rows) {
		List<KuCun> lst = kuCunDao.getKuCunList(saleAfterWeiXiuGuid, query,
				page, rows);
		int total = kuCunDao.getKuCunListCount(saleAfterWeiXiuGuid, query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public int updateJiShiKuCun(KuCun item) {
		return kuCunDao.updateJiShiKuCun(item);
	}

	@Override
	public String getKuCunOperLogEasyUiJSon(KuCunOperLogSearchBean query) {
		List<KuCunOperLog> lst = kuCunDao.getKuCunOperLogList(query);
		int total = kuCunDao.getKuCunOperLogListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

}
