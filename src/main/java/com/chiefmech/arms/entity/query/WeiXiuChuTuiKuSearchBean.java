package com.chiefmech.arms.entity.query;

import com.chiefmech.arms.entity.query.Criteria.Action;

public class WeiXiuChuTuiKuSearchBean extends SearchBean {

	private String txtBillNo;
	private String txtXieYiBillNo;
	private String txtChePaiHao;
	private String txtLianXiRen;
	private String txtLianXiMob;
	private String txtRuChangDateStart;
	private String txtRuChangDateEnd;
	private int page = 1;
	private int rows = 20;

	public String getTxtBillNo() {
		return txtBillNo;
	}

	public void setTxtBillNo(String txtBillNo) {
		this.txtBillNo = txtBillNo;
	}

	public String getTxtXieYiBillNo() {
		return txtXieYiBillNo;
	}

	public void setTxtXieYiBillNo(String txtXieYiBillNo) {
		this.txtXieYiBillNo = txtXieYiBillNo;
	}

	public String getTxtChePaiHao() {
		return txtChePaiHao;
	}

	public void setTxtChePaiHao(String txtChePaiHao) {
		this.txtChePaiHao = txtChePaiHao;
	}

	public String getTxtLianXiRen() {
		return txtLianXiRen;
	}

	public void setTxtLianXiRen(String txtLianXiRen) {
		this.txtLianXiRen = txtLianXiRen;
	}

	public String getTxtLianXiMob() {
		return txtLianXiMob;
	}

	public void setTxtLianXiMob(String txtLianXiMob) {
		this.txtLianXiMob = txtLianXiMob;
	}

	public String getTxtRuChangDateStart() {
		return txtRuChangDateStart;
	}

	public void setTxtRuChangDateStart(String txtRuChangDateStart) {
		this.txtRuChangDateStart = txtRuChangDateStart;
	}

	public String getTxtRuChangDateEnd() {
		return txtRuChangDateEnd;
	}

	public void setTxtRuChangDateEnd(String txtRuChangDateEnd) {
		this.txtRuChangDateEnd = txtRuChangDateEnd;
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

	@Override
	public void initSearchFields() {
		this.addField(new Criteria(Action.STR_BETWEEN, "txtRuChangDateStart",
				txtRuChangDateStart, txtRuChangDateEnd));
		this.addField(new Criteria(Action.LIKE, "txtBillNo", txtBillNo));
		this.addField(new Criteria(Action.LIKE, "txtXieYiBillNo",
				txtXieYiBillNo));
		this.addField(new Criteria(Action.LIKE, "txtChePaiHao", txtChePaiHao));
		this.addField(new Criteria(Action.LIKE, "txtLianXiRen", txtLianXiRen));
		this.addLimitInfo(this.getPage(), this.getRows());
	}

}
