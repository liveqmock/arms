package com.chiefmech.arms.entity.query;

import com.chiefmech.arms.entity.query.Criteria.Action;

public class RenBaoWeeklyReportSearchBean extends SearchBean {

	private String txtRuChangDateBegin;
	private String txtRuChangDateEnd;

	@Override
	public void initSearchFields() {
		this.addField(new Criteria(Action.STR_BETWEEN, "txtRuChangDate",
				txtRuChangDateBegin, txtRuChangDateEnd));
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
