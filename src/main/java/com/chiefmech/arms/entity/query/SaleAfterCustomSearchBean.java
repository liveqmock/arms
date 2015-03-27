package com.chiefmech.arms.entity.query;

import com.chiefmech.arms.common.util.ConfigUtil;
import com.chiefmech.arms.entity.query.Criteria.Action;

public class SaleAfterCustomSearchBean extends SearchBean {

	private String queryField;
	private String queryValue;
	private boolean isSearchAllShopCustomerAllowed = false;
	private int page = 1;
	private int rows = 20;

	@Override
	public void initSearchFields() {
		this.addField(new Criteria(Action.STR_EQUAL, "companyFlag", ConfigUtil
				.getInstance().getShopInfo().getCompanyFlag()));
		this.addLimitInfo(this.getPage(), this.getRows());
	}

	public boolean isSearchAllShopCustomerAllowed() {
		return isSearchAllShopCustomerAllowed;
	}

	public void setSearchAllShopCustomerAllowed(
			boolean isSearchAllCustomerAllowed) {
		this.isSearchAllShopCustomerAllowed = isSearchAllCustomerAllowed;
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
