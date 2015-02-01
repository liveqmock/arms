package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;
import com.chiefmech.arms.entity.VehiCleType;
import com.chiefmech.arms.entity.query.Criteria;
import com.chiefmech.arms.entity.query.SearchBean;
import com.chiefmech.arms.entity.query.Criteria.Action;

public class VehiCleTypeDaoSqlProvider {

	public String getVehiCleTypeList(Map<String, Object> param) {
		final int page = (Integer) param.get("page");
		final int rows = (Integer) param.get("rows");

		SearchBean searchBean = getCountSearchBean(param);
		searchBean.addLimitInfo(page, rows);

		return String.format("select * from vehicletype %s %s",
				searchBean.getWhereSql(), searchBean.getLimitSql());
	}

	public String getVehiCleTypeListCount(Map<String, Object> param) {
		SearchBean searchBean = getCountSearchBean(param);
		return String.format("select count(*) from vehicletype %s",
				searchBean.getWhereSql());
	}

	private SearchBean getCountSearchBean(Map<String, Object> param) {
		final VehiCleType item = (VehiCleType) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE, "VehiCleTypeName", item
						.getVehiCleTypeName()));
				this.addField(new Criteria(Action.LIKE, "VehiCleTypeId", item
						.getVehiCleTypeId()));
			}
		};
		return searchBean;
	}

}
