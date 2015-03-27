package com.chiefmech.arms.service;

import java.util.List;

import com.chiefmech.arms.entity.query.GongDanWuLiaoReportSearchBean;
import com.chiefmech.arms.entity.query.GongDanXiangMuReportSearchBean;
import com.chiefmech.arms.entity.query.RenBaoWeeklyReportSearchBean;
import com.chiefmech.arms.entity.report.GongDanWuLiaoReport;
import com.chiefmech.arms.entity.report.GongDanXiangMuReport;
import com.chiefmech.arms.entity.report.RenBaoWeeklyReport;

public interface ReportService {

	List<RenBaoWeeklyReport> getRenBaoWeeklyReportList(
			RenBaoWeeklyReportSearchBean query);

	public String getRenBaoWeeklyReportEasyUiJSon(
			RenBaoWeeklyReportSearchBean query);

	public List<RenBaoWeeklyReport> getRenBaoWeeklyReportListById(
			String txtGongDanId);

	String getGongDanXiangMuReportEasyUiJSon(
			GongDanXiangMuReportSearchBean query);

	List<GongDanXiangMuReport> getGongDanXiangMuReportList(
			GongDanXiangMuReportSearchBean query);

	String getGongDanWuLiaoReportEasyUiJSon(GongDanWuLiaoReportSearchBean query);

	List<GongDanWuLiaoReport> getGongDanWuLiaoReportList(
			GongDanWuLiaoReportSearchBean query);

}
