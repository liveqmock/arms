package com.chiefmech.arms.entity.query;

import com.chiefmech.arms.entity.query.Criteria.Action;

public class UserSearchBean extends SearchBean {

	private String queryField;
	private String queryValue;
	private int page = 1;
	private int rows = 20;

	@Override
	public void initSearchFields() {
		this.addField(new Criteria(Action.LIKE, this.getQueryField(), this
				.getQueryValue()));
		this.addLimitInfo(this.getPage(), this.getRows());
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
