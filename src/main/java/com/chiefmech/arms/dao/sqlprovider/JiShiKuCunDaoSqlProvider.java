package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.entity.JiShiKuCun;
import com.chiefmech.arms.entity.query.Criteria;
import com.chiefmech.arms.entity.query.SearchBean;
import com.chiefmech.arms.entity.query.Criteria.Action;

public class JiShiKuCunDaoSqlProvider {
	
	public String getJiShiKuCunList(Map<String, Object> param) {
		final int page = (Integer) param.get("page");
		final int rows = (Integer) param.get("rows");

		SearchBean searchBean = getCountSearchBean(param);
		searchBean.addLimitInfo(page, rows);

		return String.format("select * from jishikucun %s %s",
				searchBean.getWhereSql(), searchBean.getLimitSql());
	}

	public String getJiShiKuCunListCount(Map<String, Object> param) {
		SearchBean searchBean = getCountSearchBean(param);
		return String.format("select count(*) from jishikucun %s",
				searchBean.getWhereSql());
	}

	private SearchBean getCountSearchBean(Map<String, Object> param) {
		final JiShiKuCun item = (JiShiKuCun) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE, "txtCangKu", item.getTxtCangKu()));
				this.addField(new Criteria(Action.LIKE, "txtShopId", item.getTxtShopId()));
				this.addField(new Criteria(Action.LIKE, "txtShopName", item.getTxtShopName()));
			}
		};
		return searchBean;
	}
}
