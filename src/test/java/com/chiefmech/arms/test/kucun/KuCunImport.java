package com.chiefmech.arms.test.kucun;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.entity.KuCun;

/**
 * 操作Excel表格的功能类
 */
public class KuCunImport {
	private POIFSFileSystem fs;
	private HSSFWorkbook wb;
	private HSSFSheet sheet;
	private HSSFRow row;

	/**
	 * 读取Excel数据内容
	 * 
	 * @param InputStream
	 * @return Map 包含单元格数据内容的Map对象
	 */
	public List<KuCun> readExcelContent(InputStream is) {
		List<KuCun> lst = new ArrayList<KuCun>();
		try {
			fs = new POIFSFileSystem(is);
			wb = new HSSFWorkbook(fs);
		} catch (IOException e) {
			e.printStackTrace();
		}
		sheet = wb.getSheetAt(0);
		// 得到总行数
		int rowNum = sheet.getLastRowNum();
		// 正文内容应该从第二行开始,第一行为表头的标题
		for (int i = 1; i < rowNum; i++) {
			row = sheet.getRow(i);

			KuCun item = new KuCun();
			item.setTxtKuCunGuid(IDGen.getUUID());
			item.setTxtShopCode("001");
			item.setTxtWuLiaoCode(getCellValue(row, 2));
			item.setTxtWuLiaoName(getCellValue(row, 3));
			item.setTxtQty((int) Float.parseFloat(getCellValue(row, 6)));
			item.setTxtChengBenJia(Float.parseFloat(getCellValue(row, 4)));
			item.setTxtSalePrice(Float.parseFloat(getCellValue(row, 5)));
			item.setTxtSuppName(getCellValue(row, 1));
			item.setTxtRemark(getCellValue(row, 7));

			lst.add(item);

			System.out.println((i + 1) + "  " + item.toString());
		}
		return lst;
	}
	/**
	 * 
	 * @param row
	 * @param colIndex
	 *            第一列index为1
	 * @return
	 */
	private String getCellValue(HSSFRow row, int colIndex) {
		return getCellFormatValue(row.getCell(colIndex - 1));
	}

	/**
	 * 根据HSSFCell类型设置数据
	 * 
	 * @param cell
	 * @return
	 */
	private String getCellFormatValue(HSSFCell cell) {
		String cellvalue = "";
		if (cell != null) {
			// 判断当前Cell的Type
			switch (cell.getCellType()) {
			// 如果当前Cell的Type为NUMERIC
				case HSSFCell.CELL_TYPE_NUMERIC :
				case HSSFCell.CELL_TYPE_FORMULA : {
					// 判断当前的cell是否为Date
					if (HSSFDateUtil.isCellDateFormatted(cell)) {
						// 如果是Date类型则，转化为Data格式

						// 方法1：这样子的data格式是带时分秒的：2011-10-12 0:00:00
						// cellvalue = cell.getDateCellValue().toLocaleString();

						// 方法2：这样子的data格式是不带带时分秒的：2011-10-12
						Date date = cell.getDateCellValue();
						SimpleDateFormat sdf = new SimpleDateFormat(
								"yyyy-MM-dd");
						cellvalue = sdf.format(date);
					}
					// 如果是纯数字
					else {
						// 取得当前Cell的数值
						cellvalue = String.valueOf(cell.getNumericCellValue());
					}
					break;
				}
				// 如果当前Cell的Type为STRIN
				case HSSFCell.CELL_TYPE_STRING :
					// 取得当前的Cell字符串
					cellvalue = cell.getRichStringCellValue().getString();
					break;
				// 默认的Cell值
				default :
					cellvalue = "";
			}
		} else {
			cellvalue = "";
		}
		return cellvalue.trim();

	}

	public static void main(String[] args) {
		try {
			KuCunImport excelReader = new KuCunImport();
			String filepath = excelReader.getClass().getClassLoader()
					.getResource("kucun/kucun_xixiang_2015-03-16.xls")
					.getPath();
			// 对读取Excel表格标题测试
			InputStream is = new FileInputStream(filepath);
			List<KuCun> lst = excelReader.readExcelContent(is);

		} catch (FileNotFoundException e) {
			System.out.println("未找到指定路径的文件!");
			e.printStackTrace();
		}
	}
}