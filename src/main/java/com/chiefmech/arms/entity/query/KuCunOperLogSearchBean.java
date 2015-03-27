package com.chiefmech.arms.entity.query;

import com.chiefmech.arms.common.util.ConfigUtil;
import com.chiefmech.arms.entity.query.Criteria.Action;

public class KuCunOperLogSearchBean extends SearchBean {
	private String txtLogDateBegin;
	private String txtLogDateEnd;
	private String ddlCangKu;
	private String txtOperAction;
	private String txtWuLiaoCode;
	private String txtWuLiaoName;
	private String txtBillNo;
	private int page = 1;
	private int rows = 20;

	@Override
	public void initSearchFields() {
		this.addField(new Criteria(Action.DATE_BETWEEN, "txtLogDate",
				txtLogDateBegin, txtLogDateEnd));
		this.addField(new Criteria(Action.LIKE, "txtOperAction", txtOperAction));
		this.addField(new Criteria(Action.LIKE, "txtWuLiaoCode", txtWuLiaoCode));
		this.addField(new Criteria(Action.LIKE, "txtWuLiaoName", txtWuLiaoName));
		this.addField(new Criteria(Action.LIKE, "txtBillNo", txtBillNo));
		// 只查找属于当前店铺的库存
		this.addField(new Criteria(Action.STR_EQUAL, "txtShopCode", ConfigUtil
				.getInstance().getShopInfo().getShopCode()));
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

	public String getDdlCangKu() {
		return ddlCangKu;
	}

	public void setDdlCangKu(String ddlCangKu) {
		this.ddlCangKu = ddlCangKu;
	}

	public String getTxtOperAction() {
		return txtOperAction;
	}

	public void setTxtOperAction(String txtOperAction) {
		this.txtOperAction = txtOperAction;
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
