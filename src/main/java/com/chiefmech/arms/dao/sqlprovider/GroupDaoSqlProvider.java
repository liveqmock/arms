package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.entity.GroupPrivilege;
import com.chiefmech.arms.entity.query.Criteria;
import com.chiefmech.arms.entity.query.SearchBean;
import com.chiefmech.arms.entity.query.Criteria.Action;

public class GroupDaoSqlProvider {
	public String getGroupPrivilegesList(Map<String, Object> param) {
		return String.format(
				"select * from group_privileges %s order by groupName desc",
				getWhereSql(param));
	}

	private String getWhereSql(Map<String, Object> param) {
		final GroupPrivilege item = (GroupPrivilege) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE, "groupName", item
						.getGroupName()));
			}
		};
		String where = searchBean.getWhereSql();
		String searchSql = "groupName != '管理员'";
		if (where.length() > 0) {
			where += (" and " + searchSql);
		} else {
			where = (" where " + searchSql);
		}

		return where;
	}
}
