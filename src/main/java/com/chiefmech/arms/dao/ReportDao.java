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

	@Select("select count(*) from v_shopDailyReport WHERE ruChangDate = date_format(now(), '%Y%m%d') and txtShopCode = #{shopCode}")
	int getDailyIncomingCount(String shopCode);

	@Select("select ifnull(sum(outputValue),0) from v_shopDailyReport WHERE chuChangDate = date_format(now(), '%Y%m%d') and txtShopCode = #{shopCode}")
	int getDailyOutputValue(String shopCode);

	@Select("select ifnull(sum(outputValue-wuLiaoCost),0) from v_shopDailyReport WHERE chuChangDate = date_format(now(), '%Y%m%d') and txtShopCode = #{shopCode}")
	int getDailyGrossProfit(String shopCode);

	@Select("select count(*) from v_shopDailyReport WHERE ruChangDate >= date_format(now(), '%Y%m01') and ruChangDate <= date_format(now(), '%Y%m%d') and txtShopCode = #{shopCode}")
	int getMonthlyIncomingCount(String shopCode);

	@Select("select ifnull(sum(outputValue),0) from v_shopDailyReport WHERE chuChangDate >= date_format(now(), '%Y%m01') and chuChangDate <= date_format(now(), '%Y%m%d') and txtShopCode = #{shopCode}")
	int getMonthlyOutputValue(String shopCode);

	@Select("select ifnull(sum(outputValue-wuLiaoCost),0) from v_shopDailyReport WHERE chuChangDate >= date_format(now(), '%Y%m01') and chuChangDate <= date_format(now(), '%Y%m%d') and txtShopCode = #{shopCode}")
	int getMonthlyGrossProfit(String shopCode);

}
