package com.chiefmech.arms.service;

import java.util.List;

import com.chiefmech.arms.entity.query.RenBaoWeeklyReportSearchBean;
import com.chiefmech.arms.entity.report.RenBaoWeeklyReport;

public interface ReportService {
	
	List<RenBaoWeeklyReport> getRenBaoWeeklyReportList(
			RenBaoWeeklyReportSearchBean query);
	
	public String getRenBaoWeeklyReportEasyUiJSon(
			RenBaoWeeklyReportSearchBean query);
	
	public List<RenBaoWeeklyReport> getRenBaoWeeklyReportListById(String txtGongDanId);

}
