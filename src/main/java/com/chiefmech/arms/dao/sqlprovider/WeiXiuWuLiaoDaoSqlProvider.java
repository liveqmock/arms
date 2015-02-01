package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.entity.WeiXiuWuLiao;
import com.chiefmech.arms.entity.query.Criteria;
import com.chiefmech.arms.entity.query.Criteria.Action;
import com.chiefmech.arms.entity.query.SearchBean;

public class WeiXiuWuLiaoDaoSqlProvider {

	public String getWeiXiuWuLiaoList(Map<String, Object> param) {
		final int page = (Integer) param.get("page");
		final int rows = (Integer) param.get("rows");

		SearchBean searchBean = getCountSearchBean(param);
		searchBean.addLimitInfo(page, rows);

		return String.format("select * from shop %s %s",
				searchBean.getWhereSql(), searchBean.getLimitSql());
	}

	public String getWeiXiuWuLiaoListCount(Map<String, Object> param) {
		SearchBean searchBean = getCountSearchBean(param);
		return String.format("select count(*) from shop %s",
				searchBean.getWhereSql());
	}

	private SearchBean getCountSearchBean(Map<String, Object> param) {
		final WeiXiuWuLiao item = (WeiXiuWuLiao) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE, "txtShopId", item
						.getTxtShopId()));
				this.addField(new Criteria(Action.LIKE, "txtShopName", item
						.getTxtShopName()));
			}
		};
		return searchBean;
	}
}
