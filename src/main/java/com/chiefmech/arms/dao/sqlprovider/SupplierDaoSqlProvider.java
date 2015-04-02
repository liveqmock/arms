package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.common.util.SessionUtil;
import com.chiefmech.arms.entity.Supplier;
import com.chiefmech.arms.entity.query.Criteria;
import com.chiefmech.arms.entity.query.SearchBean;
import com.chiefmech.arms.entity.query.Criteria.Action;

public class SupplierDaoSqlProvider {

	public String getSupplierList(Map<String, Object> param) {
		final int page = (Integer) param.get("page");
		final int rows = (Integer) param.get("rows");

		SearchBean searchBean = getCountSearchBean(param);
		searchBean.addLimitInfo(page, rows);

		return String.format("select * from supplier %s %s",
				searchBean.getWhereSql(), searchBean.getLimitSql());
	}

	public String getSupplierListCount(Map<String, Object> param) {
		SearchBean searchBean = getCountSearchBean(param);
		return String.format("select count(*) from supplier %s",
				searchBean.getWhereSql());
	}

	private SearchBean getCountSearchBean(Map<String, Object> param) {
		final Supplier item = (Supplier) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE, "txtSuppBianHao", item
						.getTxtSuppBianHao()));
				this.addField(new Criteria(Action.LIKE, "txtSuppName", item
						.getTxtSuppName()));
				// 只查找属于当前店铺的供应商
				this.addField(new Criteria(Action.STR_EQUAL, "txtShopCode",
						SessionUtil.getShopInfo().getShopCode()));
			}
		};
		return searchBean;
	}
}
