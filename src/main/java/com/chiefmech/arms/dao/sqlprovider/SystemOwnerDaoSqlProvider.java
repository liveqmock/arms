package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;
import com.chiefmech.arms.entity.SystemOwner;
import com.chiefmech.arms.entity.query.Criteria;
import com.chiefmech.arms.entity.query.SearchBean;
import com.chiefmech.arms.entity.query.Criteria.Action;

public class SystemOwnerDaoSqlProvider {
	public String getSystemOwnerList(Map<String, Object> param) {
		final int page = (Integer) param.get("page");
		final int rows = (Integer) param.get("rows");

		SearchBean searchBean = getCountSearchBean(param);
		searchBean.addLimitInfo(page, rows);

		return String.format("select * from users %s %s",
				searchBean.getWhereSql(), searchBean.getLimitSql());
	}

	public String getSystemOwnerListCount(Map<String, Object> param) {
		SearchBean searchBean = getCountSearchBean(param);
		return String.format("select count(*) from users  %s",
				searchBean.getWhereSql());
	}

	private SearchBean getCountSearchBean(Map<String, Object> param) {
		final SystemOwner item = (SystemOwner) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE, "userId", item
						.getUserId()));
				this.addField(new Criteria(Action.LIKE, "loginname", item
						.getLoginName()));
			}
		};
		return searchBean;
	}
}
