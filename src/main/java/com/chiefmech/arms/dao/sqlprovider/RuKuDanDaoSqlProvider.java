package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;
import com.chiefmech.arms.entity.query.RuKuDanSearchBean;
import com.chiefmech.arms.entity.query.SearchBean;


public class RuKuDanDaoSqlProvider {

	public String getRuKuDanList(Map<String, Object> param) {
		SearchBean query = (RuKuDanSearchBean) param.get("item");

		return String.format("select * from rukudan %s %s",
				query.getWhereSql(), query.getLimitSql());
	}

	public String getRuKuDanListCount(Map<String, Object> param) {
		SearchBean query = (RuKuDanSearchBean) param.get("item");

		return String.format("select count(*) from rukudan %s",
				query.getWhereSql());
	}


}
