package com.chiefmech.arms.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.action.data.CommonData;
import com.chiefmech.arms.common.util.DateUtil;
import com.chiefmech.arms.dao.GongDanDao;
import com.chiefmech.arms.dao.WeiXiuWuLiaoDao;
import com.chiefmech.arms.dao.WeiXiuXiangMuDao;
import com.chiefmech.arms.entity.GongDan;
import com.chiefmech.arms.entity.GongDanCheLiangJianCe;
import com.chiefmech.arms.entity.GongDanJieSuan;
import com.chiefmech.arms.entity.GongDanWeiXiuWuLiao;
import com.chiefmech.arms.entity.GongDanWeiXiuXiangMu;
import com.chiefmech.arms.entity.JianChaXiangMu;
import com.chiefmech.arms.entity.JieSuanItem;
import com.chiefmech.arms.entity.KuCun;
import com.chiefmech.arms.entity.KuCunOperLog;
import com.chiefmech.arms.entity.WeiXiuWuLiao;
import com.chiefmech.arms.entity.WeiXiuXiangMu;
import com.chiefmech.arms.entity.query.SaleAfterGongDanSearchBean;
import com.chiefmech.arms.entity.view.VCaiGouWuLiao;
import com.chiefmech.arms.service.GongDanService;
import com.chiefmech.arms.service.KuCunService;

@Service("gongDanService")
public class GongDanServiceImpl implements GongDanService {
	@Resource()
	private GongDanDao gongDanDao;
	@Resource()
	private WeiXiuXiangMuDao weiXiuXiangMuDao;
	@Resource()
	private WeiXiuWuLiaoDao weiXiuWuLiaoDao;
	@Resource()
	private KuCunService kuCunService;

	@Override
	public GongDan findGongDanByWeiXiuGuid(String txtGongDanId) {
		return gongDanDao.findGongDanByWeiXiuGuid(txtGongDanId);
	}

	@Override
	public int insertWeiXiuJieDai(GongDan item) {
		return gongDanDao.insertWeiXiuJieDai(item);
	}

	@Override
	public int updateWeiXiuJieDai(GongDan item) {
		return gongDanDao.updateWeiXiuJieDai(item);
	}

	@Override
	public String getNewBillNo() {
		return gongDanDao.getNewBillNo();
	}

