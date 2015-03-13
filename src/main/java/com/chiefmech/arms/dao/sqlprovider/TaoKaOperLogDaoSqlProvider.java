package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.entity.query.SearchBean;
import com.chiefmech.arms.entity.query.TaoKaOperLogSearchBean;

public class TaoKaOperLogDaoSqlProvider {

	public String getTaoKaOperLogListForEasyUi(Map<String, Object> param) {
		SearchBean query = (TaoKaOperLogSearchBean) param.get("item");

		return String.format("select * from v_taokaoperlog %s order by txtLogDate desc %s",
				query.getWhereSql(), query.getLimitSql());
	}

	public String getTaoKaOperLogCountForEasyUi(Map<String, Object> param) {
		SearchBean query = (TaoKaOperLogSearchBean) param.get("item");

		return String.format("select count(*) from v_taokaoperlog %s",
				query.getWhereSql());
	}
}
