package com.chiefmech.arms.action.report;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.DateUtil;
import com.chiefmech.arms.common.util.ReportUtil;
import com.chiefmech.arms.entity.RenBaoPrintItem;
import com.chiefmech.arms.entity.query.RenBaoWeeklyReportSearchBean;
import com.chiefmech.arms.entity.report.RenBaoWeeklyReport;
import com.chiefmech.arms.entity.report.ShopDailyReport;
import com.chiefmech.arms.service.ReportService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/report")
@Controller()
@Scope("prototype")
public class ReportAction extends BaseActionSupport implements
		ModelDriven<RenBaoWeeklyReportSearchBean> {

	@Resource()
	private ReportService reportService;

	private String txtGongDanId;
	private String shopCode;
	private List<RenBaoPrintItem> renBaoprintItemLst = new ArrayList<RenBaoPrintItem>();
	private List<RenBaoWeeklyReport> renBaoWeeklyReportLst;

	private RenBaoWeeklyReportSearchBean query = new RenBaoWeeklyReportSearchBean() {
		{
			setTxtRuChangDateBegin(DateUtil.getDateSinceToday(-7));
		}
	};
	private String easyUiJSonData;

	@Action(value = "renBaoWeeklyReport", results = { @Result(name = "input", location = "renBaoWeeklyReport.jsp") })
	public String renBaoWeeklyReport() {
		easyUiJSonData = reportService.getRenBaoWeeklyReportEasyUiJSon(query);
		return INPUT;
	}

	@Action(value = "queryRenBaoWeeklyReport")
	public void queryRenBaoWeeklyReport() {
		this.transmitJson(reportService.getRenBaoWeeklyReportEasyUiJSon(query));
	}

	@Action(value = "exportRenBaoWeeklyReport")
	public void exportRenBaoWeeklyReport() {
		List<RenBaoWeeklyReport> recordLst = reportService
				.getRenBaoWeeklyReportList(query);

		String templateFileName = this.getClass().getClassLoader()
				.getResource("report/RenBaoWeeklyReport.xls").getPath();
		String destFileName = String.format(
				"人保清单%s.xls",
				ReportUtil.getDateInfo(query.getTxtRuChangDateBegin(),
						query.getTxtRuChangDateEnd()));
		Map<String, List<RenBaoWeeklyReport>> beans = new HashMap<String, List<RenBaoWeeklyReport>>();
		beans.put("recordLst", recordLst);

		try {
			ReportUtil.exportExcel(templateFileName, destFileName, beans,
					servletResponse);
		} catch (Exception e) {
			e.printStackTrace();
			this.transmitPlainText("导出报表时发生错误！");
		}
	}

	@Action(value = "renBaoWeeklyReportPrint", results = { @Result(name = "input", location = "renBaoCheXianPrint.jsp") })
	public String renBaoWeeklyReportPrint() {
		renBaoWeeklyReportLst = reportService
				.getRenBaoWeeklyReportListById(txtGongDanId);

		for (RenBaoWeeklyReport item : renBaoWeeklyReportLst) {
			String txtTicketNumber = item.getTxtTicketNumberDisplay();
			int xiangMuValue = item.getTxtXiangMuValue();
			String wuLiao = (xiangMuValue == 800) ? "喷漆" : "1系机油及格";
			RenBaoPrintItem rb = new RenBaoPrintItem();
			rb.setTxtTicketNumberDisplay(txtTicketNumber);
			rb.setTxtWuLiaoName(wuLiao);
			rb.setTxtXiangMuValue(xiangMuValue);
			renBaoprintItemLst.add(rb);
		}
		return INPUT;
	}

	@Action(value = "shopDailyReportByShopCode")
	public void shopDailyReportByShopCode() {
		ShopDailyReport bean = reportService
				.getShopDailyReportByShopCode(shopCode);

		this.transmitJson(JSONObject.fromObject(bean).toString());
	}

	public String getEasyUiJSonData() {
		return easyUiJSonData;
	}

	public void setEasyUiJSonData(String easyUiJSonData) {
		this.easyUiJSonData = easyUiJSonData;
	}

	@Override
	public RenBaoWeeklyReportSearchBean getModel() {
		return query;
	}

	public RenBaoWeeklyReportSearchBean getQuery() {
		return query;
	}

	public String getTxtGongDanId() {
		return txtGongDanId;
	}

	public void setTxtGongDanId(String txtGongDanId) {
		this.txtGongDanId = txtGongDanId;
	}

	public void setShopCode(String shopCode) {
		this.shopCode = shopCode;
	}

	public List<RenBaoWeeklyReport> getRenBaoWeeklyReportLst() {
		return renBaoWeeklyReportLst;
	}

	public void setRenBaoWeeklyReportLst(
			List<RenBaoWeeklyReport> renBaoWeeklyReportLst) {
		this.renBaoWeeklyReportLst = renBaoWeeklyReportLst;
	}

	public List<RenBaoPrintItem> getRenBaoprintItemLst() {
		return renBaoprintItemLst;
	}

	public void setRenBaoprintItemLst(List<RenBaoPrintItem> renBaoprintItemLst) {
		this.renBaoprintItemLst = renBaoprintItemLst;
	}

}
