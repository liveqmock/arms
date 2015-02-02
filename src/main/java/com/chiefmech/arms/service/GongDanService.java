package com.chiefmech.arms.service;

import java.util.List;

import com.chiefmech.arms.entity.GongDan;
import com.chiefmech.arms.entity.GongDanWeiXiuWuLiao;
import com.chiefmech.arms.entity.GongDanWeiXiuXiangMu;
import com.chiefmech.arms.entity.WeiXiuWuLiao;
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

	public List<GongDanWeiXiuXiangMu> getGongDanWeiXiuXiangMuListByGongDanId(
			String txtGongDanId);

	public String getWeiXiuXiangMuEasyUiJSonByGongDanId(String txtGongDanId);

	public int updateGongDanWeiXiuWuLiaoWhenZhiZuo(GongDanWeiXiuWuLiao item);

	public int updateGongDanWeiXiuXiangMuWhenPaiGong(GongDanWeiXiuXiangMu item);

	public int updateGongDanWeiXiuXiangMuWhenWanJian(GongDanWeiXiuXiangMu item);

	public int deleteGongDanWeiXiuWuLiao(String txtWeiXiuWuLiaoId);

	public String getWeiXiuWuLiaoEasyUiJSonByGongDanId(String txtGongDanId);

	public String getWeiXiuWuLiaoEasyUiJSon(WeiXiuWuLiao item, int page,
			int rows);

	public int insertGongDanWeiXiuWuLiao(String saleAfterGuid,
			List<WeiXiuWuLiao> weiXiuWuLiaoLst);

}
