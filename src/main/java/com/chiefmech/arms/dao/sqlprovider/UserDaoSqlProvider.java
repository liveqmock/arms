package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.common.util.SessionUtil;
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

		return String.format("select * from v_users %s order by shopCode, groupName %s",
				searchBean.getWhereSql(), searchBean.getLimitSql());
	}

	public String getUserListCount(Map<String, Object> param) {
		SearchBean searchBean = getCountSearchBean(param);
		return String.format("select count(*) from v_users  %s",
				searchBean.getWhereSql());
	}

	private SearchBean getCountSearchBean(Map<String, Object> param) {
		final User item = (User) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				// 不能跨公司查看用户
				this.addField(new Criteria(Action.STR_EQUAL, "companyFlag",
						SessionUtil.getShopInfo().getCompanyFlag()));
				// 没有跨店管理权限就只能查看自店信息
				if (!SessionUtil.getUserInfo().getPrivilegeLst()
						.contains("manageUserForAllShop")) {
					this.addField(new Criteria(Action.STR_EQUAL, "shopCode",
							SessionUtil.getShopInfo()
									.getShopCode()));
				}
			}
		};
		return searchBean;
	}
}
