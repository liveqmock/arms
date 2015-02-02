package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;
import com.chiefmech.arms.entity.query.XiaoShouManageSearchBean;
import com.chiefmech.arms.entity.query.SearchBean;


public class XiaoShouManageSearchDaoSqlProvider {

	public String getXiaoShouManageSearchList(Map<String, Object> param) {
		SearchBean query = (XiaoShouManageSearchBean) param.get("item");

		return String.format("select * from shangpinxiaoshoudan %s %s",
				query.getWhereSql(), query.getLimitSql());
	}

	public String getXiaoShouManageSearchListCount(Map<String, Object> param) {
		SearchBean query = (XiaoShouManageSearchBean) param.get("item");

		return String.format("select count(*) from shangpinxiaoshoudan %s",
				query.getWhereSql());
	}


}
