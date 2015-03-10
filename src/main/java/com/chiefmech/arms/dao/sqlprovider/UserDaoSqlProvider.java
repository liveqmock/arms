package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.common.util.ConfigUtil;
import com.chiefmech.arms.entity.User;
import com.chiefmech.arms.entity.query.Criteria;
import com.chiefmech.arms.entity.query.Criteria.Action;
import com.chiefmech.arms.entity.query.SearchBean;

public class UserDaoSqlProvider {
	public String getUserList(Map<String, Object> param) {
		final int page = (Integer) param.get("page");
		final int rows = (Integer) param.get("rows");

		SearchBean searchBean = getCountSearchBean(param);
		searchBean.addLimitInfo(page, rows);

		return String.format("select * from users %s %s",
				searchBean.getWhereSql(), searchBean.getLimitSql());
	}

	public String getUserListCount(Map<String, Object> param) {
		SearchBean searchBean = getCountSearchBean(param);
		return String.format("select count(*) from users  %s",
				searchBean.getWhereSql());
	}

	private SearchBean getCountSearchBean(Map<String, Object> param) {
		final User item = (User) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				// 只查找属于当前店铺的用户
				this.addField(new Criteria(Action.STR_EQUAL, "shopCode",
						ConfigUtil.getInstance().getShopInfo().getShopCode()));
			}
		};
		return searchBean;
	}
}
