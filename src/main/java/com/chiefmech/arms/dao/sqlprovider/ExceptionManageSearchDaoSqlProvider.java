package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.entity.query.ExceptionManageSearchBean;
import com.chiefmech.arms.entity.query.SearchBean;


public class ExceptionManageSearchDaoSqlProvider {

	public String getExceptionManageSearchList(Map<String, Object> param) {
		SearchBean query = (ExceptionManageSearchBean) param.get("item");

		return String.format("select * from liwaibiao %s %s",
				query.getWhereSql(), query.getLimitSql());
	}

	public String getExceptionManageSearchListCount(Map<String, Object> param) {
		SearchBean query = (ExceptionManageSearchBean) param.get("item");

		return String.format("select count(*) from liwaibiao %s",
				query.getWhereSql());
	}
}
