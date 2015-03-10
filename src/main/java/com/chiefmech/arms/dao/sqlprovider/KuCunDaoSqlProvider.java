package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.common.util.ConfigUtil;
import com.chiefmech.arms.entity.KuCun;
import com.chiefmech.arms.entity.query.Criteria;
import com.chiefmech.arms.entity.query.Criteria.Action;
import com.chiefmech.arms.entity.query.KuCunOperLogSearchBean;
import com.chiefmech.arms.entity.query.SearchBean;

public class KuCunDaoSqlProvider {

	public String getKuCunList(Map<String, Object> param) {
		final int page = (Integer) param.get("page");
		final int rows = (Integer) param.get("rows");
		String txtGongDanId = (String) param.get("txtGongDanId");

		SearchBean searchBean = getKuCunCountSearchBean(param);
		searchBean.addLimitInfo(page, rows);

		return String
				.format("select * from kucun %s order by txtWuLiaoCode %s",
						getWhereSql(searchBean, txtGongDanId),
						searchBean.getLimitSql());
	}

	public String getKuCunListCount(Map<String, Object> param) {
		String txtGongDanId = (String) param.get("txtGongDanId");

		SearchBean searchBean = getKuCunCountSearchBean(param);
		return String.format("select count(*) from kucun %s",
				getWhereSql(searchBean, txtGongDanId));
	}

	public String getWhereSql(SearchBean searchBean, String txtGongDanId) {
		String sql = String
				.format("txtWuLiaoName not in(select txtWuLiaoName from gongdanwuliao where txtGongDanGuid='%s')",
						txtGongDanId);
		String where = searchBean.getWhereSql();

		if (where.length() > 0) {
			where += " and " + sql;
		} else {
			where = " where " + sql;
		}
		return where;
	}

	private SearchBean getKuCunCountSearchBean(Map<String, Object> param) {
		final KuCun item = (KuCun) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE, "txtWuLiaoCode", item
						.getTxtWuLiaoCode()));
				this.addField(new Criteria(Action.LIKE, "txtWuLiaoName", item
						.getTxtWuLiaoName()));
				this.addField(new Criteria(Action.LIKE, "txtSuppName", item
						.getTxtSuppName()));
				// 只查找属于当前店铺的库存
				this.addField(new Criteria(Action.STR_EQUAL, "txtShopCode",
						ConfigUtil.getInstance().getShopInfo().getShopCode()));
			}
		};
		return searchBean;
	}

	public String getKuCunOperLogList(Map<String, Object> param) {
		KuCunOperLogSearchBean searchBean = (KuCunOperLogSearchBean) param
				.get("item");
		return String.format(
				"select * from kucunoperlog %s order by txtLogDate desc %s",
				searchBean.getWhereSql(), searchBean.getLimitSql());
	}

	public String getKuCunOperLogListCount(Map<String, Object> param) {
		KuCunOperLogSearchBean searchBean = (KuCunOperLogSearchBean) param
				.get("item");
		return String.format("select count(*) from kucunoperlog %s",
				searchBean.getWhereSql());
	}

}
