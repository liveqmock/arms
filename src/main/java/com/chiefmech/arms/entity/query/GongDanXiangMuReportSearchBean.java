package com.chiefmech.arms.entity.query;

import com.chiefmech.arms.common.util.SessionUtil;
import com.chiefmech.arms.entity.query.Criteria.Action;

public class GongDanXiangMuReportSearchBean extends SearchBean {

	private String txtRuChangDateBegin;
	private String txtRuChangDateEnd;
	private String txtXiangMuName;

	@Override
	public void initSearchFields() {
		this.addField(new Criteria(Action.LIKE, "txtXiangMuName",
				txtXiangMuName));
		this.addField(new Criteria(Action.DATE_BETWEEN, "txtRuChangDate",
				txtRuChangDateBegin, txtRuChangDateEnd));
		this.addField(new Criteria(Action.STR_EQUAL, "shopCode", SessionUtil
				.getShopInfo().getShopCode()));
	}

	public String getTxtXiangMuName() {
		return txtXiangMuName;
	}

	public void setTxtXiangMuName(String txtXiangMuName) {
		this.txtXiangMuName = txtXiangMuName;
	}

	public String getTxtRuChangDateBegin() {
		return txtRuChangDateBegin;
	}

	public void setTxtRuChangDateBegin(String txtRuChangDateBegin) {
		this.txtRuChangDateBegin = txtRuChangDateBegin;
	}

	public String getTxtRuChangDateEnd() {
		return txtRuChangDateEnd;
	}

	public void setTxtRuChangDateEnd(String txtRuChangDateEnd) {
		this.txtRuChangDateEnd = txtRuChangDateEnd;
	}

}
