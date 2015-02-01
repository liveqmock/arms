package com.chiefmech.arms.entity;

public class RuKuDan {
	/**
	 * 入库guid
	 */
	private String txtGuid;
	/**
	 * 入库单号
	 */
	private String txtBillNo;
	/**
	 * 入库日期
	 */
	private String txtRuKuDate;
	/**
	 * 供应商ID
	 */
	private String txtSuppId;
	/**
	 * 供应商名称
	 */
	private String txtSuppName;
	/**
	 * 经手人
	 */
	private String txtJingShouRen;
	/**
	 * 入库类型
	 */
	private String ddlRuKuSort;
	/**
	 * 所属仓库
	 */
	private String ddlCangKu;
	/**
	 * 发票类型
	 */
	private String ddlFaPiaoType;
	/**
	 * 发票号
	 */
	private String txtFaPiaoHao;
	/**
	 * 单据备注
	 */
	private String txtRemarks;
	/**
	 * 审核状态
	 */
	private String ddlStatus;
	public String getTxtGuid() {
		return txtGuid;
	}
	public void setTxtGuid(String txtGuid) {
		this.txtGuid = txtGuid;
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
	public String getTxtSuppId() {
		return txtSuppId;
	}
	public void setTxtSuppId(String txtSuppId) {
		this.txtSuppId = txtSuppId;
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
	public String getDdlStatus() {
		return ddlStatus;
	}
	public void setDdlStatus(String ddlStatus) {
		this.ddlStatus = ddlStatus;
	}
}
