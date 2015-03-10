package com.chiefmech.arms.entity.query;

import com.chiefmech.arms.common.util.ConfigUtil;
import com.chiefmech.arms.entity.query.Criteria.Action;

public class KuCunOperLogSearchBean extends SearchBean {
	private String txtLogDateBegin;
	private String txtLogDateEnd;
	private String ddlCangKu;
	private String txtBillSort;
	private String txtWuLiaoCode;
	private String txtWuLiaoName;
	private String txtBillNo;
	private int start = 1;
	private int rows = 15;

	@Override
	public void initSearchFields() {
		this.addField(new Criteria(Action.STR_BETWEEN, "txtLogDate",
				txtLogDateBegin, txtLogDateEnd));
		this.addField(new Criteria(Action.LIKE, "ddlCangKu", ddlCangKu));
		this.addField(new Criteria(Action.LIKE, "txtBillSort", txtBillSort));
		this.addField(new Criteria(Action.LIKE, "txtWuLiaoCode", txtWuLiaoCode));
		this.addField(new Criteria(Action.LIKE, "txtWuLiaoName", txtWuLiaoName));
		this.addField(new Criteria(Action.LIKE, "txtBillNo", txtBillNo));
		// 只查找属于当前店铺的库存
		this.addField(new Criteria(Action.STR_EQUAL, "txtShopCode", ConfigUtil
				.getInstance().getShopInfo().getShopCode()));
		this.addLimitInfo(this.getStart(), this.getRows());
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

	public String getDdlCangKu() {
		return ddlCangKu;
	}

	public void setDdlCangKu(String ddlCangKu) {
		this.ddlCangKu = ddlCangKu;
	}

	public String getTxtBillSort() {
		return txtBillSort;
	}

	public void setTxtBillSort(String txtBillSort) {
		this.txtBillSort = txtBillSort;
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
