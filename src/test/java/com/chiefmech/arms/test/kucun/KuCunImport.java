package com.chiefmech.arms.test.kucun;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.commons.io.FileUtils;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

import com.chiefmech.arms.common.util.ConfigUtil;
import com.chiefmech.arms.common.util.DateUtil;
import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.entity.KuCun;
import com.chiefmech.arms.entity.KuCunOperLog;
import com.chiefmech.arms.entity.RuKuDan;
import com.chiefmech.arms.entity.RuKuDanWuLiao;
import com.chiefmech.arms.entity.Shop;

public class KuCunImport {
	private String shopCode = "001";
	private String fileName = "kucun/kucun_xixiang_2015-03-16.xls";
	private String genSqlFile = "D:\\sqlFromExcel.txt";
	private String user = "杨小院";

	private List<KuCun> kuCunLst = new ArrayList<KuCun>();
	private List<RuKuDan> ruKuDanLst = new ArrayList<RuKuDan>();
	private List<RuKuDanWuLiao> ruKuDanWuLiaoLst = new ArrayList<RuKuDanWuLiao>();
	private List<KuCunOperLog> kuCunOperLogLst = new ArrayList<KuCunOperLog>();
	private List<String> supplierLst = new ArrayList<String>();
	private StringBuffer sb = new StringBuffer();

	public static void main(String[] args) {
		ConfigUtil.getInstance().setShopInfo(new Shop()); // 避免运行出错

		KuCunImport importer = new KuCunImport();
		importer.initKuCunListFromExcel();
		importer.initBensLst();

		// 供应商
		importer.genSupplierSqls();
		// 入库单
		importer.genRuKuDanSqls();
		// 入库单物料
		importer.genRuKuDanWuLiaoSqls();
		// 库存
		importer.genKuCunSqls();
		// 库存日志
		importer.genKuCunOperLogSqls();

		importer.writeToGenSqlFile();
	}

