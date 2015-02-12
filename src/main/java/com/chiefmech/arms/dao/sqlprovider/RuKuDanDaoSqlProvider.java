package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;
import com.chiefmech.arms.entity.query.RuKuDanSearchBean;
import com.chiefmech.arms.entity.query.SearchBean;

public class RuKuDanDaoSqlProvider {

	public String getVCaiGouWuLiaoList(Map<String, Object> param) {
		SearchBean query = (RuKuDanSearchBean) param.get("item");

		return String.format(
				"select * from v_caigouwuliao %s order by txtRuKuDate desc %s",
				query.getWhereSql(), query.getLimitSql());
	}

	public String getVCaiGouWuLiaoListCount(Map<String, Object> param) {
		SearchBean query = (RuKuDanSearchBean) param.get("item");

		return String.format("select count(*) from v_caigouwuliao %s",
				query.getWhereSql());
	}

}
