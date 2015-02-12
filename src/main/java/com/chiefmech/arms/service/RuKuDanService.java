package com.chiefmech.arms.service;

import com.chiefmech.arms.entity.RuKuDan;
import com.chiefmech.arms.entity.RuKuDanWuLiao;
import com.chiefmech.arms.entity.query.CaiGouWuLiaoSearchBean;

public interface RuKuDanService {

	public String getRuKuDanEasyUiJSon(CaiGouWuLiaoSearchBean query);

	public String getNewBillNo();

	public int insertRuKuDan(RuKuDan ruKuDan);

	public int updateRuKuDan(RuKuDan ruKuDan);

	public RuKuDan findRuKuDanByGuid(String ruKuDanGuid);

	public int updateRuKuDanStatus(RuKuDan ruKuDan);

	public String getRuKuDanWuLiaoEasyUiJSon(String ruKuDanGuid);

	public int updateRuKuDanWuLiao(RuKuDanWuLiao ruKuDanWuLiao);

	public int insertRuKuDanWuLiao(RuKuDanWuLiao ruKuDanWuLiao);

	public int deleteRuKuDanWuLiao(String txtWuLiaoGuid);

}
