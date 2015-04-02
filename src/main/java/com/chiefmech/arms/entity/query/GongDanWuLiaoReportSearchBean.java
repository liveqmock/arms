package com.chiefmech.arms.entity.query;

import com.chiefmech.arms.common.util.SessionUtil;
import com.chiefmech.arms.entity.query.Criteria.Action;

public class GongDanWuLiaoReportSearchBean extends SearchBean {

	private String txtRuChangDateBegin;
	private String txtRuChangDateEnd;
	private String txtWuLiaoCode;
	private String txtWuLiaoName;

	@Override
	public void initSearchFields() {
		this.addField(new Criteria(Action.LIKE, "txtWuLiaoCode", txtWuLiaoCode));
		this.addField(new Criteria(Action.LIKE, "txtWuLiaoName", txtWuLiaoName));
		this.addField(new Criteria(Action.DATE_BETWEEN, "txtRuChangDate",
				txtRuChangDateBegin, txtRuChangDateEnd));
		this.addField(new Criteria(Action.STR_EQUAL, "shopCode", SessionUtil
				.getShopInfo().getShopCode()));
	}

	public String getTxtWuLiaoCode() {
		return txtWuLiaoCode;
	}

	public void setTxtWuLiaoCode(String txtWuLiaoCode) {
		this.txtWuLiaoCode = txtWuLiaoCode;
	}

	public String getTxtWuLiaoName() {
		return txtWuLiaoName;
	}

	public void setTxtWuLiaoName(String txtWuLiaoName) {
		this.txtWuLiaoName = txtWuLiaoName;
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
