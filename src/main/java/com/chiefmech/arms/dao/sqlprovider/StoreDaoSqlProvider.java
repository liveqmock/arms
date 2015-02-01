package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;
import com.chiefmech.arms.entity.Store;
import com.chiefmech.arms.entity.query.Criteria;
import com.chiefmech.arms.entity.query.SearchBean;
import com.chiefmech.arms.entity.query.Criteria.Action;

public class StoreDaoSqlProvider {
	
	public String getStoreList(Map<String, Object> param) {
		final int page = (Integer) param.get("page");
		final int rows = (Integer) param.get("rows");

		SearchBean searchBean = getCountSearchBean(param);
		searchBean.addLimitInfo(page, rows);

		return String.format("select * from store %s %s",
				searchBean.getWhereSql(), searchBean.getLimitSql());
	}

	public String getStoreListCount(Map<String, Object> param) {
		SearchBean searchBean = getCountSearchBean(param);
		return String.format("select count(*) from store %s",
				searchBean.getWhereSql());
	}

	private SearchBean getCountSearchBean(Map<String, Object> param) {
		final Store item = (Store) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE, "txtStoreName",item.getTxtStoreName() ));
			}
		};
		return searchBean;
	}
}
