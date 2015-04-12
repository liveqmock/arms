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
import com.chiefmech.arms.entity.query.GongDanWuLiaoReportSearchBean;
import com.chiefmech.arms.entity.query.GongDanWuLiaoReportSearchBean;
import com.chiefmech.arms.entity.report.GongDanWuLiaoReport;
import com.chiefmech.arms.service.ReportService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/report")
@Controller()
@Scope("prototype")
public class ReportGongDanWuLiaoAction extends BaseActionSupport implements
		ModelDriven<GongDanWuLiaoReportSearchBean> {

	@Resource()
	private ReportService reportService;

	private GongDanWuLiaoReportSearchBean query = new GongDanWuLiaoReportSearchBean() {
		{
			setTxtRuChangDateBegin(DateUtil.getDateSinceToday(-1));
		}
	};
	private String easyUiJSonData;

	@Action(value = "reportGongDanWuLiao", results = { @Result(name = "input", location = "reportGongDanWuLiao.jsp") })
	public String reportGongDanWuLiao() {
		easyUiJSonData = reportService.getGongDanWuLiaoReportEasyUiJSon(query);
		return INPUT;
	}

	@Action(value = "queryGongDanWuLiaoReport")
	public void queryGongDanWuLiaoReport() {
		this.transmitJson(reportService.getGongDanWuLiaoReportEasyUiJSon(query));
	}

	@Action(value = "exportGongDanWuLiaoReport")
	public void exportGongDanWuLiaoReport() {
		List<GongDanWuLiaoReport> recordLst = reportService
				.getGongDanWuLiaoReportList(query);

		String templateFileName = this.getClass().getClassLoader()
				.getResource("report/GongDanWuLiaoReport.xls").getPath();
		String destFileName = String.format(
				"工单维修物料清单%s.xls",
				ReportUtil.getDateInfo(query.getTxtRuChangDateBegin(),
						query.getTxtRuChangDateEnd()));
		Map<String, List<GongDanWuLiaoReport>> beans = new HashMap<String, List<GongDanWuLiaoReport>>();
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
	public GongDanWuLiaoReportSearchBean getModel() {
		return query;
	}

	public GongDanWuLiaoReportSearchBean getQuery() {
		return query;
	}
}
