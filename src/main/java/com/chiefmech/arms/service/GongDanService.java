package com.chiefmech.arms.service;

import java.util.List;

import com.chiefmech.arms.entity.GongDan;
import com.chiefmech.arms.entity.GongDanWeiXiuXiangMu;
import com.chiefmech.arms.entity.WeiXiuXiangMu;
import com.chiefmech.arms.entity.query.SaleAfterGongDanSearchBean;

public interface GongDanService {

	public GongDan findGongDanByWeiXiuGuid(String txtGongDanId);

	public int insertWeiXiuJieDai(GongDan item);

	public int updateWeiXiuJieDai(GongDan item);

	public String getNewBillNo();

	public String getSaleAfterGongDanEasyUiJSon(SaleAfterGongDanSearchBean query);

	public String getWeiXiuXiangMuEasyUiJSon(WeiXiuXiangMu query, int page,
			int rows);

	public int insertGongDanWeiXiuXiangMu(String saleAfterGuid,
			List<WeiXiuXiangMu> weiXiuXiangMuLst);

	public int updateGongDanWeiXiuXiangMuWhenZhiZuo(GongDanWeiXiuXiangMu item);

	public int deleteGongDanWeiXiuXiangMu(String txtWeiXiuXiangMuId);

	public String getWeiXiuXiangMuEasyUiJSonByGongDanId(String txtGongDanId);
}
