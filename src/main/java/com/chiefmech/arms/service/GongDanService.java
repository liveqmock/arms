package com.chiefmech.arms.service;

import java.util.List;

import com.chiefmech.arms.entity.GongDan;
import com.chiefmech.arms.entity.GongDanCheLiangJianCe;
import com.chiefmech.arms.entity.GongDanJieSuan;
import com.chiefmech.arms.entity.GongDanWeiXiuWuLiao;
import com.chiefmech.arms.entity.GongDanWeiXiuXiangMu;
import com.chiefmech.arms.entity.KuCun;
import com.chiefmech.arms.entity.WeiXiuWuLiao;
import com.chiefmech.arms.entity.WeiXiuXiangMu;
import com.chiefmech.arms.entity.query.SaleAfterGongDanSearchBean;
import com.chiefmech.arms.entity.view.VCaiGouWuLiao;

public interface GongDanService {

	public GongDan findGongDanByWeiXiuGuid(String txtGongDanId);

	public int insertWeiXiuJieDai(GongDan item);

	public int updateWeiXiuJieDai(GongDan item);

	public String getNewBillNo();

	public String getSaleAfterGongDanEasyUiJSon(SaleAfterGongDanSearchBean query);

	public int insertGongDanWeiXiuXiangMu(String saleAfterGuid,
			List<WeiXiuXiangMu> weiXiuXiangMuLst);

	public int updateGongDanWeiXiuXiangMuWhenAddXiangMu(
			GongDanWeiXiuXiangMu item);

	public int deleteGongDanWeiXiuXiangMu(String txtWeiXiuXiangMuId);

	public List<GongDanWeiXiuXiangMu> getGongDanWeiXiuXiangMuListByGongDanId(
			String txtGongDanId);

	public String getWeiXiuXiangMuEasyUiJSonByGongDanId(String txtGongDanId);

	public int updateGongDanWeiXiuWuLiaoWhenAddWuLiao(GongDanWeiXiuWuLiao item);

	public int updateGongDanWeiXiuXiangMuWhenPaiGong(GongDanWeiXiuXiangMu item);

	public int updateGongDanWeiXiuXiangMuWhenWanJian(GongDanWeiXiuXiangMu item);

	public int deleteGongDanWeiXiuWuLiao(String txtWeiXiuWuLiaoId);

	public String getWeiXiuWuLiaoEasyUiJSonByGongDanId(String txtGongDanId);

	public String getWeiXiuWuLiaoEasyUiJSon(WeiXiuWuLiao item, int page,
			int rows);

	public int addGongDanWeiXiuWuLiaoFromKuCun(String saleAfterGuid,
			List<KuCun> weiXiuWuLiaoLst);

	public int updateGongDanStatus(String saleAfterWeiXiuGuid,
			String txtGongDanStatus);

	public List<GongDan> getGongDanListByCheLiangId(String txtCheLiangId);

	public List<GongDanWeiXiuXiangMu> findGongDanXiangMuLstByWeiXiuGuid(
			String saleAfterWeiXiuGuid);

	public List<GongDanWeiXiuWuLiao> findGongDanWuLiaoLstByWeiXiuGuid(
			String saleAfterWeiXiuGuid);

	public String queryZhuXiuRen(String weiXiuBanZu);

	public String getGongDanCheLiangJianCeEasyUiJSonByGongDanId(
			String saleAfterWeiXiuGuid);

	public int insertCheLiangJianCe(GongDanCheLiangJianCe item);

	public int updateGongDanCheLiangJianCe(List<GongDanCheLiangJianCe> itemLst);

	public int addGongDanWeiXiuWuLiaoFromCaiGou(String saleAfterWeiXiuGuid,
			List<VCaiGouWuLiao> weiXiuWuLiaoLst);

	public int updateGongDanWeiXiuWuLiaoWhenLingQuWuLiao(
			GongDanWeiXiuWuLiao gongDanWeiXiuWuLiao);

	public GongDanJieSuan getGongDanJieSuanXinXi(GongDan gongDan);

	public int updateGongDanZhiFuFangShi(String saleAfterWeiXiuGuid,
			GongDan gongDan);

	public int updateGongDanReviewStatus(GongDan item);

	public int deleteGongDan(String saleAfterWeiXiuGuid);

	public int revertGongDanStatus(String saleAfterWeiXiuGuid);

	public int wanJianAllGongDanWeiXiuXiangMu(String txtGongDanId,
			String txtWanJianRen, String txtWanJianShiJian);
}
