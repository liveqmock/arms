package com.chiefmech.arms.entity.query;

import com.chiefmech.arms.entity.query.Criteria.Action;

public class RuKuDanSearchBean extends SearchBean {
	private String txtRuKuDateBegin;
	private String txtRuKuDateEnd;
	private String txtBillNo;
	private String txtSuppName;
	private String txtStatus;
	private int start = 1;
	private int rows = 15;

	public String getTxtBillNo() {
		return txtBillNo;
	}

	public void setTxtBillNo(String txtBillNo) {
		this.txtBillNo = txtBillNo;
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

	@Override
	public void initSearchFields() {
		this.addField(new Criteria(Action.STR_BETWEEN, "txtRuKuDate",
				txtRuKuDateBegin, txtRuKuDateEnd));
		this.addField(new Criteria(Action.LIKE, "txtBillNo", txtBillNo));
		this.addField(new Criteria(Action.LIKE, "txtSuppName", txtSuppName));
		this.addField(new Criteria(Action.LIKE, "txtStatus", txtStatus));
		this.addLimitInfo(this.getStart(), this.getRows());
	}

}
