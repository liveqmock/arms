package com.chiefmech.arms.action.report;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.DateUtil;
import com.chiefmech.arms.common.util.ReportUtil;
import com.chiefmech.arms.entity.query.GongDanXiangMuReportSearchBean;
import com.chiefmech.arms.entity.report.GongDanXiangMuReport;
import com.chiefmech.arms.service.ReportService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/report")
@Controller()
@Scope("prototype")
public class ReportGongDanXiangMuAction extends BaseActionSupport
		implements
			ModelDriven<GongDanXiangMuReportSearchBean> {

	@Resource()
	private ReportService reportService;

	private GongDanXiangMuReportSearchBean query = new GongDanXiangMuReportSearchBean() {
		{
			setTxtRuChangDateBegin(DateUtil.getDateSinceToday(-1));
		}
	};
	private String easyUiJSonData;

	@Action(value = "reportGongDanXiangMu", results = {@Result(name = "input", location = "reportGongDanXiangMu.jsp")})
	public String reportGongDanXiangMu() {
		easyUiJSonData = reportService.getGongDanXiangMuReportEasyUiJSon(query);
		return INPUT;
	}

	@Action(value = "queryGongDanXiangMuReport")
	public void queryGongDanXiangMuReport() {
		this.transmitJson(reportService
				.getGongDanXiangMuReportEasyUiJSon(query));
	}

	@Action(value = "exportGongDanXiangMuReport")
	public void exportGongDanXiangMuReport() {
		List<GongDanXiangMuReport> recordLst = reportService
				.getGongDanXiangMuReportList(query);

		String templateFileName = this.getClass().getClassLoader()
				.getResource("report/GongDanXiangMuReport.xls").getPath();
		String destFileName = String.format("工单维修项目清单%s-%s.xls",
				query.getTxtRuChangDateBegin(), query.getTxtRuChangDateEnd());
		Map<String, List<GongDanXiangMuReport>> beans = new HashMap<String, List<GongDanXiangMuReport>>();
		beans.put("recordLst", recordLst);

		try {
			ReportUtil.exportExcel(templateFileName, destFileName, beans,
					servletResponse);
		} catch (Exception e) {
			e.printStackTrace();
			this.transmitPlainText("导出报表时发生错误！");
		}
	}

	public String getEasyUiJSonData() {
		return easyUiJSonData;
	}

	public void setEasyUiJSonData(String easyUiJSonData) {
		this.easyUiJSonData = easyUiJSonData;
	}

	@Override
	public GongDanXiangMuReportSearchBean getModel() {
		return query;
	}

	public GongDanXiangMuReportSearchBean getQuery() {
		return query;
	}
}
