package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.entity.query.Criteria;
import com.chiefmech.arms.entity.query.SearchBean;
import com.chiefmech.arms.entity.query.Criteria.Action;
import com.chiefmech.arms.entity.view.CarModelView;

public class CarModelDaoSqlProvider {

	public String getCarModelList(Map<String, Object> param) {
		final int page = (Integer) param.get("page");
		final int rows = (Integer) param.get("rows");

		SearchBean searchBean = getCountSearchBean(param);
		searchBean.addLimitInfo(page, rows);

		return String
				.format("select * from v_carmodel %s %s",
						searchBean.getWhereSql(), searchBean.getLimitSql());
	}

	public String getCarModelListCount(Map<String, Object> param) {
		SearchBean searchBean = getCountSearchBean(param);
		return String
				.format("select count(*) from v_carmodel %s",
						searchBean.getWhereSql());
	}

	private SearchBean getCountSearchBean(Map<String, Object> param) {
		final CarModelView item = (CarModelView) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE, "brandName", item
						.getBrandName()));
				this.addField(new Criteria(Action.LIKE, "modelName", item
						.getModelName()));
			}
		};
		return searchBean;
	}

}
