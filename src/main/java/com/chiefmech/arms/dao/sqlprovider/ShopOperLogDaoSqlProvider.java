package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.entity.query.SearchBean;
import com.chiefmech.arms.entity.query.KuCunOperLogSearchBean;

public class ShopOperLogDaoSqlProvider {
	
	public String getShopOperLogListForEasyUi(Map<String, Object> param) {
		SearchBean query = (KuCunOperLogSearchBean) param.get("item");

		return String.format("select * from shopoperlog %s %s",
				query.getWhereSql(), query.getLimitSql());
	}

	public String getShopOperLogCountForEasyUi(Map<String, Object> param) {
		SearchBean query = (KuCunOperLogSearchBean) param.get("item");

		return String.format("select count(*) from shopoperlog %s",
				query.getWhereSql());
	}
}
