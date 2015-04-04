package com.chiefmech.arms.test.Test;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

public class ExcelToSql {

	private String fileName = "kucun/jiance.xls";
	private List<Item> itemLst = new ArrayList<Item>();
	private StringBuffer sb = new StringBuffer();

	public static void main(String[] args) {
		ExcelToSql excelToSql = new ExcelToSql();
		excelToSql.parseItemListFromExcel();
		excelToSql.genItemSqls();

		excelToSql.showGenSqls();
	}

	private void genItemSqls() {
		for (Item item : itemLst) {
			String sql = String
					.format("update jianchaxiangmu set txtStatusItem=\"%s\",txtActionItem=\"%s\",txtTip1=\"%s\",txtTip2=\"%s\" where txtXuHao=%d;\n",
							item.getTxtStatusItem(), item.getTxtActionItem(),
							item.getTxtTip1(), item.getTxtTip2(),
							item.getTxtXuHao());
			sb.append(sql);
		}
	}

	private Item getObjectFromRow(HSSFRow row) {
		Item item = new Item();
		item.setTxtXuHao((int) Float.parseFloat(getCellValue(row, 1)));
		item.setTxtStatusItem(getCellValue(row, 3));
		item.setTxtActionItem(getCellValue(row, 4));
		item.setTxtTip1(getCellValue(row, 6));
		item.setTxtTip2(getCellValue(row, 7));
		return item;
	}

	class Item {
		private int txtXuHao;
		private String txtStatusItem;
		private String txtActionItem;
		private String txtTip1;
		private String txtTip2;

		public String getTxtStatusItem() {
			return txtStatusItem;
		}

		public void setTxtStatusItem(String txtStatusItem) {
			this.txtStatusItem = txtStatusItem;
		}

		public String getTxtActionItem() {
			return txtActionItem;
		}

		public void setTxtActionItem(String txtActionItem) {
			this.txtActionItem = txtActionItem;
		}

		public int getTxtXuHao() {
			return txtXuHao;
		}

		public void setTxtXuHao(int txtXuHao) {
			this.txtXuHao = txtXuHao;
		}

		public String getTxtTip1() {
			return txtTip1;
		}

		public void setTxtTip1(String txtTip1) {
			this.txtTip1 = txtTip1;
		}

		public String getTxtTip2() {
			return txtTip2;
		}

		public void setTxtTip2(String txtTip2) {
			this.txtTip2 = txtTip2;
		}
	}

	private void showGenSqls() {
		System.out.println(sb.toString());
	}

	public void parseItemListFromExcel() {
		try {
			String filepath = this.getClass().getClassLoader()
					.getResource(this.fileName).getPath();

			InputStream is = new FileInputStream(filepath);
			POIFSFileSystem fs = new POIFSFileSystem(is);
			HSSFWorkbook wb = new HSSFWorkbook(fs);

			HSSFSheet sheet = wb.getSheetAt(0);
			int rowNum = sheet.getLastRowNum();
			// 正文内容应该从第二行开始,第一行为表头的标题
			for (int i = 1; i < rowNum; i++) {
				HSSFRow row = sheet.getRow(i);

				itemLst.add(getObjectFromRow(row));
			}
		} catch (IOException e) {
			System.out.println("当前条数：" + itemLst.size());
			e.printStackTrace();
		}
		System.out.println("解析结束，记录条数：" + itemLst.size());
	}

	/**
	 * 
	 * @param row
	 * @param colIndex
	 *            第一列index为1 * @return
	 */
	private String getCellValue(HSSFRow row, int colIndex) {
		HSSFCell cell = row.getCell(colIndex - 1);

		String cellvalue = "";
		if (cell != null) {
			switch (cell.getCellType()) {
			case HSSFCell.CELL_TYPE_NUMERIC:
				cellvalue = String.valueOf(cell.getNumericCellValue());
				break;
			case HSSFCell.CELL_TYPE_STRING:
				cellvalue = cell.getStringCellValue();
				break;
			case HSSFCell.CELL_TYPE_FORMULA:
				cellvalue = cell.getRichStringCellValue().getString();
				break;
			default:
				cellvalue = "";
			}
		} else {
			cellvalue = "";
		}

		return cellvalue.trim();
	}

}
