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
import com.chiefmech.arms.entity.report.GongShiReportItem;
import com.chiefmech.arms.entity.report.RenBaoWeeklyReport;
import com.chiefmech.arms.entity.report.ShopDailyReport;
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

	@Override
	public ShopDailyReport getShopDailyReportByShopCode(String shopCode) {
		ShopDailyReport bean = new ShopDailyReport();
		bean.setDailyIncomingCount(reportDao.getDailyIncomingCount(shopCode));
		bean.setDailyOutputValue(reportDao.getDailyOutputValue(shopCode));
		bean.setDailyGrossProfit(reportDao.getDailyGrossProfit(shopCode));
		bean.setMonthlyIncomingCount(reportDao
				.getMonthlyIncomingCount(shopCode));
		bean.setMonthlyOutputValue(reportDao.getMonthlyOutputValue(shopCode));
		bean.setMonthlyGrossProfit(reportDao.getMonthlyGrossProfit(shopCode));
		return bean;
	}

	@Override
	public List<GongShiReportItem> queryAllGongShiReportItems(String dateBegin,
			String dateEnd, String shopCode) {
		return reportDao.queryAllGongShiReportItems(dateBegin, dateEnd,
				shopCode);
	}

}
