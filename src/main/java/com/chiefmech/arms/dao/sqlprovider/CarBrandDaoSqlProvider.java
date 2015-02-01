package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;
import com.chiefmech.arms.entity.CarBrand;
import com.chiefmech.arms.entity.query.Criteria;
import com.chiefmech.arms.entity.query.SearchBean;
import com.chiefmech.arms.entity.query.Criteria.Action;

public class CarBrandDaoSqlProvider {

	public String getCarBrandList(Map<String, Object> param) {
		final int page = (Integer) param.get("page");
		final int rows = (Integer) param.get("rows");

		SearchBean searchBean = getCountSearchBean(param);
		searchBean.addLimitInfo(page, rows);

		return String.format("select * from carbrand %s %s",
				searchBean.getWhereSql(), searchBean.getLimitSql());
	}

	public String getCarBrandListCount(Map<String, Object> param) {
		SearchBean searchBean = getCountSearchBean(param);
		return String.format("select count(*) from carbrand %s",
				searchBean.getWhereSql());
	}

	private SearchBean getCountSearchBean(Map<String, Object> param) {
		final CarBrand item = (CarBrand) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE, "brandId", item
						.getBrandId()));
				this.addField(new Criteria(Action.LIKE, "brandName", item
						.getBrandName()));
			}
		};
		return searchBean;
	}

}
