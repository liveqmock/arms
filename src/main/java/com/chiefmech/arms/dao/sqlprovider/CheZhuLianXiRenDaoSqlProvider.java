package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.chiefmech.arms.entity.query.SaleAfterCustomSearchBean;
import com.chiefmech.arms.entity.view.VKeHuCheLiang;

public class CheZhuLianXiRenDaoSqlProvider {
	public String queryVKeHuCheLiang(Map<String, Object> param) {
		VKeHuCheLiang item = (VKeHuCheLiang) param.get("item");

		String txtCheLiangChePaiHao = item.getTxtCheLiangChePaiHao();
		String ddlCheLiangCheXi = item.getDdlCheLiangCheXi();
		String txtCheLiangCheJiaHao = item.getTxtCheLiangCheJiaHao();
		String txtCheZhuName = item.getTxtCheZhuName();
		String txtCheZhuTel = item.getTxtCheZhuTel();
		String[][] queryAry = {{"txtCheLiangChePaiHao", txtCheLiangChePaiHao},
				{"ddlCheLiangCheXi", ddlCheLiangCheXi},
				{"txtCheLiangCheJiaHao", txtCheLiangCheJiaHao},
				{"txtCheZhuName", txtCheZhuName},
				{"txtCheZhuTel", txtCheZhuTel}};

		String where = "";
		String fieldName = "";
		String fieldVal = "";
		for (String[] query : queryAry) {
			fieldName = query[0];
			fieldVal = query[1];
			if (!StringUtils.isBlank(fieldVal)) {
				if (where.length() > 0) {
					where += " and ";
				}
				where += fieldName + " like '%" + fieldVal + "%'";
			}
		}
		if (where.length() > 0) {
			where = "where " + where;
		}

		return String.format("select * from v_kehu_cheliang %s limit 0,10",
				where);
	}

	public String getVKeHuCheLiangListForEasyUi(Map<String, Object> param) {
		SaleAfterCustomSearchBean query = (SaleAfterCustomSearchBean) param
				.get("item");

		int rows = query.getTxtPageSize();
		int page = query.getTxtPageNum();
		int offset = (page - 1) * rows;

		return String
				.format("select * from v_kehu_cheliang where %s like '%%%s%%' limit %d,%d",
						query.getQueryField(), query.getQueryValue(), offset,
						rows);
	}

	public String getVKeHuCheLiangCountForEasyUi(Map<String, Object> param) {
		SaleAfterCustomSearchBean query = (SaleAfterCustomSearchBean) param
				.get("item");

		return String.format(
				"select count(*) from v_kehu_cheliang where %s like '%%%s%%'",
				query.getQueryField(), query.getQueryValue());
	}
}
