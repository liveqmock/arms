package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;

import com.chiefmech.arms.dao.sqlprovider.ReportDaoSqlProvider;
import com.chiefmech.arms.entity.query.GongDanWuLiaoReportSearchBean;
import com.chiefmech.arms.entity.query.GongDanXiangMuReportSearchBean;
import com.chiefmech.arms.entity.query.RenBaoWeeklyReportSearchBean;
import com.chiefmech.arms.entity.report.GongDanWuLiaoReport;
import com.chiefmech.arms.entity.report.GongDanXiangMuReport;
import com.chiefmech.arms.entity.report.RenBaoWeeklyReport;
import com.chiefmech.arms.entity.report.ShopDailyReport;

public interface ReportDao {

	@SelectProvider(type = ReportDaoSqlProvider.class, method = "getRenBaoWeeklyReportListForEasyUi")
	List<RenBaoWeeklyReport> getRenBaoWeeklyReportListForEasyUi(
			@Param("item") RenBaoWeeklyReportSearchBean query);

	@Select(" select * from v_renbao_weekly_report where txtGongDanId=#{txtGongDanId} and txtDeleteFlag='0' ")
	public List<RenBaoWeeklyReport> getRenBaoWeeklyReportListById(
			String txtGongDanId);

	@SelectProvider(type = ReportDaoSqlProvider.class, method = "getGongDanXiangMuReportList")
	List<GongDanXiangMuReport> getGongDanXiangMuReportList(
			@Param("item") GongDanXiangMuReportSearchBean query);

	@SelectProvider(type = ReportDaoSqlProvider.class, method = "getGongDanWuLiaoReportList")
	List<GongDanWuLiaoReport> getGongDanWuLiaoReportList(
			@Param("item") GongDanWuLiaoReportSearchBean query);

	@Select("SELECT count(*) dailyIncomingCount, sum(generalIncome) dailyOutputValue, sum(generalIncome - wuLiaoCost) dailyGrossProfit FROM v_shopDailyReport WHERE ruChangDate = date_format(now(), '%Y%m%d') AND txtShopCode = #{shopCode} GROUP BY txtShopCode;")
	ShopDailyReport getShopDailyInfo(String shopCode);

	@Select("SELECT count(*) monthlyIncomingCount, sum(generalIncome) monthlyOutputValue, sum(generalIncome - wuLiaoCost) monthlyGrossProfit FROM v_shopDailyReport WHERE ruChangDate >= date_format(now(), '%Y%m01') and ruChangDate <= date_format(now(), '%Y%m%d') AND txtShopCode = #{shopCode} GROUP BY txtShopCode")
	ShopDailyReport getMonthlyInfo(String shopCode);

}
