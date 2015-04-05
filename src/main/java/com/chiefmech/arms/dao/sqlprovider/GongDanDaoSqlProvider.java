package com.chiefmech.arms.dao.sqlprovider;

import java.util.List;
import java.util.Map;

import com.chiefmech.arms.entity.GongDanCheLiangJianCe;
import com.chiefmech.arms.entity.JianChaXiangMu;
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

	public String addAllJianCeItemsToGongDan(Map<String, Object> param) {
		String txtGongDanId = (String) param.get("txtGongDanId");
		@SuppressWarnings("unchecked")
		List<JianChaXiangMu> jianChaXiangMuList = (List<JianChaXiangMu>) param
				.get("jianChaXiangMuList");

		StringBuffer valueTuplesSb = new StringBuffer();
		for (JianChaXiangMu jianChaXiangMu : jianChaXiangMuList) {
			GongDanCheLiangJianCe item = new GongDanCheLiangJianCe(
					txtGongDanId, jianChaXiangMu);
			if (valueTuplesSb.length() > 0) {
				valueTuplesSb.append(",");
			}
			valueTuplesSb.append(String.format(
					"('%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s')",
					item.getTxtJianCeGuid(), item.getTxtGongDanGuid(),
					item.getTxtXuHao(), item.getTxtJianChaName(),
					item.getTxtStatusItem(), item.getTxtActionItem(),
					item.getTxtTip1(), item.getTxtTip2(),
					item.getTxtCurStatus(), item.getTxtCurAction(),
					item.getTxtRemark()));
		}

		return String
				.format("insert into gongdanjiance(txtJianCeGuid,txtGongDanGuid,txtXuHao,txtJianChaName,txtStatusItem,txtActionItem,txtTip1,txtTip2,txtCurStatus,txtCurAction,txtRemark) values %s",
						valueTuplesSb.toString());
	}
}
