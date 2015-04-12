package com.chiefmech.arms.common.util;

import java.awt.Color;
import java.awt.Font;
import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.NumberFormat;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import net.sf.jxls.transformer.XLSTransformer;

import org.apache.commons.lang.StringUtils;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.struts2.ServletActionContext;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.StandardChartTheme;
import org.jfree.chart.labels.ItemLabelAnchor;
import org.jfree.chart.labels.ItemLabelPosition;
import org.jfree.chart.labels.StandardCategoryItemLabelGenerator;
import org.jfree.chart.labels.StandardPieSectionLabelGenerator;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PiePlot;
import org.jfree.chart.plot.PiePlot3D;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.renderer.category.BarRenderer3D;
import org.jfree.chart.servlet.ServletUtilities;
import org.jfree.chart.title.TextTitle;
import org.jfree.data.category.CategoryDataset;
import org.jfree.data.general.DatasetUtilities;
import org.jfree.data.general.DefaultPieDataset;
import org.jfree.ui.TextAnchor;
import org.jfree.util.Rotation;

public class ReportUtil {
	private static boolean isJfreeChartFactoryInitialized = false;

	public static void exportExcel(String templateFileName,
			String destFileName, Map beans, HttpServletResponse servletResponse)
			throws Exception {
		XLSTransformer transformer = new XLSTransformer();
		InputStream in = null;
		OutputStream out = null;
		try {
			// 设置响应
			servletResponse.setHeader(
					"Content-Disposition",
					"attachment;filename="
							+ new String(destFileName.getBytes("utf-8"),
									"ISO_8859_1"));
			servletResponse.setContentType("application/vnd.ms-excel");
			in = new BufferedInputStream(new FileInputStream(templateFileName));
			Workbook workbook = transformer.transformXLS(in, beans);
			out = servletResponse.getOutputStream();
			// 将内容写入输出流并把缓存的内容全部发出去
			workbook.write(out);
			out.flush();
		} catch (Exception e) {
			// 导出过程发生错误
			throw e;
		} finally {
			if (in != null) {
				try {
					in.close();
				} catch (IOException e) {
				}
			}
			if (out != null) {
				try {
					out.close();
				} catch (IOException e) {
				}
			}
		}
	}

	/**
	 * 生成柱状图
	 * 
	 * @param title
	 *            图表标题
	 * @param categoryAxisLabel
	 *            分类标签
	 * @param valueAxisLabel
	 *            值标签
	 * @param rowKeys
	 *            分类标签
	 * @param columnKeys
	 *            数量标签
	 * @param data
	 *            图表数据
	 * @param width
	 *            图表宽度
	 * @param height
	 *            图表高度
	 * @return 生成图表文件的文件名
	 */
	public static String getBarChartFileName(String title,
			String categoryAxisLabel, String valueAxisLabel, String[] rowKeys,
			String[] columnKeys, double[][] data, int width, int height) {
		initJfreeChartFactory();

		CategoryDataset dataset = DatasetUtilities.createCategoryDataset(
				rowKeys, columnKeys, data);
		JFreeChart chart = ChartFactory.createBarChart3D(title,
				categoryAxisLabel, valueAxisLabel, dataset,
				PlotOrientation.VERTICAL, true, true, false);
		CategoryPlot plot = chart.getCategoryPlot();
		// 设置网格背景颜色
		plot.setBackgroundPaint(Color.white);
		// 设置网格竖线颜色
		plot.setDomainGridlinePaint(Color.pink);
		// 设置网格横线颜色
		plot.setRangeGridlinePaint(Color.pink);

		// 显示每个柱的数值，并修改该数值的字体属性
		BarRenderer3D renderer = new BarRenderer3D();
		renderer.setBaseItemLabelGenerator(new StandardCategoryItemLabelGenerator());
		renderer.setBaseItemLabelsVisible(true);

		// 默认的数字显示在柱子中，通过如下两句可调整数字的显示
		// 注意：此句很关键，若无此句，那数字的显示会被覆盖，给人数字没有显示出来的问题
		renderer.setBasePositiveItemLabelPosition(new ItemLabelPosition(
				ItemLabelAnchor.OUTSIDE12, TextAnchor.BASELINE_LEFT));
		renderer.setItemLabelAnchorOffset(10D);

		// 设置每个地区所包含的平行柱的之间距离
		renderer.setItemMargin(0.4);
		plot.setRenderer(renderer);

		// 将下方的分类放到上方
		// plot.setDomainAxisLocation(AxisLocation.TOP_OR_RIGHT);
		// 将默认放在左边的“销量”放到右方
		// plot.setRangeAxisLocation(AxisLocation.BOTTOM_OR_RIGHT);

		String fileName = null;
		try {
			fileName = ServletUtilities.saveChartAsPNG(chart, width, height,
					null, ServletActionContext.getRequest().getSession());
		} catch (IOException e) {
			e.printStackTrace();
		}
		return fileName;
	}

