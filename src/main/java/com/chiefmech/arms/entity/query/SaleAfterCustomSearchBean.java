package com.chiefmech.arms.entity.query;

import com.chiefmech.arms.entity.query.Criteria.Action;

public class SaleAfterCustomSearchBean extends SearchBean {

	private String queryField;
	private String queryValue;
	private String shopCode;
	private boolean isSearchAllCustomerAllowed = false;
	private int txtPageNum = 1;
	private int txtPageSize = 20;

	@Override
	public void initSearchFields() {
		Action action = Action.LIKE;
		if ("txtCheLiangCheJiaHao".equals(queryField)) {
			action = Action.STR_EQUAL;
		}
		this.addField(new Criteria(action, this.getQueryField(), this
				.getQueryValue()));
		this.addLimitInfo(this.getTxtPageNum(), this.getTxtPageSize());
	}

	public String getShopCode() {
		return shopCode;
	}

	public void setShopCode(String shopCode) {
		this.shopCode = shopCode;
	}

	public boolean isSearchAllCustomerAllowed() {
		return isSearchAllCustomerAllowed;
	}

	public void setSearchAllCustomerAllowed(boolean isSearchAllCustomerAllowed) {
		this.isSearchAllCustomerAllowed = isSearchAllCustomerAllowed;
	}

	public String getQueryField() {
		return queryField;
	}

	public void setQueryField(String queryField) {
		this.queryField = queryField;
	}

	public String getQueryValue() {
		return queryValue;
	}

	public void setQueryValue(String queryValue) {
		this.queryValue = queryValue;
	}

	public int getTxtPageNum() {
		return txtPageNum;
	}

	public void setTxtPageNum(int txtPageNum) {
		this.txtPageNum = txtPageNum;
	}

	public int getTxtPageSize() {
		return txtPageSize;
	}

	public void setTxtPageSize(int txtPageSize) {
		this.txtPageSize = txtPageSize;
	}
}
