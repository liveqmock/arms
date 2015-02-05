package com.chiefmech.arms.entity;

import com.chiefmech.arms.common.util.DateUtil;
import com.chiefmech.arms.common.util.IDGen;

public class KuCunOperLog {
	private String txtLogGuid;
	private String txtBillNo;
	private String txtBillSort;
	private String txtLogDate;

	private String txtKuCunGuid;
	private String txtWuLiaoGuid;
	private String txtWuLiaoCode;
	private String txtWuLiaoName;
	private int txtQty;
	private float txtChengBenJia;
	private float txtSalePrice;
	private String ddlCangKu;

	public KuCunOperLog() {
	}

	public KuCunOperLog(RuKuDan ruKuDan, RuKuDanWuLiao ruKuDanWuLiao) {
		this.txtLogGuid = IDGen.getUUID();
		this.txtBillNo = ruKuDan.getTxtBillNo();
		this.txtBillSort = ruKuDan.getDdlRuKuSort();
		this.txtLogDate = DateUtil.getCurrentDateTime();

		this.txtWuLiaoGuid = ruKuDanWuLiao.getTxtWuLiaoGuid();
		this.txtWuLiaoCode = ruKuDanWuLiao.getTxtWuLiaoCode();
		this.txtWuLiaoName = ruKuDanWuLiao.getTxtWuLiaoName();
		this.txtQty = ruKuDanWuLiao.getTxtQty();
		this.txtChengBenJia = ruKuDanWuLiao.getTxtPrice();
		this.ddlCangKu = ruKuDan.getDdlCangKu();
	}

	public boolean isKuCunPlusRequire() {
		return this.txtBillSort.equals("入库单")
				|| this.txtBillSort.equals("例外入库");
	}

	public String getTxtLogGuid() {
		return txtLogGuid;
	}

	public void setTxtLogGuid(String txtLogGuid) {
		this.txtLogGuid = txtLogGuid;
	}

	public String getTxtBillNo() {
		return txtBillNo;
	}

	public void setTxtBillNo(String txtBillNo) {
		this.txtBillNo = txtBillNo;
	}

	public String getTxtBillSort() {
		return txtBillSort;
	}

	public void setTxtBillSort(String txtBillSort) {
		this.txtBillSort = txtBillSort;
	}

	public String getTxtLogDate() {
		return txtLogDate;
	}

	public void setTxtLogDate(String txtLogDate) {
		this.txtLogDate = txtLogDate;
	}

	public String getTxtKuCunGuid() {
		return txtKuCunGuid;
	}

	public void setTxtKuCunGuid(String txtKuCunGuid) {
		this.txtKuCunGuid = txtKuCunGuid;
	}

	public String getTxtWuLiaoGuid() {
		return txtWuLiaoGuid;
	}

	public void setTxtWuLiaoGuid(String txtWuLiaoGuid) {
		this.txtWuLiaoGuid = txtWuLiaoGuid;
	}

	public String getTxtWuLiaoCode() {
		return txtWuLiaoCode;
	}

	public void setTxtWuLiaoCode(String txtWuLiaoCode) {
		this.txtWuLiaoCode = txtWuLiaoCode;
	}

	public String getTxtWuLiaoName() {
		return txtWuLiaoName;
	}

	public void setTxtWuLiaoName(String txtWuLiaoName) {
		this.txtWuLiaoName = txtWuLiaoName;
	}

	public int getTxtQty() {
		return txtQty;
	}

	public void setTxtQty(int txtQty) {
		this.txtQty = txtQty;
	}

	public float getTxtChengBenJia() {
		return txtChengBenJia;
	}

	public void setTxtChengBenJia(float txtChengBenJia) {
		this.txtChengBenJia = txtChengBenJia;
	}

	public float getTxtSalePrice() {
		return txtSalePrice;
	}

	public void setTxtSalePrice(float txtSalePrice) {
		this.txtSalePrice = txtSalePrice;
	}

	public String getDdlCangKu() {
		return ddlCangKu;
	}

	public void setDdlCangKu(String ddlCangKu) {
		this.ddlCangKu = ddlCangKu;
	}

}
