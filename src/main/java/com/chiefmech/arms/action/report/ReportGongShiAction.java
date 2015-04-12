package com.chiefmech.arms.action.report;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.jfree.data.general.DefaultPieDataset;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.ReportUtil;
import com.chiefmech.arms.entity.report.GongShiReportItem;
import com.chiefmech.arms.entity.report.RenBaoWeeklyReport;
import com.chiefmech.arms.service.ReportService;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/report")
@Controller()
@Scope("prototype")
public class ReportGongShiAction extends BaseActionSupport {

	private String dateBegin;
	private String dateEnd;
	private int graphWidth;
	private int graphHeight;

	@Resource()
	private ReportService reportService;

	@Action(value = "reportGongShi", results = { @Result(name = "input", location = "reportGongShi.jsp") })
	public String reportGongShi() {
		return INPUT;
	}

	@Action(value = "queryGongShiReport")
	public void queryGongShiReport() {
		String graphURL = "";
		String errorMsg = "";
		List<GongShiReportItem> lst = reportService.queryAllGongShiReportItems(
				dateBegin, dateEnd, this.getShop().getShopCode());
		int dataSize = lst.size();
		if (dataSize > 0) {
			// ----------barchart begin------------
			String[] columnKeys = { "" };
			double[][] data = new double[dataSize][];
			String[] rowKeys = new String[dataSize];
			for (int i = 0; i < dataSize; i++) {
				GongShiReportItem item = lst.get(i);
				rowKeys[i] = item.getTxtBanZu();
				double[] value = { item.getTxtFeiYong() };
				data[i] = value;
			}
			String barPicFileName = ReportUtil.getBarChartFileName("工时报表",
					"班组", "工时费", rowKeys, columnKeys, data, graphWidth,
					graphHeight);
			// ----------barchart end------------

			// ----------piechart begin------------
			DefaultPieDataset dataset = new DefaultPieDataset();
			for (int i = 0; i < dataSize; i++) {
				GongShiReportItem item = lst.get(i);
				dataset.setValue(item.getTxtBanZu(), item.getTxtFeiYong());
			}
			String piePicFileName = ReportUtil.getPieChartFileName("工时报表",
					ReportUtil.getDateInfo(dateBegin, dateEnd), dataset,
					graphWidth, graphHeight);
			// ----------piechart end------------

			// 选择其中一个作为最终输出结果，此处作为参考代码，其余报表只生成其中一个即可
			String fileName = barPicFileName;
			if (fileName == null) {
				errorMsg = "生成报表图片信息出错";
			} else {
				graphURL = this.getBasePath() + "/DisplayChart?filename="
						+ fileName;
			}
		} else {
			errorMsg = "没有查询到符合条件的数据";
		}

		this.transmitJson(String
				.format("{\"graphURL\":\"%s\",\"errorMsg\":\"%s\"}", graphURL,
						errorMsg));
	}

	@Action(value = "exportGongShiReport")
	public void exportGongShiReport() {
		List<GongShiReportItem> lst = reportService.queryAllGongShiReportItems(
				dateBegin, dateEnd, this.getShop().getShopCode());

		String templateFileName = this.getClass().getClassLoader()
				.getResource("report/gongShiReport.xls").getPath();
		String destFileName = String.format("工时报表%s.xls",
				ReportUtil.getDateInfo(dateBegin, dateEnd));
		Map<String, List<GongShiReportItem>> beans = new HashMap<String, List<GongShiReportItem>>();
		beans.put("recordLst", lst);

		try {
			ReportUtil.exportExcel(templateFileName, destFileName, beans,
					servletResponse);
		} catch (Exception e) {
			e.printStackTrace();
			this.transmitPlainText("导出报表时发生错误！");
		}
	}

	public void setDateBegin(String dateBegin) {
		this.dateBegin = dateBegin;
	}

	public void setDateEnd(String dateEnd) {
		this.dateEnd = dateEnd;
	}

	public void setGraphWidth(int graphWidth) {
		this.graphWidth = graphWidth;
	}

	public void setGraphHeight(int graphHeight) {
		this.graphHeight = graphHeight;
	}

}
