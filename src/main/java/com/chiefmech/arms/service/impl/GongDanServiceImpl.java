package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.GongDanDao;
import com.chiefmech.arms.dao.WeiXiuXiangMuDao;
import com.chiefmech.arms.entity.GongDan;
import com.chiefmech.arms.entity.GongDanWeiXiuWuLiao;
import com.chiefmech.arms.entity.GongDanWeiXiuXiangMu;
import com.chiefmech.arms.entity.WeiXiuXiangMu;
import com.chiefmech.arms.entity.footer.GongDanWeiXiuWuLiaoFooter;
import com.chiefmech.arms.entity.footer.GongDanWeiXiuXiangMuFooter;
import com.chiefmech.arms.entity.query.SaleAfterGongDanSearchBean;
import com.chiefmech.arms.service.GongDanService;

@Service("gongDanService")
public class GongDanServiceImpl implements GongDanService {
	@Resource()
	private GongDanDao gongDanDao;
	@Resource()
	private WeiXiuXiangMuDao weiXiuXiangMuDao;

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
		List<GongDan> lst = gongDanDao.getGongDanListForEasyUi(query);
		int total = gongDanDao.getGongDanCountForEasyUi(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public String getWeiXiuXiangMuEasyUiJSon(WeiXiuXiangMu query, int page,
			int rows) {
		List<WeiXiuXiangMu> lst = weiXiuXiangMuDao.getWeiXiuXiangMuList(query,
				page, rows);
		int total = weiXiuXiangMuDao.getWeiXiuXiangMuListCount(query);

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
	public int updateGongDanWeiXiuXiangMuWhenZhiZuo(GongDanWeiXiuXiangMu item) {
		return gongDanDao.updateGongDanWeiXiuXiangMuWhenZhiZuo(item);
	}

	public List<GongDanWeiXiuXiangMu> getGongDanWeiXiuXiangMuListByGongDanId(
			String txtGongDanId) {
		return gongDanDao.getGongDanWeiXiuXiangMuListByGongDanId(txtGongDanId);
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
		List<GongDanWeiXiuXiangMuFooter> footerLst = gongDanDao
				.getGongDanWeiXiuXiangMuFooterListByGongDanId(txtGongDanId);

		String lstJson = JSONArray.fromObject(lst).toString();
		String footerJson = JSONArray.fromObject(footerLst).toString();
		String jsonStr = String.format(
				"{\"total\":\"%d\",\"rows\":%s,\"footer\":%s}", total, lstJson,
				footerJson);
		return jsonStr;
	}

	@Override
	public int updateGongDanWeiXiuWuLiaoWhenZhiZuo(GongDanWeiXiuWuLiao item) {
		return gongDanDao.updateGongDanWeiXiuWuLiaoWhenZhiZuo(item);
	}

	@Override
	public int deleteGongDanWeiXiuWuLiao(String txtWeiXiuWuLiaoId) {
		return gongDanDao.deleteGongDanWeiXiuWuLiao(txtWeiXiuWuLiaoId);
	}

	@Override
	public String getWeiXiuWuLiaoEasyUiJSonByGongDanId(String txtGongDanId) {
		List<GongDanWeiXiuXiangMu> lst = gongDanDao
				.getGongDanWeiXiuWuLiaoListByGongDanId(txtGongDanId);
		int total = lst.size();
		List<GongDanWeiXiuWuLiaoFooter> footerLst = gongDanDao
				.getGongDanWeiXiuWuLiaoFooterListByGongDanId(txtGongDanId);

		String lstJson = JSONArray.fromObject(lst).toString();
		String footerJson = JSONArray.fromObject(footerLst).toString();
		String jsonStr = String.format(
				"{\"total\":\"%d\",\"rows\":%s,\"footer\":%s}", total, lstJson,
				footerJson);
		return jsonStr;
	}

}
