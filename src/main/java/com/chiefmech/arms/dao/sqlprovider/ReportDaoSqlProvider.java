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
}
