package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.entity.HuiYuan;
import com.chiefmech.arms.entity.query.Criteria;
import com.chiefmech.arms.entity.query.SearchBean;
import com.chiefmech.arms.entity.query.Criteria.Action;

public class HuiYuanDaoSqlProvider {
	public String getHuiYuanList(Map<String, Object> param) {
		final int page = (Integer) param.get("page");
		final int rows = (Integer) param.get("rows");

		SearchBean searchBean = getCountSearchBean(param);
		searchBean.addLimitInfo(page, rows);

		return String.format("select * from huiyuan %s %s",
				searchBean.getWhereSql(), searchBean.getLimitSql());
	}

	public String getHuiYuanListCount(Map<String, Object> param) {
		SearchBean searchBean = getCountSearchBean(param);
		return String.format("select count(*) from huiyuan %s",
				searchBean.getWhereSql());
	}

	private SearchBean getCountSearchBean(Map<String, Object> param) {
		final HuiYuan item = (HuiYuan) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE, "txtHuiYuanHao",
						item.getTxtHuiYuanHao()));
				this.addField(new Criteria(Action.LIKE, "txtCustId",
						item.getTxtCustId()));
			}
		};
		return searchBean;
	}
}