	@Override
	public String getSaleAfterGongDanEasyUiJSon(SaleAfterGongDanSearchBean query) {
		query.setTxtDeleteFlag("0");
		List<GongDan> lst = gongDanDao.getGongDanListForEasyUi(query);
		int total = gongDanDao.getGongDanCountForEasyUi(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public int insertGongDanWeiXiuXiangMu(String saleAfterGuid,
			List<WeiXiuXiangMu> weiXiuXiangMuLst) {
		boolean isAllItemInserted = true;
		int rowAffected = 0;
		for (WeiXiuXiangMu weiXiuXiangMuItem : weiXiuXiangMuLst) {
			GongDanWeiXiuXiangMu gongDanWeiXiuXiangMu = new GongDanWeiXiuXiangMu(
					saleAfterGuid, weiXiuXiangMuItem);
			rowAffected = gongDanDao
					.insertGongDanWeiXiuXiangMu(gongDanWeiXiuXiangMu);
			if (rowAffected != 1) {
				isAllItemInserted = false;
				break;
			}
		}

		return isAllItemInserted ? 1 : 0;
	}

	@Override
	public int updateGongDanWeiXiuXiangMuWhenAddXiangMu(
			GongDanWeiXiuXiangMu item) {
		return gongDanDao.updateGongDanWeiXiuXiangMuWhenAddXiangMu(item);
	}

	@Override
	public int updateGongDanWeiXiuXiangMuWhenPaiGong(GongDanWeiXiuXiangMu item) {
		return gongDanDao.updateGongDanWeiXiuXiangMuWhenPaiGong(item);
	}

	public List<GongDanWeiXiuXiangMu> getGongDanWeiXiuXiangMuListByGongDanId(
			String txtGongDanId) {
		return gongDanDao.getGongDanWeiXiuXiangMuListByGongDanId(txtGongDanId);
	}

	@Override
	public int updateGongDanStatus(String txtGongDanId, String txtGongDanStatus) {
		int rowAffected = gongDanDao.updateGongDanStatus(txtGongDanId,
				txtGongDanStatus);
		if (rowAffected == 1 && txtGongDanStatus.equals("交车")) {
			rowAffected = gongDanDao.updateChuChangDate(txtGongDanId,
					DateUtil.getCurrentDate());
		}
		return rowAffected;
	}

	@Override
	public int revertGongDanStatus(String txtGongDanId) {
		String statusChain = gongDanDao.getGongDanStatusChain(txtGongDanId);
		String preStatusChain = statusChain.substring(0,
				statusChain.lastIndexOf('|'));
		String preStatus = preStatusChain.substring(preStatusChain
				.lastIndexOf('|') + 1);

		return gongDanDao.revertGongDanStatus(txtGongDanId, preStatus,
				preStatusChain);
	}

	@Override
	public int updateGongDanZhiFuFangShi(String txtGongDanId, GongDan gongDan) {
		return gongDanDao.updateGongDanZhiFuFangShi(txtGongDanId,
				gongDan.getDdlZhiFuFangShi(), gongDan.getTxtFinalPay());
	}

	@Override
	public int deleteGongDanWeiXiuXiangMu(String txtWeiXiuXiangMuId) {
		return gongDanDao.deleteGongDanWeiXiuXiangMu(txtWeiXiuXiangMuId);
	}

	@Override
	public String getWeiXiuXiangMuEasyUiJSonByGongDanId(String txtGongDanId) {
		List<GongDanWeiXiuXiangMu> lst = gongDanDao
				.getGongDanWeiXiuXiangMuListByGongDanId(txtGongDanId);
		int total = lst.size();
		/*
		 * List<GongDanWeiXiuXiangMuFooter> footerLst = gongDanDao
		 * .getGongDanWeiXiuXiangMuFooterListByGongDanId(txtGongDanId);
		 */

		String lstJson = JSONArray.fromObject(lst).toString();
		// String footerJson = JSONArray.fromObject(footerLst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public int updateGongDanWeiXiuWuLiaoWhenAddWuLiao(GongDanWeiXiuWuLiao item) {
		return gongDanDao.updateGongDanWeiXiuWuLiaoWhenAddWuLiao(item);
	}

	@Override
	public int updateGongDanWeiXiuXiangMuWhenWanJian(GongDanWeiXiuXiangMu item) {
		return gongDanDao.updateGongDanWeiXiuXiangMuWhenWanJian(item);
	}

	@Override
	public int wanJianAllGongDanWeiXiuXiangMu(String txtGongDanId,
			String txtWanJianRen, String txtWanJianShiJian) {
		return gongDanDao.wanJianAllGongDanWeiXiuXiangMu(txtGongDanId,
				txtWanJianRen, txtWanJianShiJian);
	}

	@Override
	public int deleteGongDanWeiXiuWuLiao(String txtWeiXiuWuLiaoId) {
		return gongDanDao.deleteGongDanWeiXiuWuLiao(txtWeiXiuWuLiaoId);
	}

	@Override
	public String getGongDanCheLiangJianCeEasyUiJSonByGongDanId(
			String txtGongDanId) {
		List<GongDanCheLiangJianCe> lst = gongDanDao
				.getGongDanCheLiangJianCeListByGongDanId(txtGongDanId);
		int total = lst.size();

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public String getWeiXiuWuLiaoEasyUiJSonByGongDanId(String txtGongDanId) {
		List<GongDanWeiXiuWuLiao> lst = gongDanDao
				.getGongDanWeiXiuWuLiaoListByGongDanId(txtGongDanId);
		int total = lst.size();
		/*
		 * List<GongDanWeiXiuWuLiaoFooter> footerLst = gongDanDao
		 * .getGongDanWeiXiuWuLiaoFooterListByGongDanId(txtGongDanId);
		 */

		String lstJson = JSONArray.fromObject(lst).toString();
		/*
		 * String footerJson = JSONArray.fromObject(footerLst).toString();
		 * String jsonStr = String.format(
		 * "{\"total\":\"%d\",\"rows\":%s,\"footer\":%s}", total, lstJson);
		 */
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public String getWeiXiuWuLiaoEasyUiJSon(WeiXiuWuLiao item, int page,
			int rows) {
		List<WeiXiuWuLiao> lst = weiXiuWuLiaoDao.getWeiXiuWuLiaoList(item,
				page, rows);
		int total = weiXiuWuLiaoDao.getWeiXiuWuLiaoListCount(item);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public int addGongDanWeiXiuWuLiaoFromKuCun(String saleAfterGuid,
			List<KuCun> weiXiuWuLiaoLst) {
		for (KuCun item : weiXiuWuLiaoLst) {
			GongDanWeiXiuWuLiao gongDanWuLiao = new GongDanWeiXiuWuLiao(
					saleAfterGuid, item);
			gongDanDao.insertGongDanWeiXiuWuLiao(gongDanWuLiao);
			kuCunService.updateKuCun(new KuCunOperLog(gongDanWuLiao, "维修出库"));
		}

		return 1;
	}

	@Override
	public int withdrawGongDanWeiXiuWuLiao(String txtWuLiaoGuid) {
		GongDanWeiXiuWuLiao gongDanWuLiao = gongDanDao
				.getGongDanWeiXiuWuLiaoByWuLiaoId(txtWuLiaoGuid);
		gongDanDao.deleteGongDanWeiXiuWuLiao(txtWuLiaoGuid);
		kuCunService.updateKuCun(new KuCunOperLog(gongDanWuLiao, "维修退库"));
		return 1;
	}

	@Override
	public int addGongDanWeiXiuWuLiaoFromCaiGou(String saleAfterGuid,
			List<VCaiGouWuLiao> weiXiuWuLiaoLst) {
		boolean isAllItemInserted = true;
		int rowAffected = 0;
		for (VCaiGouWuLiao item : weiXiuWuLiaoLst) {
			GongDanWeiXiuWuLiao gongDanWeiXiuWuLiao = new GongDanWeiXiuWuLiao(
					saleAfterGuid, item);
			rowAffected = gongDanDao
					.insertGongDanWeiXiuWuLiao(gongDanWeiXiuWuLiao);
			if (rowAffected != 1) {
				isAllItemInserted = false;
				break;
			}
		}

		return isAllItemInserted ? 1 : 0;
	}

	@Override
	public List<GongDan> getGongDanListByCheLiangId(String txtCheLiangId) {
		return gongDanDao.getGongDanListByCheLiangId(txtCheLiangId);
	}

	@Override
	public List<GongDanWeiXiuXiangMu> findGongDanXiangMuLstByWeiXiuGuid(
			String txtGongDanId) {
		return gongDanDao.findGongDanXiangMuLstByWeiXiuGuid(txtGongDanId);
	}

	@Override
	public List<GongDanWeiXiuWuLiao> findGongDanWuLiaoLstByWeiXiuGuid(
			String txtGongDanId) {
		return gongDanDao.findGongDanWuLiaoLstByWeiXiuGuid(txtGongDanId);
	}

	@Override
	public int addAllJianCeItemsToGongDan(String txtGongDanId,
			List<JianChaXiangMu> jianChaXiangMuList) {
		return gongDanDao.addAllJianCeItemsToGongDan(txtGongDanId,
				jianChaXiangMuList);
	}

	@Override
	public int updateGongDanCheLiangJianCe(List<GongDanCheLiangJianCe> itemLst) {
		return gongDanDao.updateGongDanJianCeList(itemLst);
	}

	@Override
	public int updateGongDanReviewStatus(GongDan item) {
		return gongDanDao.updateGongDanReviewStatus(item);
	}

	@Override
	public int updateGongDanWeiXiuWuLiaoWhenLingQuWuLiao(
			GongDanWeiXiuWuLiao item) {
		int rowAffected = 0;
		String wuLiaoLaiYuan = item.getTxtLaiYuan();
		if ("采购".equals(wuLiaoLaiYuan)) {
			rowAffected = gongDanDao.updateGongDanWeiXiuWuLiaoWhenLingQuWuLiao(
					item.getTxtWuLiaoGuid(), "已收货");
		} else if ("库存".equals(wuLiaoLaiYuan)) {
			item.setDdlStatus("已出库");
			rowAffected = gongDanDao
					.updateGongDanWuLiaoStatusWhenLingQuWuLiao(item);
			if (rowAffected != -1) {
				KuCunOperLog operLog = new KuCunOperLog(item, "维修出库");
				rowAffected = kuCunService.updateKuCun(operLog);
			}
		}
		return rowAffected;
	}

	@Override
	public GongDanJieSuan getGongDanJieSuanXinXi(GongDan gongDan) {
		String gongDanId = gongDan.getTxtGongDanId();
		float gongShiZheKou = gongDan.getTxtGongShiZheKou();
		float wuLiaoZheKou = gongDan.getTxtCaiLiaoZheKou();

		List<JieSuanItem> gongShiFeiLst = gongDanDao
				.getGongShiFeiLst(gongDanId);
		List<JieSuanItem> wuLiaoFeiLst = gongDanDao.getWuLiaoFeiLst(gongDanId);

		Map<String, Float> gongShiMap = new HashMap<String, Float>();
		for (JieSuanItem item : gongShiFeiLst) {
			gongShiMap.put(item.getZhangtao(), item.getGongshiFei());
		}

		Map<String, Float> wuLiaoMap = new HashMap<String, Float>();
		for (JieSuanItem item : wuLiaoFeiLst) {
			wuLiaoMap.put(item.getZhangtao(), item.getWuLiaoFei());
		}

		List<JieSuanItem> jieSuanLst = new ArrayList<JieSuanItem>();
		for (String zhangTao : CommonData.zhangTaoLst) {
			Float gongshiFeiObj = gongShiMap.get(zhangTao);
			float gongshiFei = (gongshiFeiObj == null) ? 0 : gongshiFeiObj
					.floatValue();
			Float wuLiaoFeiObj = wuLiaoMap.get(zhangTao);
			float wuLiaoFei = (wuLiaoFeiObj == null) ? 0 : wuLiaoFeiObj
					.floatValue();

			JieSuanItem item = new JieSuanItem(zhangTao, gongshiFei, wuLiaoFei,
					gongShiZheKou, wuLiaoZheKou);
			jieSuanLst.add(item);
		}

		return new GongDanJieSuan(jieSuanLst, gongShiZheKou, wuLiaoZheKou);
	}

	@Override
	public int deleteGongDan(String txtGongDanId) {
		return gongDanDao.deleteGongDan(txtGongDanId);
	}

	@Override
	public boolean isRequestWuLiaoFree(GongDanWeiXiuWuLiao item) {
		boolean isFree = true;
		if ("库存".equals(item.getTxtLaiYuan())) {
			KuCun kuCun = kuCunService.findExistKuCunByWuLiaoCode(
					item.getTxtShopCode(), item.getTxtWuLiaoCode());
			if (kuCun == null || kuCun.getTxtQty() < item.getTxtQty()) {
				isFree = false;
			}
		}

		return isFree;
	}

	@Override
	public List<GongDanCheLiangJianCe> getGongDanCheLiangJianCeListByGongDanId(
			String txtGongDanId) {
		return gongDanDao.getGongDanCheLiangJianCeListByGongDanId(txtGongDanId);
	}
}
