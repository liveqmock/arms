package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.entity.query.Criteria;
import com.chiefmech.arms.entity.query.SearchBean;
import com.chiefmech.arms.entity.query.Criteria.Action;
import com.chiefmech.arms.entity.view.ZheKouView;

public class ZheKouViewDaoSqlProvider {

	public String getZheKouViewList(Map<String, Object> param) {
		final int page = (Integer) param.get("page");
		final int rows = (Integer) param.get("rows");

		SearchBean searchBean = getCountSearchBean(param);
		searchBean.addLimitInfo(page, rows);

		return String.format("select * from view_zhekou %s %s",
				searchBean.getWhereSql(), searchBean.getLimitSql());
	}

	public String getZheKouViewListCount(Map<String, Object> param) {
		SearchBean searchBean = getCountSearchBean(param);
		return String.format("select count(*) from view_zhekou %s",
				searchBean.getWhereSql());
	}

	private SearchBean getCountSearchBean(Map<String, Object> param) {
		final ZheKouView item = (ZheKouView) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE, "displayName", item
						.getDisplayName()));
				this.addField(new Criteria(Action.LIKE, "departName", item
						.getDepartName()));
				this.addField(new Criteria(Action.LIKE, "jigouName", item
						.getJigouName()));
			}
		};
		return searchBean;
	}
}
