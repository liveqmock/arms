package com.chiefmech.arms.service;

import com.chiefmech.arms.entity.GongDan;
import com.chiefmech.arms.entity.query.SaleAfterGongDanSearchBean;

public interface GongDanService {

	public GongDan findGongDanByWeiXiuGuid(String txtGongDanId);

	public int insertWeiXiuJieDai(GongDan item);

	public int updateWeiXiuJieDai(GongDan item);

	public String getNewBillNo();
	
	public String getSaleAfterGongDanEasyUiJSon(SaleAfterGongDanSearchBean query);

}
