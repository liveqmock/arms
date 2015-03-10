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
		int rowAffected = -1;

		KuCun logKuCun = new KuCun(operLog);
		String txtOperAction = operLog.getTxtOperAction();
		if ("修改销售价".equals(txtOperAction)) {
			rowAffected = kuCunDao.updateKuCunSalePrice(logKuCun);
		} else if ("日常采购".equals(txtOperAction)) {
			KuCun kuCun = findExistKuCunByWuLiaoCode(logKuCun.getTxtShopCode(),
					logKuCun.getTxtWuLiaoCode());
			if (kuCun != null) {
				// 更新现有库存的数量和成本价
				KuCun newKuCun = getUpdateKuCunInfo(kuCun, operLog, true);
				rowAffected = kuCunDao.updateKuCun(newKuCun);
			} else {
				// 插入新的库存信息
				rowAffected = kuCunDao.insertKuCun(logKuCun);
			}
		} else if ("维修出库".equals(txtOperAction)) {
			KuCun kuCun = findExistKuCunByWuLiaoCode(logKuCun.getTxtShopCode(),
					logKuCun.getTxtWuLiaoCode());
			KuCun newKuCun = getUpdateKuCunInfo(kuCun, operLog, false);
			// 更新现有库存的数量和成本价
			rowAffected = kuCunDao.updateKuCun(newKuCun);
		}

		if (rowAffected == 1) {
			rowAffected = kuCunDao.insertKuCunOperLog(operLog);
		}
		return rowAffected;
	}

	/**
	 * 根据KuCunOperLog更新库存的数量和成本价信息
	 * 
	 * @param kuCun
	 * @param operLog
	 * @param isKuCunPlusRequire
	 * @return
	 */
	private KuCun getUpdateKuCunInfo(KuCun kuCun, KuCunOperLog operLog,
			boolean isKuCunPlusRequire) {
		float totalAmount;
		int newQty;
		if (isKuCunPlusRequire) {
			newQty = kuCun.getTxtQty() + operLog.getTxtQty();
			totalAmount = kuCun.getTxtChengBenJia() * kuCun.getTxtQty()
					+ operLog.getTxtChengBenJia() * operLog.getTxtQty();
		} else {
			newQty = kuCun.getTxtQty() - operLog.getTxtQty();
			totalAmount = kuCun.getTxtChengBenJia() * kuCun.getTxtQty()
					- operLog.getTxtChengBenJia() * operLog.getTxtQty();
		}
		kuCun.setTxtQty(newQty);

		if (newQty != 0) {
			kuCun.setTxtChengBenJia(totalAmount / newQty);
		} else {
			// 库存为0时显示以前的成本价
		}
		return kuCun;
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
	public String getKuCunOperLogEasyUiJSon(KuCunOperLogSearchBean query) {
		List<KuCunOperLog> lst = kuCunDao.getKuCunOperLogList(query);
		int total = kuCunDao.getKuCunOperLogListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public KuCun findExistKuCunByWuLiaoCode(String txtShopCode,
			String txtWuLiaoCode) {
		return kuCunDao.findExistKuCunByWuLiaoCode(txtShopCode, txtWuLiaoCode);
	}

}
