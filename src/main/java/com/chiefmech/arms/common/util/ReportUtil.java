package com.chiefmech.arms.common.util;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import net.sf.jxls.transformer.XLSTransformer;

import org.apache.poi.ss.usermodel.Workbook;

public class ReportUtil {

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
							+ new String(destFileName.getBytes("utf-8"), "ISO_8859_1"));
			servletResponse.setContentType("application/vnd.ms-excel");
			in = new BufferedInputStream(new FileInputStream(templateFileName));
			Workbook workbook = transformer.transformXLS(in, beans);
			out = servletResponse.getOutputStream();
			// 将内容写入输出流并把缓存的内容全部发出去
			workbook.write(out);
			out.flush();
		} catch (Exception e) {
			//导出过程发生错误
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
}
