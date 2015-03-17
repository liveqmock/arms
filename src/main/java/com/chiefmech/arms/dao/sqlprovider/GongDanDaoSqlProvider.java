package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.entity.query.SaleAfterGongDanSearchBean;
import com.chiefmech.arms.entity.query.SearchBean;

public class GongDanDaoSqlProvider {

	public String getGongDanListForEasyUi(Map<String, Object> param) {
		SaleAfterGongDanSearchBean query = (SaleAfterGongDanSearchBean) param
				.get("item");
		String actionName = query.getActionName();
		String orderBy = "order by field(txtGongDanStatus,'维修接待','车辆检测','物料登记','维修派工','领取物料','维修完检','费用结算','交车')";
		if ("saleAfterGongDanManage".equals(actionName)) {
			orderBy += ", txtRuChangDate desc";
		} else if ("clientReviewManage".equals(actionName)) {
			orderBy += ", txtChuChangDate";
		}

		return String.format("select * from gongdan %s %s %s",
				query.getWhereSql(), orderBy, query.getLimitSql());
	}

	public String getGongDanCountForEasyUi(Map<String, Object> param) {
		SearchBean query = (SaleAfterGongDanSearchBean) param.get("item");

		return String.format("select count(*) from gongdan %s",
				query.getWhereSql());
	}
}
