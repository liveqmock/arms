package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.entity.Unit;
import com.chiefmech.arms.entity.query.Criteria;
import com.chiefmech.arms.entity.query.SearchBean;
import com.chiefmech.arms.entity.query.Criteria.Action;

public class UnitDaoSqlProvider {
	public String getUnitList(Map<String, Object> param) {
		final int page = (Integer) param.get("page");
		final int rows = (Integer) param.get("rows");

		SearchBean searchBean = getCountSearchBean(param);
		searchBean.addLimitInfo(page, rows);

		return String.format("select * from Unit %s %s",
				searchBean.getWhereSql(), searchBean.getLimitSql());
	}

	public String getUnitListCount(Map<String, Object> param) {
		SearchBean searchBean = getCountSearchBean(param);
		return String.format("select count(*) from Unit %s",
				searchBean.getWhereSql());
	}

	private SearchBean getCountSearchBean(Map<String, Object> param) {
		final Unit item = (Unit) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE, "txtUnitName", item
						.getTxtUnitName()));
			}
		};
		return searchBean;
	}
}
