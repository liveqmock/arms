package com.chiefmech.arms.entity.query;

import com.chiefmech.arms.entity.query.Criteria.Action;

public class RuKuDanSearchBean extends SearchBean {
	private String txtRuKuDateBegin;
	private String txtRuKuDateEnd;
	private String txtBillNo;
	private String txtSuppName;
	private String txtStatus;
	private String ddlDianPu;
	private String txtWuLiaoCode;
	private String txtWuLiaoName;
	private int start = 1;
	private int rows = 15;

	@Override
	public void initSearchFields() {
		this.addField(new Criteria(Action.STR_BETWEEN, "txtRuKuDate",
				txtRuKuDateBegin, txtRuKuDateEnd));
		this.addField(new Criteria(Action.LIKE, "txtBillNo", txtBillNo));
		this.addField(new Criteria(Action.STR_EQUAL, "txtSuppName", txtSuppName));
		this.addField(new Criteria(Action.STR_EQUAL, "txtStatus", txtStatus));
		this.addField(new Criteria(Action.STR_EQUAL, "ddlDianPu", ddlDianPu));
		this.addField(new Criteria(Action.LIKE, "txtWuLiaoCode", txtWuLiaoCode));
		this.addField(new Criteria(Action.LIKE, "txtWuLiaoName", txtWuLiaoName));
		this.addLimitInfo(this.getStart(), this.getRows());
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

	public String getTxtBillNo() {
		return txtBillNo;
	}

	public void setTxtBillNo(String txtBillNo) {
		this.txtBillNo = txtBillNo;
	}

	public String getDdlDianPu() {
		return ddlDianPu;
	}

	public void setDdlDianPu(String ddlDianPu) {
		this.ddlDianPu = ddlDianPu;
	}

	public String getTxtSuppName() {
		return txtSuppName;
	}

	public void setTxtSuppName(String txtSuppName) {
		this.txtSuppName = txtSuppName;
	}

	public String getTxtRuKuDateEnd() {
		return txtRuKuDateEnd;
	}

	public void setTxtRuKuDateEnd(String txtRuKuDateEnd) {
		this.txtRuKuDateEnd = txtRuKuDateEnd;
	}

	public String getTxtRuKuDateBegin() {
		return txtRuKuDateBegin;
	}

	public void setTxtRuKuDateBegin(String txtRuKuDateBegin) {
		this.txtRuKuDateBegin = txtRuKuDateBegin;
	}

	public String getTxtStatus() {
		return txtStatus;
	}

	public void setTxtStatus(String txtStatus) {
		this.txtStatus = txtStatus;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getRows() {
		return rows;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

}
