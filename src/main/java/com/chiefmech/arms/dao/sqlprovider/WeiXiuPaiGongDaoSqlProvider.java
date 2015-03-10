package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.common.util.ConfigUtil;
import com.chiefmech.arms.entity.WeiXiuZhu;
import com.chiefmech.arms.entity.query.Criteria;
import com.chiefmech.arms.entity.query.SearchBean;
import com.chiefmech.arms.entity.query.Criteria.Action;

public class WeiXiuPaiGongDaoSqlProvider {

	public String getWeiXiuPaiGongList(Map<String, Object> param) {
		final int page = (Integer) param.get("page");
		final int rows = (Integer) param.get("rows");

		SearchBean searchBean = getCountSearchBean(param);
		searchBean.addLimitInfo(page, rows);

		return String.format("select * from weixiuzu %s %s",
				searchBean.getWhereSql(), searchBean.getLimitSql());
	}

	public String getWeiXiuPaiGongListCount(Map<String, Object> param) {
		SearchBean searchBean = getCountSearchBean(param);
		return String.format("select count(*) from weixiuzu %s",
				searchBean.getWhereSql());
	}

	private SearchBean getCountSearchBean(Map<String, Object> param) {
		final WeiXiuZhu item = (WeiXiuZhu) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE, "weixiuzuName", item
						.getWeixiuzuName()));
				// 只查找属于当前店铺的维修组
				this.addField(new Criteria(Action.STR_EQUAL, "txtShopCode",
						ConfigUtil.getInstance().getShopInfo().getShopCode()));
			}
		};
		return searchBean;
	}
}
