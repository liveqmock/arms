package com.chiefmech.arms.entity.query;

import com.chiefmech.arms.common.util.ConfigUtil;
import com.chiefmech.arms.entity.query.Criteria.Action;

public class CaiGouWuLiaoSearchBean extends SearchBean {
	private String saleAfterWeiXiuGuid;
	private String txtRuKuDateBegin;
	private String txtRuKuDateEnd;
	private String txtRuKuDanGuid;
	private String txtBillNo;
	private String txtSuppName;
	private String ddlRuKuSort;
	private String txtStatus;
	private String txtWuLiaoCode;
	private String txtWuLiaoName;
	private int page = 1;
	private int rows = 20;
	private String action;

	@Override
	public void initSearchFields() {
		this.addField(new Criteria(Action.DATE_BETWEEN, "txtRuKuDate",
				txtRuKuDateBegin, txtRuKuDateEnd));
		this.addField(new Criteria(Action.LIKE, "txtBillNo", txtBillNo));
		this.addField(new Criteria(Action.STR_EQUAL, "txtRuKuDanGuid",
				txtRuKuDanGuid));
		this.addField(new Criteria(Action.LIKE, "txtSuppName", txtSuppName));
		this.addField(new Criteria(Action.LIKE, "ddlRuKuSort", ddlRuKuSort));
		this.addField(new Criteria(Action.LIKE, "txtStatus", txtStatus));
		this.addField(new Criteria(Action.LIKE, "txtWuLiaoCode", txtWuLiaoCode));
		this.addField(new Criteria(Action.LIKE, "txtWuLiaoName", txtWuLiaoName));
		// 只查找属于当前店铺的入库单
		this.addField(new Criteria(Action.STR_EQUAL, "txtShopCode", ConfigUtil
				.getInstance().getShopInfo().getShopCode()));
		this.addLimitInfo(this.getPage(), this.getRows());
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public String getSaleAfterWeiXiuGuid() {
		return saleAfterWeiXiuGuid;
	}

	public void setSaleAfterWeiXiuGuid(String saleAfterWeiXiuGuid) {
		this.saleAfterWeiXiuGuid = saleAfterWeiXiuGuid;
	}

	public String getDdlRuKuSort() {
		return ddlRuKuSort;
	}

	public void setDdlRuKuSort(String ddlRuKuSort) {
		this.ddlRuKuSort = ddlRuKuSort;
	}

	public String getTxtRuKuDanGuid() {
		return txtRuKuDanGuid;
	}

	public void setTxtRuKuDanGuid(String txtRuKuDanGuid) {
		this.txtRuKuDanGuid = txtRuKuDanGuid;
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
