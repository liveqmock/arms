package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;
import com.chiefmech.arms.entity.query.WeiXiuChuTuiKuSearchBean;
import com.chiefmech.arms.entity.query.SearchBean;

public class WeiXiuChuTuiKuDaoSqlProvider {

	public String getWeiXiuChuTuiKuListForEasyUi(Map<String, Object> param) {
		SearchBean query = (WeiXiuChuTuiKuSearchBean) param.get("item");

		return String.format("select * from weixiuchutuiku %s %s",
				query.getWhereSql(), query.getLimitSql());
	}

	public String getWeiXiuChuTuiKuCountForEasyUi(Map<String, Object> param) {
		SearchBean query = (WeiXiuChuTuiKuSearchBean) param.get("item");

		return String.format("select count(*) from weixiuchutuiku %s",
				query.getWhereSql());
	}
}
