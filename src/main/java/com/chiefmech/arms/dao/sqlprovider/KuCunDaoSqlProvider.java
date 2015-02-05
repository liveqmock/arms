package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.entity.KuCun;
import com.chiefmech.arms.entity.query.Criteria;
import com.chiefmech.arms.entity.query.Criteria.Action;
import com.chiefmech.arms.entity.query.SearchBean;

public class KuCunDaoSqlProvider {

	public String getKuCunList(Map<String, Object> param) {
		final int page = (Integer) param.get("page");
		final int rows = (Integer) param.get("rows");

		SearchBean searchBean = getCountSearchBean(param);
		searchBean.addLimitInfo(page, rows);

		return String.format("select * from kucun %s %s",
				searchBean.getWhereSql(), searchBean.getLimitSql());
	}

	public String getKuCunListCount(Map<String, Object> param) {
		SearchBean searchBean = getCountSearchBean(param);
		return String.format("select count(*) from kucun %s",
				searchBean.getWhereSql());
	}

	private SearchBean getCountSearchBean(Map<String, Object> param) {
		final KuCun item = (KuCun) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE, "txtWuLiaoCode", item
						.getTxtWuLiaoCode()));
				this.addField(new Criteria(Action.LIKE, "txtWuLiaoName", item
						.getTxtWuLiaoName()));
				this.addField(new Criteria(Action.LIKE, "ddlCangKu", item
						.getDdlCangKu()));
			}
		};
		return searchBean;
	}
}
