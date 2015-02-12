package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.entity.query.CaiGouWuLiaoSearchBean;

public class RuKuDanDaoSqlProvider {

	public String getVCaiGouWuLiaoList(Map<String, Object> param) {
		CaiGouWuLiaoSearchBean query = (CaiGouWuLiaoSearchBean) param
				.get("item");

		return String.format(
				"select * from v_caigouwuliao %s order by txtRuKuDate desc %s",
				getWhereSql(query), query.getLimitSql());
	}

	public String getVCaiGouWuLiaoListCount(Map<String, Object> param) {
		CaiGouWuLiaoSearchBean query = (CaiGouWuLiaoSearchBean) param
				.get("item");

		return String.format("select count(*) from v_caigouwuliao %s",
				getWhereSql(query));
	}

	public String getWhereSql(CaiGouWuLiaoSearchBean searchBean) {
		String saleAfterWeiXiuGuid = searchBean.getSaleAfterWeiXiuGuid();
		String sql = String
				.format("txtWuLiaoName not in(select txtWuLiaoName from gongdanwuliao where txtGongDanGuid='%s')",
						saleAfterWeiXiuGuid);
		String where = searchBean.getWhereSql();

		if (where.length() > 0) {
			where += " and " + sql;
		} else {
			where = " where " + sql;
		}
		return where;
	}

}
