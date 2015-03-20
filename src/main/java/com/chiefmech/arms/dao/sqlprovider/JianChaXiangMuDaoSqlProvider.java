package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;
import com.chiefmech.arms.entity.JianChaXiangMu;
import com.chiefmech.arms.entity.query.Criteria;
import com.chiefmech.arms.entity.query.SearchBean;
import com.chiefmech.arms.entity.query.Criteria.Action;

public class JianChaXiangMuDaoSqlProvider {
	public String getJianChaXiangMuList(Map<String, Object> param) {
		final int page = (Integer) param.get("page");
		final int rows = (Integer) param.get("rows");

		SearchBean searchBean = getCountSearchBean(param);
		searchBean.addLimitInfo(page, rows);

		return String.format("select * from jianchaxiangmu %s order by txtJianChaSort desc %s",
				searchBean.getWhereSql(), searchBean.getLimitSql());
	}

	public String getJianChaXiangMuListCount(Map<String, Object> param) {
		SearchBean searchBean = getCountSearchBean(param);
		return String.format("select count(*) from jianchaxiangmu %s",
				searchBean.getWhereSql());
	}

	private SearchBean getCountSearchBean(Map<String, Object> param) {
		final JianChaXiangMu item = (JianChaXiangMu) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE, "txtJianChaSort", item
						.getTxtJianChaSort()));
			}
		};
		return searchBean;
	}
}
