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
import com.chiefmech.arms.entity.query.RenBaoWeeklyReportSearchBean;
import com.chiefmech.arms.entity.report.RenBaoWeeklyReport;
import com.chiefmech.arms.service.ReportService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/report")
@Controller()
@Scope("prototype")
public class ReportAction extends BaseActionSupport
		implements
			ModelDriven<RenBaoWeeklyReportSearchBean> {

	@Resource()
	private ReportService reportService;

	private RenBaoWeeklyReportSearchBean query = new RenBaoWeeklyReportSearchBean() {
		{
			setTxtRuChangDateBegin(DateUtil.getDateSinceToday(-7));
		}
	};
	private String easyUiJSonData;

	@Action(value = "renBaoWeeklyReport", results = {@Result(name = "input", location = "renBaoWeeklyReport.jsp")})
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
				.getResource("report/RenBaoWeeklyReport.xls").getPath();;
		String destFileName = String.format("人保清单%s-%s.xls",
				query.getTxtRuChangDateBegin(), query.getTxtRuChangDateEnd());
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

}
