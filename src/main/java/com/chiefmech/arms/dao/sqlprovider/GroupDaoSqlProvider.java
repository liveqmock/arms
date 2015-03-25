package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.entity.GroupPrivilege;
import com.chiefmech.arms.entity.query.Criteria;
import com.chiefmech.arms.entity.query.SearchBean;
import com.chiefmech.arms.entity.query.Criteria.Action;

public class GroupDaoSqlProvider {
	public String getGroupPrivilegesList(Map<String, Object> param) {
		final int page = (Integer) param.get("page");
		final int rows = (Integer) param.get("rows");
		SearchBean searchBean = getCountSearchBean(param);
		searchBean.addLimitInfo(page, rows);
		if (searchBean.getWhereSql().equals("")) {
			return String
					.format("select * from group_privileges where groupName != '管理员'  order by groupName desc %s",
							searchBean.getLimitSql());
		} else {
			return String
					.format("select * from group_privileges %s and groupName !='管理员'  order by groupName desc %s",
							searchBean.getWhereSql(), searchBean.getLimitSql());
		}
	}

	public String getGroupPrivilegesListCount(Map<String, Object> param) {
		SearchBean searchBean = getCountSearchBean(param);
		if (searchBean.getWhereSql().equals("")) {
			return String
					.format("select count(*) from group_privileges where groupName != '管理员' ");
		} else {
			return String
					.format("select count(*) from group_privileges  %s and groupName != '管理员'  ",
							searchBean.getWhereSql());
		}
	}

	private SearchBean getCountSearchBean(Map<String, Object> param) {
		final GroupPrivilege item = (GroupPrivilege) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE, "groupName", item
						.getGroupName()));
			}
		};
		return searchBean;
	}
}
