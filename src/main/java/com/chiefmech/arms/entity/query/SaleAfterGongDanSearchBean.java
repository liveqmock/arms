package com.chiefmech.arms.entity.query;

import com.chiefmech.arms.common.util.ConfigUtil;
import com.chiefmech.arms.entity.query.Criteria.Action;

public class SaleAfterGongDanSearchBean extends SearchBean {
	private String txtRuChangDate1;
	private String txtRuChangDate2;
	private String txtBillNo;
	private String txtXieYiBillNo;
	private String txtVin;
	private String txtGongDanStatus;
	private String txtCustSort;
	private String txtChuChangDate1;
	private String txtChuChangDate2;
	private String txtChePaiHao;
	private String txtCheZhuName;
	private String txtCheZhuTel;
	private String txtFuWuGuWen;
	private String actionName;
	private String txtDeleteFlag;
	private int page = 1;
	private int rows = 20;

	@Override
	public void initSearchFields() {
		this.addField(new Criteria(Action.STR_BETWEEN, "txtRuChangDate",
				txtRuChangDate1, txtRuChangDate2));
		this.addField(new Criteria(Action.STR_BETWEEN, "txtChuChangDate",
				txtChuChangDate1, txtChuChangDate2));
		this.addField(new Criteria(Action.LIKE, "txtBillNo", txtBillNo));
		this.addField(new Criteria(Action.LIKE, "txtXieYiBillNo",
				txtXieYiBillNo));
		this.addField(new Criteria(Action.LIKE, "txtVin", txtVin));
		this.addField(new Criteria(Action.LIKE, "txtGongDanStatus",
				txtGongDanStatus));
		this.addField(new Criteria(Action.LIKE, "txtCustSort", txtCustSort));
		this.addField(new Criteria(Action.LIKE, "txtChePaiHao", txtChePaiHao));
		this.addField(new Criteria(Action.LIKE, "txtCheZhuName", txtCheZhuName));
		this.addField(new Criteria(Action.LIKE, "txtCheZhuTel", txtCheZhuTel));
		this.addField(new Criteria(Action.LIKE, "txtFuWuGuWen", txtFuWuGuWen));
		this.addField(new Criteria(Action.STR_EQUAL, "txtDeleteFlag",
				txtDeleteFlag));
		// 只查找属于当前店铺的工单
		this.addField(new Criteria(Action.STR_EQUAL, "txtShopCode", ConfigUtil
				.getInstance().getShopInfo().getShopCode()));
		this.addLimitInfo(this.getPage(), this.getRows());
	}

	public String getTxtRuChangDate1() {
		return txtRuChangDate1;
	}
	public void setTxtRuChangDate1(String txtRuChangDate1) {
		this.txtRuChangDate1 = txtRuChangDate1;
	}
	public String getTxtRuChangDate2() {
		return txtRuChangDate2;
	}
	public void setTxtRuChangDate2(String txtRuChangDate2) {
		this.txtRuChangDate2 = txtRuChangDate2;
	}
	public String getTxtXieYiBillNo() {
		return txtXieYiBillNo;
	}
	public void setTxtXieYiBillNo(String txtXieYiBillNo) {
		this.txtXieYiBillNo = txtXieYiBillNo;
	}
	public String getTxtVin() {
		return txtVin;
	}
	public void setTxtVin(String txtVin) {
		this.txtVin = txtVin;
	}
	public String getTxtChuChangDate1() {
		return txtChuChangDate1;
	}
	public void setTxtChuChangDate1(String txtChuChangDate1) {
		this.txtChuChangDate1 = txtChuChangDate1;
	}
	public String getTxtChuChangDate2() {
		return txtChuChangDate2;
	}
	public void setTxtChuChangDate2(String txtChuChangDate2) {
		this.txtChuChangDate2 = txtChuChangDate2;
	}
	public String getTxtBillNo() {
		return txtBillNo;
	}
	public void setTxtBillNo(String txtBillNo) {
		this.txtBillNo = txtBillNo;
	}
	public String getTxtGongDanStatus() {
		return txtGongDanStatus;
	}
	public void setTxtGongDanStatus(String txtGongDanStatus) {
		this.txtGongDanStatus = txtGongDanStatus;
	}
	public String getTxtCustSort() {
		return txtCustSort;
	}

	public void setTxtCustSort(String txtCustSort) {
		this.txtCustSort = txtCustSort;
	}

	public String getTxtChePaiHao() {
		return txtChePaiHao;
	}
	public void setTxtChePaiHao(String txtChePaiHao) {
		this.txtChePaiHao = txtChePaiHao;
	}
	public String getTxtCheZhuName() {
		return txtCheZhuName;
	}
	public void setTxtCheZhuName(String txtCheZhuName) {
		this.txtCheZhuName = txtCheZhuName;
	}
	public String getTxtCheZhuTel() {
		return txtCheZhuTel;
	}
	public void setTxtCheZhuTel(String txtCheZhuTel) {
		this.txtCheZhuTel = txtCheZhuTel;
	}
	public String getTxtFuWuGuWen() {
		return txtFuWuGuWen;
	}
	public void setTxtFuWuGuWen(String txtFuWuGuWen) {
		this.txtFuWuGuWen = txtFuWuGuWen;
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

	public String getActionName() {
		return actionName;
	}

	public void setActionName(String actionName) {
		this.actionName = actionName;
	}

	public String getTxtDeleteFlag() {
		return txtDeleteFlag;
	}

	public void setTxtDeleteFlag(String txtDeleteFlag) {
		this.txtDeleteFlag = txtDeleteFlag;
	}

}
