package com.chiefmech.arms.entity;

import com.chiefmech.arms.common.util.ConfigUtil;

public class RuKuDan {
	private String txtGuid;
	private String txtBillNo;
	private String txtRuKuDate;
	private String txtSuppName;
	private String txtJingShouRen;
	private String ddlRuKuSort;
	private String ddlCangKu;
	private String ddlFaPiaoType;
	private String txtFaPiaoHao;
	private String txtRemarks;
	private String txtStatus;

	private String txtShenHeRen;
	private String txtShenHeShiJian;
	private String txtShopCode = ConfigUtil.getInstance().getShopInfo()
			.getShopCode();

	public String getTxtGuid() {
		return txtGuid;
	}
	public void setTxtGuid(String txtGuid) {
		this.txtGuid = txtGuid;
	}
	public String getTxtShopCode() {
		return txtShopCode;
	}
	public void setTxtShopCode(String txtShopCode) {
		this.txtShopCode = txtShopCode;
	}
	public String getTxtBillNo() {
		return txtBillNo;
	}
	public void setTxtBillNo(String txtBillNo) {
		this.txtBillNo = txtBillNo;
	}
	public String getTxtRuKuDate() {
		return txtRuKuDate;
	}
	public void setTxtRuKuDate(String txtRuKuDate) {
		this.txtRuKuDate = txtRuKuDate;
	}
	public String getTxtSuppName() {
		return txtSuppName;
	}
	public void setTxtSuppName(String txtSuppName) {
		this.txtSuppName = txtSuppName;
	}
	public String getTxtJingShouRen() {
		return txtJingShouRen;
	}
	public void setTxtJingShouRen(String txtJingShouRen) {
		this.txtJingShouRen = txtJingShouRen;
	}
	public String getDdlRuKuSort() {
		return ddlRuKuSort;
	}
	public void setDdlRuKuSort(String ddlRuKuSort) {
		this.ddlRuKuSort = ddlRuKuSort;
	}
	public String getDdlCangKu() {
		return ddlCangKu;
	}
	public void setDdlCangKu(String ddlCangKu) {
		this.ddlCangKu = ddlCangKu;
	}
	public String getDdlFaPiaoType() {
		return ddlFaPiaoType;
	}
	public void setDdlFaPiaoType(String ddlFaPiaoType) {
		this.ddlFaPiaoType = ddlFaPiaoType;
	}
	public String getTxtFaPiaoHao() {
		return txtFaPiaoHao;
	}
	public void setTxtFaPiaoHao(String txtFaPiaoHao) {
		this.txtFaPiaoHao = txtFaPiaoHao;
	}
	public String getTxtRemarks() {
		return txtRemarks;
	}
	public void setTxtRemarks(String txtRemarks) {
		this.txtRemarks = txtRemarks;
	}
	public String getTxtStatus() {
		return txtStatus;
	}
	public void setTxtStatus(String txtStatus) {
		this.txtStatus = txtStatus;
	}
	public String getTxtShenHeRen() {
		return txtShenHeRen;
	}
	public void setTxtShenHeRen(String txtShenHeRen) {
		this.txtShenHeRen = txtShenHeRen;
	}
	public String getTxtShenHeShiJian() {
		return txtShenHeShiJian;
	}
	public void setTxtShenHeShiJian(String txtShenHeShiJian) {
		this.txtShenHeShiJian = txtShenHeShiJian;
	}
}