	/**
	 * 生成饼图
	 * 
	 * @param title
	 *            标题
	 * @param subtitle
	 *            副标题
	 * @param dataset
	 *            数据
	 * @param width
	 *            图表宽度
	 * @param height
	 *            图表高度
	 * @return 生成图表文件的文件名
	 */
	public static String getPieChartFileName(String title, String subtitle,
			DefaultPieDataset dataset, int width, int height) {
		initJfreeChartFactory();
		// 通过工厂类生成JFreeChart对象
		JFreeChart chart = ChartFactory.createPieChart3D(title, dataset, true,
				true, false);
		chart.addSubtitle(new TextTitle(subtitle));
		PiePlot pieplot = (PiePlot) chart.getPlot();
		pieplot.setLabelFont(new Font("宋体", 0, 11));
		StandardPieSectionLabelGenerator standarPieIG = new StandardPieSectionLabelGenerator(
				"{0}:({1},{2})", NumberFormat.getNumberInstance(),
				NumberFormat.getPercentInstance());
		pieplot.setLabelGenerator(standarPieIG);

		// 没有数据的时候显示的内容
		pieplot.setNoDataMessage("无数据显示");
		pieplot.setLabelGap(0.02D);

		PiePlot3D pieplot3d = (PiePlot3D) chart.getPlot();
		// 设置开始角度
		pieplot3d.setStartAngle(120D);
		// 设置方向为”顺时针方向“
		pieplot3d.setDirection(Rotation.CLOCKWISE);
		// 设置透明度，0.5F为半透明，1为不透明，0为全透明
		pieplot3d.setForegroundAlpha(0.7F);

		String fileName = null;
		try {
			fileName = ServletUtilities.saveChartAsPNG(chart, width, height,
					null, ServletActionContext.getRequest().getSession());
		} catch (IOException e) {
			e.printStackTrace();
		}
		return fileName;
	}

	public static String getDateInfo(String dateBegin, String dateEnd) {
		String info = "";
		if (StringUtils.isNotBlank(dateBegin)
				&& StringUtils.isNotBlank(dateEnd)) {
			info = dateBegin + "至" + dateEnd;
		} else if (StringUtils.isNotBlank(dateBegin)) {
			info = dateBegin;
		} else if (StringUtils.isNotBlank(dateEnd)) {
			info = dateEnd;
		}
		return info;
	}

	private static void initJfreeChartFactory() {
		if (!isJfreeChartFactoryInitialized) {
			isJfreeChartFactoryInitialized = true;
			// 创建主题样式
			StandardChartTheme standardChartTheme = new StandardChartTheme("CN");
			// 设置标题字体
			standardChartTheme.setExtraLargeFont(new Font("隶书", Font.BOLD, 20));
			// 设置图例的字体
			standardChartTheme.setRegularFont(new Font("隶书", Font.PLAIN, 15));
			// 设置轴向的字体
			standardChartTheme.setLargeFont(new Font("隶书", Font.PLAIN, 15));
			// 应用主题样式
			ChartFactory.setChartTheme(standardChartTheme);
		}
	}
}
