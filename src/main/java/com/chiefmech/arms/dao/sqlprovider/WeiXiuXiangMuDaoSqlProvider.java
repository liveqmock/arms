package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.common.util.ConfigUtil;
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

		return String.format(
				"select * from weixiuxiangmu %s order by ddlGongDuan %s",
				searchBean.getWhereSql(), searchBean.getLimitSql());
	}

	public String getWeiXiuXiangMuListCount(Map<String, Object> param) {
		String txtGongDanId = (String) param.get("txtGongDanId");
		SearchBean searchBean = getCountSearchBean(param);
		return String.format("select count(*) from weixiuxiangmu %s",
				searchBean.getWhereSql());
	}

	private SearchBean getCountSearchBean(Map<String, Object> param) {
		final WeiXiuXiangMu item = (WeiXiuXiangMu) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE, "ddlGongDuan", item
						.getDdlGongDuan()));
				this.addField(new Criteria(Action.LIKE, "txtName", item
						.getTxtName()));
				this.addField(new Criteria(Action.LIKE, "txtNeiRong", item
						.getTxtNeiRong()));
				// 只查找属于当前店铺的维修组
				this.addField(new Criteria(Action.STR_EQUAL, "txtShopCode",
						ConfigUtil.getInstance().getShopInfo().getShopCode()));
			}
		};
		return searchBean;
	}
}