	private void writeToGenSqlFile() {
		try {
			FileUtils.writeStringToFile(new File(genSqlFile), sb.toString());
			System.out.println(sb.toString());
			System.out.println("解析完成，sql语句汇总在" + genSqlFile);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void initBensLst() {
		Set<String> set = new HashSet<String>();
		for (KuCun item : kuCunLst) {
			if (set.add(item.getTxtSuppName())) {
				supplierLst.add(item.getTxtSuppName());
			}
		}

		for (int i = 0; i < supplierLst.size(); i++) {
			String supplier = supplierLst.get(i);

			RuKuDan ruKuDan = new RuKuDan();
			ruKuDan.setTxtGuid(IDGen.getUUID());
			ruKuDan.setTxtShopCode(this.shopCode);
			ruKuDan.setTxtBillNo(String.format("RCCG%s%03d",
					DateUtil.getCurrentDateID(), i + 1));
			ruKuDan.setTxtRuKuDate(DateUtil.getCurrentDate());
			ruKuDan.setTxtSuppName(supplier);
			ruKuDan.setTxtJingShouRen(this.user);
			ruKuDan.setDdlRuKuSort("日常采购");
			ruKuDan.setTxtRemarks("");
			ruKuDan.setTxtStatus("审核完毕");
			ruKuDan.setTxtShenHeRen(this.user);
			ruKuDan.setTxtShenHeShiJian(DateUtil.getCurrentDate());

			ruKuDanLst.add(ruKuDan);
		}

		for (RuKuDan ruKuDan : ruKuDanLst) {
			for (KuCun kuCun : kuCunLst) {
				if (kuCun.getTxtSuppName().equals(ruKuDan.getTxtSuppName())) {
					RuKuDanWuLiao wuLiao = new RuKuDanWuLiao();
					wuLiao.setTxtWuLiaoGuid(IDGen.getUUID());
					wuLiao.setTxtRuKuDanGuid(ruKuDan.getTxtGuid());
					wuLiao.setTxtWuLiaoCode(kuCun.getTxtWuLiaoCode());
					wuLiao.setTxtWuLiaoName(kuCun.getTxtWuLiaoName());
					wuLiao.setTxtQty(kuCun.getTxtQty());
					wuLiao.setTxtPrice(kuCun.getTxtChengBenJia());
					wuLiao.setTxtRemark(kuCun.getTxtRemark());

					ruKuDanWuLiaoLst.add(wuLiao);
				}
			}
		}

		for (RuKuDan ruKuDan : ruKuDanLst) {
			for (RuKuDanWuLiao item : ruKuDanWuLiaoLst) {
				if (ruKuDan.getTxtGuid().equals(item.getTxtRuKuDanGuid())) {
					KuCunOperLog log = new KuCunOperLog();
					log.setTxtLogGuid(IDGen.getUUID());
					log.setTxtShopCode(ruKuDan.getTxtShopCode());
					log.setTxtWuLiaoCode(item.getTxtWuLiaoCode());
					log.setTxtWuLiaoName(item.getTxtWuLiaoName());
					log.setTxtQty(item.getTxtQty());
					log.setTxtChengBenJia(item.getTxtPrice());
					for (KuCun kuCun : kuCunLst) {
						if (kuCun.getTxtWuLiaoCode().equals(
								item.getTxtWuLiaoCode())) {
							log.setTxtSalePrice(kuCun.getTxtSalePrice());
							log.setTxtSuppName(kuCun.getTxtSuppName());
							break;
						}
					}
					log.setTxtRemark(item.getTxtRemark());
					log.setTxtBillGuid(ruKuDan.getTxtGuid());
					log.setTxtOperAction(ruKuDan.getDdlRuKuSort());
					log.setTxtLogDate(DateUtil.getCurrentDateTime());

					kuCunOperLogLst.add(log);
				}
			}
		}
	}

	private void genKuCunOperLogSqls() {
		for (KuCunOperLog item : this.kuCunOperLogLst) {
			String sql = String
					.format("insert into kucunoperlog(txtLogGuid,txtShopCode,txtBillGuid,txtOperAction,txtLogDate,txtWuLiaoCode,txtWuLiaoName,txtQty,txtChengBenJia,txtSalePrice,txtSuppName,txtRemark) "
							+ "values('%s','%s','%s','%s','%s','%s','%s',%d,%.2f,%.2f,'%s','%s');\n",
							item.getTxtLogGuid(), item.getTxtShopCode(),
							item.getTxtBillGuid(), item.getTxtOperAction(),
							item.getTxtLogDate(), item.getTxtWuLiaoCode(),
							item.getTxtWuLiaoName(), item.getTxtQty(),
							item.getTxtChengBenJia(), item.getTxtSalePrice(),
							item.getTxtSuppName(), item.getTxtRemark());
			sb.append(sql);
		}
	}

	private void genKuCunSqls() {
		for (KuCun item : this.kuCunLst) {
			String sql = String
					.format("insert into kucun(txtKuCunGuid,txtShopCode,txtWuLiaoCode,txtWuLiaoName,txtQty,txtChengBenJia,txtSalePrice,txtSuppName,txtRemark) "
							+ "values('%s','%s','%s','%s',%d,%.2f,%.2f,'%s','%s');\n",
							item.getTxtKuCunGuid(), item.getTxtShopCode(),
							item.getTxtWuLiaoCode(), item.getTxtWuLiaoName(),
							item.getTxtQty(), item.getTxtChengBenJia(),
							item.getTxtSalePrice(), item.getTxtSuppName(),
							item.getTxtRemark());
			sb.append(sql);
		}
	}

	private void genRuKuDanWuLiaoSqls() {
		for (RuKuDanWuLiao item : this.ruKuDanWuLiaoLst) {
			String sql = String
					.format("insert into rukudanwuliao(txtWuLiaoGuid,txtRuKuDanGuid,txtWuLiaoCode,txtWuLiaoName,txtQty,txtPrice,txtRemark)"
							+ " values('%s','%s','%s','%s',%d,%.2f,'%s');\n",
							item.getTxtWuLiaoGuid(), item.getTxtRuKuDanGuid(),
							item.getTxtWuLiaoCode(), item.getTxtWuLiaoName(),
							item.getTxtQty(), item.getTxtPrice(),
							item.getTxtRemark());
			sb.append(sql);
		}
	}

	private void genSupplierSqls() {
		for (String supplier : this.supplierLst) {
			String sql = String
					.format("insert into supplier(txtSuppId,txtShopCode,txtSuppName) values('%s','%s','%s');\n",
							IDGen.getUUID(), this.shopCode, supplier);
			sb.append(sql);
		}
	}

	private void genRuKuDanSqls() {
		for (RuKuDan item : this.ruKuDanLst) {
			String sql = String
					.format("insert into rukudan(txtGuid,txtShopCode,txtBillNo,txtRuKuDate,txtSuppName,txtJingShouRen,ddlRuKuSort,txtRemarks,txtStatus,txtShenHeRen,txtShenHeShiJian) "
							+ "values('%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s');\n",
							item.getTxtGuid(), item.getTxtShopCode(),
							item.getTxtBillNo(), item.getTxtRuKuDate(),
							item.getTxtSuppName(), item.getTxtJingShouRen(),
							item.getDdlRuKuSort(), item.getTxtRemarks(),
							item.getTxtStatus(), item.getTxtShenHeRen(),
							item.getTxtShenHeShiJian());
			sb.append(sql);
		}
	}

	/**
	 * 读取Excel数据内容
	 * 
	 * @param InputStream
	 * @return Map 包含单元格数据内容的Map对象
	 */
	public void initKuCunListFromExcel() {
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

				KuCun item = new KuCun();
				item.setTxtKuCunGuid(IDGen.getUUID());
				item.setTxtShopCode(this.shopCode);
				item.setTxtWuLiaoCode(getCellValue(row, 2));
				item.setTxtWuLiaoName(getCellValue(row, 3));
				item.setTxtQty((int) Float.parseFloat(getCellValue(row, 6)));
				item.setTxtChengBenJia(Float.parseFloat(getCellValue(row, 4)));
				item.setTxtSalePrice(Float.parseFloat(getCellValue(row, 5)));
				item.setTxtSuppName(getCellValue(row, 1));
				item.setTxtRemark(getCellValue(row, 7));

				kuCunLst.add(item);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println("解析库存结束，总条数：" + kuCunLst.size());
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
				case HSSFCell.CELL_TYPE_NUMERIC :
					cellvalue = String.valueOf(cell.getNumericCellValue());
					break;
				case HSSFCell.CELL_TYPE_STRING :
					cellvalue = cell.getStringCellValue();
					break;
				default :
					cellvalue = "";
			}
		} else {
			cellvalue = "";
		}

		return cellvalue.trim();
	}

}
