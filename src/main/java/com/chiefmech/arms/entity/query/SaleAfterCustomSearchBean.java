package com.chiefmech.arms.entity.query;

public class SaleAfterCustomSearchBean {
	private String queryField;
	private String queryValue;
	private int txtPageNum;
	private int txtPageSize;
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
