package com.chiefmech.arms.entity.query;

import com.chiefmech.arms.common.util.SessionUtil;
import com.chiefmech.arms.entity.query.Criteria.Action;

public class SaleAfterCustomSearchBean extends SearchBean {

	private String queryField;
	private String queryValue;
	private int page = 1;
	private int rows = 20;

	@Override
	public void initSearchFields() {
		if (queryField != null) {
			Criteria.Action action = "txtCheLiangCheJiaHao".equals(queryField) ? Action.STR_EQUAL
					: Action.LIKE;
			this.addField(new Criteria(action, queryField, queryValue));
		}

		if ("txtCheLiangCheJiaHao".equals(queryField)
				|| SessionUtil.getUserInfo().getPrivilegeLst()
						.contains("customerReservationManage")) {
			// 1. 车架号可以跨店查询 2. 客服权限可跨店查询
			this.addField(new Criteria(Action.STR_EQUAL, "companyFlag",
					SessionUtil.getShopInfo().getCompanyFlag()));
		} else {
			// 不是车架号或者客服只能查询本店录入的客户信息
			this.addField(new Criteria(Action.STR_EQUAL, "txtRegisterShopCode",
					SessionUtil.getShopInfo().getShopCode()));
		}

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
