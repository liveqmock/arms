package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

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

		KuCun logKuCunInfo = new KuCun(operLog);
		String txtOperAction = operLog.getTxtOperAction();
		KuCun dbKuCunInfo = findExistKuCunByWuLiaoCode(
				logKuCunInfo.getTxtShopCode(), logKuCunInfo.getTxtWuLiaoCode());
		if ("修改销售价".equals(txtOperAction)) {
			rowAffected = kuCunDao.updateKuCunSalePrice(logKuCunInfo);
			operLog.setTxtQty(0);
			operLog.setTxtNewQty(dbKuCunInfo.getTxtQty());
		} else if ("日常采购".equals(txtOperAction) || "例外入库".equals(txtOperAction)
				|| "维修退库".equals(txtOperAction) || "例外出库".equals(txtOperAction)
				|| "维修出库".equals(txtOperAction)) {
			if (dbKuCunInfo != null) {
				// 出库：库存减少；退库和入库：库存增加
				boolean isKuCunPlusRequire = ("维修出库".equals(txtOperAction) || "例外出库"
						.equals(txtOperAction)) ? false : true;
				KuCun newKuCun = getUpdateKuCunInfo(dbKuCunInfo, logKuCunInfo,
						isKuCunPlusRequire);
				// 更新现有库存的数量和成本价
				rowAffected = kuCunDao.updateKuCun(newKuCun);
				operLog.setTxtNewQty(newKuCun.getTxtQty());
			} else {
				// 插入新的库存信息
				rowAffected = kuCunDao.insertKuCun(logKuCunInfo);
				operLog.setTxtNewQty(logKuCunInfo.getTxtQty());
			}
		}

		if (rowAffected == 1) {
			rowAffected = kuCunDao.insertKuCunOperLog(operLog);
		}
		return rowAffected;
	}

	/**
	 * 根据KuCunOperLog更新库存的数量和成本价信息
	 * 
	 * @param dbKuCunInfo
	 * @param operLog
	 * @param isKuCunPlusRequire
	 * @return
	 */
	private KuCun getUpdateKuCunInfo(KuCun dbKuCunInfo, KuCun logKuCunInfo,
			boolean isKuCunPlusRequire) {
		float totalAmount;
		int newQty;
		if (isKuCunPlusRequire) {
			newQty = dbKuCunInfo.getTxtQty() + logKuCunInfo.getTxtQty();
			totalAmount = dbKuCunInfo.getTxtChengBenJia()
					* dbKuCunInfo.getTxtQty()
					+ logKuCunInfo.getTxtChengBenJia()
					* logKuCunInfo.getTxtQty();
		} else {
			newQty = dbKuCunInfo.getTxtQty() - logKuCunInfo.getTxtQty();
			totalAmount = dbKuCunInfo.getTxtChengBenJia()
					* dbKuCunInfo.getTxtQty()
					- logKuCunInfo.getTxtChengBenJia()
					* logKuCunInfo.getTxtQty();
		}

		logKuCunInfo.setTxtKuCunGuid(dbKuCunInfo.getTxtKuCunGuid());
		logKuCunInfo.setTxtQty(newQty);
		if (newQty != 0) {
			logKuCunInfo.setTxtChengBenJia(totalAmount / newQty);
		} else {
			// 库存为0时显示以前的成本价
			logKuCunInfo.setTxtChengBenJia(dbKuCunInfo.getTxtChengBenJia());
		}
		return logKuCunInfo;
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
