package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.entity.query.GongDanWuLiaoReportSearchBean;
import com.chiefmech.arms.entity.query.GongDanXiangMuReportSearchBean;
import com.chiefmech.arms.entity.query.RenBaoWeeklyReportSearchBean;

public class ReportDaoSqlProvider {

	public String getRenBaoWeeklyReportListForEasyUi(Map<String, Object> param) {
		RenBaoWeeklyReportSearchBean query = (RenBaoWeeklyReportSearchBean) param
				.get("item");

		return String
				.format("select * from v_renbao_weekly_report %s order by txtRuChangDate desc, txtChePaiHao %s",
						query.getWhereSql(), query.getLimitSql());
	}

	public String getGongDanXiangMuReportList(Map<String, Object> param) {
		GongDanXiangMuReportSearchBean query = (GongDanXiangMuReportSearchBean) param
				.get("item");

		return String
				.format("select * from v_gongdanxiangmu %s order by txtRuChangDate desc",
						query.getWhereSql());
	}

	public String getGongDanWuLiaoReportList(Map<String, Object> param) {
		GongDanWuLiaoReportSearchBean query = (GongDanWuLiaoReportSearchBean) param
				.get("item");

		return String
				.format("select * from v_gongdanwuliao %s order by txtRuChangDate desc",
						query.getWhereSql());
	}

	public String getShopDailyReport(Map<String, Object> param) {
		String shopCode = (String) param.get("shopCode");

		return String
				.format("select (select count(*) from v_shopDailyReport WHERE ruChangDate = date_format(now(), '%Y%m%d') and txtShopCode = %s) dailyIncomingCount,"
						+ "(select ifnull(sum(outputValue),0) from v_shopDailyReport WHERE chuChangDate = date_format(now(), '%Y%m%d') and txtShopCode = %s) dailyOutputValue,"
						+ "(select ifnull(sum(outputValue-wuLiaoCost),0) from v_shopDailyReport WHERE chuChangDate = date_format(now(), '%Y%m%d') and txtShopCode = %s) dailyGrossProfit,"
						+ "(select count(*) from v_shopDailyReport WHERE ruChangDate >= date_format(now(), '%Y%m01') and ruChangDate <= date_format(now(), '%Y%m%d') and txtShopCode = %s) monthlyIncomingCount,"
						+ "(select ifnull(sum(outputValue),0) from v_shopDailyReport WHERE chuChangDate >= date_format(now(), '%Y%m01') and chuChangDate <= date_format(now(), '%Y%m%d') and txtShopCode = %s) monthlyOutputValue,"
						+ "(select ifnull(sum(outputValue-wuLiaoCost),0) from v_shopDailyReport WHERE chuChangDate >= date_format(now(), '%Y%m01') and chuChangDate <= date_format(now(), '%Y%m%d') and txtShopCode = %s) monthlyGrossProfit",
						shopCode, shopCode, shopCode, shopCode, shopCode,
						shopCode);
	}
}
