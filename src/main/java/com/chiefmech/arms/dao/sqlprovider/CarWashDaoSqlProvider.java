package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.entity.CarWash;
import com.chiefmech.arms.entity.query.Criteria;
import com.chiefmech.arms.entity.query.Criteria.Action;
import com.chiefmech.arms.entity.query.SearchBean;

public class CarWashDaoSqlProvider {
	public String getCarWashList(Map<String, Object> param) {
		final int page = (Integer) param.get("page");
		final int rows = (Integer) param.get("rows");

		SearchBean searchBean = getCountSearchBean(param);
		searchBean.addLimitInfo(page, rows);

		return String.format("select * from carwash %s %s",
				searchBean.getWhereSql(), searchBean.getLimitSql());
	}

	public String getCarWashListCount(Map<String, Object> param) {
		SearchBean searchBean = getCountSearchBean(param);
		return String.format("select count(*) from carwash  %s",
				searchBean.getWhereSql());
	}

	private SearchBean getCountSearchBean(Map<String, Object> param) {
		final CarWash item = (CarWash) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE, "txtCheZhuTel", item
						.getTxtCheZhuTel()));
				this.addField(new Criteria(Action.LIKE, "txtChePaiHao", item
						.getTxtChePaiHao()));
			}
		};
		return searchBean;
	}
}
