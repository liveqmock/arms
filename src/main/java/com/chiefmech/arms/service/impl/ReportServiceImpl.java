package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.ReportDao;
import com.chiefmech.arms.entity.query.GongDanWuLiaoReportSearchBean;
import com.chiefmech.arms.entity.query.GongDanXiangMuReportSearchBean;
import com.chiefmech.arms.entity.query.RenBaoWeeklyReportSearchBean;
import com.chiefmech.arms.entity.report.GongDanWuLiaoReport;
import com.chiefmech.arms.entity.report.GongDanXiangMuReport;
import com.chiefmech.arms.entity.report.RenBaoWeeklyReport;
import com.chiefmech.arms.service.ReportService;

@Service("reportService")
public class ReportServiceImpl implements ReportService {

	@Resource()
	private ReportDao reportDao;

	@Override
	public String getRenBaoWeeklyReportEasyUiJSon(
			RenBaoWeeklyReportSearchBean query) {
		List<RenBaoWeeklyReport> lst = getRenBaoWeeklyReportList(query);
		int total = lst.size();

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public List<RenBaoWeeklyReport> getRenBaoWeeklyReportList(
			RenBaoWeeklyReportSearchBean query) {
		return reportDao.getRenBaoWeeklyReportListForEasyUi(query);
	}

	@Override
	public List<RenBaoWeeklyReport> getRenBaoWeeklyReportListById(
			String txtGongDanId) {
		return reportDao.getRenBaoWeeklyReportListById(txtGongDanId);
	}

	@Override
	public String getGongDanXiangMuReportEasyUiJSon(
			GongDanXiangMuReportSearchBean query) {
		List<GongDanXiangMuReport> lst = getGongDanXiangMuReportList(query);
		int total = lst.size();

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public List<GongDanXiangMuReport> getGongDanXiangMuReportList(
			GongDanXiangMuReportSearchBean query) {
		return reportDao.getGongDanXiangMuReportList(query);
	}

	@Override
	public String getGongDanWuLiaoReportEasyUiJSon(
			GongDanWuLiaoReportSearchBean query) {
		List<GongDanWuLiaoReport> lst = getGongDanWuLiaoReportList(query);
		int total = lst.size();

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public List<GongDanWuLiaoReport> getGongDanWuLiaoReportList(
			GongDanWuLiaoReportSearchBean query) {
		return reportDao.getGongDanWuLiaoReportList(query);
	}

}
