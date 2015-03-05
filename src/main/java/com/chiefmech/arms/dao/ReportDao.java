package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.SelectProvider;

import com.chiefmech.arms.dao.sqlprovider.ReportDaoSqlProvider;
import com.chiefmech.arms.entity.query.RenBaoWeeklyReportSearchBean;
import com.chiefmech.arms.entity.report.RenBaoWeeklyReport;

public interface ReportDao {

	@SelectProvider(type = ReportDaoSqlProvider.class, method = "getRenBaoWeeklyReportListForEasyUi")
	List<RenBaoWeeklyReport> getRenBaoWeeklyReportListForEasyUi(
			@Param("item") RenBaoWeeklyReportSearchBean query);

}
