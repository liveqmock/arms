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

		SearchBean searchBean = getCountSearchBean(param);
		searchBean.addLimitInfo(page, rows);

		return String.format("select * from weixiuxiangmu %s %s",
				searchBean.getWhereSql(), searchBean.getLimitSql());
	}

	public String getWeiXiuXiangMuListCount(Map<String, Object> param) {
		SearchBean searchBean = getCountSearchBean(param);
		return String.format("select count(*) from weixiuxiangmu %s",
				searchBean.getWhereSql());
	}

	private SearchBean getCountSearchBean(Map<String, Object> param) {
		final WeiXiuXiangMu item = (WeiXiuXiangMu) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE,
						"txtWeiXiuXiangMuBianHao", item
								.getTxtWeiXiuXiangMuBianHao()));
				this.addField(new Criteria(Action.LIKE, "ddlSuoShuGongDuan",
						item.getDdlSuoShuGongDuan()));
				this.addField(new Criteria(Action.LIKE, "txtWeiXiuNeiRong",
						item.getTxtWeiXiuNeiRong()));
			}
		};
		return searchBean;
	}
}
