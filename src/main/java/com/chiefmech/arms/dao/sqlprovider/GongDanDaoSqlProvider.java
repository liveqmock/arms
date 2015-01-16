package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.entity.query.SaleAfterGongDanSearchBean;
import com.chiefmech.arms.entity.query.SearchBean;

public class GongDanDaoSqlProvider {

	public String getGongDanListForEasyUi(Map<String, Object> param) {
		SearchBean query = (SaleAfterGongDanSearchBean) param.get("item");

		return String.format("select * from gongdan %s %s",
				query.getWhereSql(), query.getLimitSql());
	}

	public String getGongDanCountForEasyUi(Map<String, Object> param) {
		SearchBean query = (SaleAfterGongDanSearchBean) param.get("item");

		return String.format("select count(*) from gongdan %s",
				query.getWhereSql());
	}
}
