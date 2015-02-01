package com.chiefmech.arms.entity.query;

import com.chiefmech.arms.entity.query.Criteria.Action;

public class ShopOperLogSearchBean extends SearchBean {
	private String operDate;
	private String operDateEnd;
	private String shopId;
	private String shopName;
	private String cangKu;
	private String billName;
	private int start = 1;
	private int rows = 15;

	public String getOperDate() {
		return operDate;
	}

	public void setOperDate(String operDate) {
		this.operDate = operDate;
	}

	public String getOperDateEnd() {
		return operDateEnd;
	}

	public void setOperDateEnd(String operDateEnd) {
		this.operDateEnd = operDateEnd;
	}

	public String getShopId() {
		return shopId;
	}

	public void setShopId(String shopId) {
		this.shopId = shopId;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public String getCangKu() {
		return cangKu;
	}

	public void setCangKu(String cangKu) {
		this.cangKu = cangKu;
	}

	public String getBillName() {
		return billName;
	}

	public void setBillName(String billName) {
		this.billName = billName;
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
		this.addField(new Criteria(Action.STR_BETWEEN, "operDate", operDate,
				operDateEnd));
		this.addField(new Criteria(Action.LIKE, "shopId", shopId));
		this.addField(new Criteria(Action.LIKE, "shopName", shopName));
		this.addField(new Criteria(Action.LIKE, "cangKu", cangKu));
		this.addField(new Criteria(Action.LIKE, "billName", billName));
		this.addLimitInfo(this.getStart(), this.getRows());
	}

}
