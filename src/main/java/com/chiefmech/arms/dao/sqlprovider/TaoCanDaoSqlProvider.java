package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.entity.TaoCan;
import com.chiefmech.arms.entity.query.Criteria;
import com.chiefmech.arms.entity.query.SearchBean;
import com.chiefmech.arms.entity.query.Criteria.Action;

public class TaoCanDaoSqlProvider {
	public String getTaoCanList(Map<String, Object> param) {
		final int page = (Integer) param.get("page");
		final int rows = (Integer) param.get("rows");

		SearchBean searchBean = getCountSearchBean(param);
		searchBean.addLimitInfo(page, rows);

		return String.format("select * from taocan %s %s",
				searchBean.getWhereSql(), searchBean.getLimitSql());
	}

	public String getTaoCanListCount(Map<String, Object> param) {
		SearchBean searchBean = getCountSearchBean(param);
		return String.format("select count(*) from taocan %s",
				searchBean.getWhereSql());
	}

	private SearchBean getCountSearchBean(Map<String, Object> param) {
		final TaoCan item = (TaoCan) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE, "txtTaoCanBianHao",
						item.getTxtTaoCanBianHao()));
				this.addField(new Criteria(Action.LIKE, "txtTaoCanMingCheng",
						item.getTxtTaoCanMingCheng()));
			}
		};
		return searchBean;
	}
}
