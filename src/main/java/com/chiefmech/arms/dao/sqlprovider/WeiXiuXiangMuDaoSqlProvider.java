package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.entity.WeiXiuXiangMu;
import com.chiefmech.arms.entity.query.Criteria;
import com.chiefmech.arms.entity.query.Criteria.Action;
import com.chiefmech.arms.entity.query.SearchBean;

public class WeiXiuXiangMuDaoSqlProvider {

	public String getWeiXiuXiangMuList(Map<String, Object> param) {
		final int page = (Integer) param.get("page");
		final int rows = (Integer) param.get("rows");
		String txtGongDanId = (String) param.get("txtGongDanId");

		SearchBean searchBean = getCountSearchBean(param);
		searchBean.addLimitInfo(page, rows);

		return String
				.format("select * from weixiuxiangmu %s order by txtCode %s",
						getWhereSql(searchBean, txtGongDanId),
						searchBean.getLimitSql());
	}

	public String getWeiXiuXiangMuListCount(Map<String, Object> param) {
		String txtGongDanId = (String) param.get("txtGongDanId");
		SearchBean searchBean = getCountSearchBean(param);
		return String.format("select count(*) from weixiuxiangmu %s",
				getWhereSql(searchBean, txtGongDanId));
	}

	public String getWhereSql(SearchBean searchBean, String txtGongDanId) {
		String sql = String
				.format("txtName not in(select txtXiangMuName from gongdanxiangmu where txtGongDanGuid='%s')",
						txtGongDanId);
		String where = searchBean.getWhereSql();

		if (where.length() > 0) {
			where += " and " + sql;
		} else {
			where = " where " + sql;
		}
		return where;
	}

	private SearchBean getCountSearchBean(Map<String, Object> param) {
		final WeiXiuXiangMu item = (WeiXiuXiangMu) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE, "txtCode", item
						.getTxtCode()));
				this.addField(new Criteria(Action.LIKE, "ddlGongDuan", item
						.getDdlGongDuan()));
				this.addField(new Criteria(Action.LIKE, "txtName", item
						.getTxtName()));
				this.addField(new Criteria(Action.LIKE, "txtNeiRong", item
						.getTxtNeiRong()));
			}
		};
		return searchBean;
	}
}
