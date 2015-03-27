package com.chiefmech.arms.entity.query;

import com.chiefmech.arms.entity.query.Criteria.Action;

public class TaoKaOperLogSearchBean extends SearchBean {
	private String txtLogDateBegin;
	private String txtLogDateEnd;
	private String txtCheZhuTel;

	private int page = 1;
	private int rows = 20;

	@Override
	public void initSearchFields() {
		this.addField(new Criteria(Action.DATE_BETWEEN, "txtLogDate",
				txtLogDateBegin, txtLogDateEnd));
		this.addField(new Criteria(Action.LIKE, "txtCheZhuTel", txtCheZhuTel));
		this.addLimitInfo(this.getPage(), this.getRows());
	}

	public String getTxtLogDateBegin() {
		return txtLogDateBegin;
	}

	public void setTxtLogDateBegin(String txtLogDateBegin) {
		this.txtLogDateBegin = txtLogDateBegin;
	}

	public String getTxtLogDateEnd() {
		return txtLogDateEnd;
	}

	public void setTxtLogDateEnd(String txtLogDateEnd) {
		this.txtLogDateEnd = txtLogDateEnd;
	}

	public String getTxtCheZhuTel() {
		return txtCheZhuTel;
	}

	public void setTxtCheZhuTel(String txtCheZhuTel) {
		this.txtCheZhuTel = txtCheZhuTel;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getRows() {
		return rows;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

}
