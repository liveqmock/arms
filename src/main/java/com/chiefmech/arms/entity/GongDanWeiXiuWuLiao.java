package com.chiefmech.arms.entity;

import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.entity.view.VCaiGouWuLiao;

public class GongDanWeiXiuWuLiao {

	private String txtWuLiaoGuid;
	private String txtWuLiaoCode;
	private String txtGongDanGuid;
	private String txtWuLiaoName;
	private String txtSuppName;
	private float txtQty;
	private float txtPrice;
	private float txtPaid;
	private String ddlSuoSuXiangMu;
	private String ddlZhangTao;
	private String ddlStatus;
	private String txtRemark;
	private String txtLaiYuan;
	private String txtLaiYuanGuid;

	public GongDanWeiXiuWuLiao() {

	}

	public GongDanWeiXiuWuLiao(String saleAfterGuid, KuCun item) {
		this.txtWuLiaoGuid = IDGen.getUUID();
		this.txtWuLiaoCode = item.getTxtWuLiaoCode();
		this.txtGongDanGuid = saleAfterGuid;
		this.txtWuLiaoName = item.getTxtWuLiaoName();
		this.txtSuppName = item.getTxtSuppName();
		this.txtPrice = item.getTxtSalePrice();
		this.txtLaiYuanGuid = item.getTxtWuLiaoGuid();
		this.txtLaiYuan = "库存";
		this.ddlStatus = "未出库";
		this.ddlZhangTao = "免费";
	}

	public GongDanWeiXiuWuLiao(String saleAfterGuid, VCaiGouWuLiao item) {
		this.txtWuLiaoGuid = IDGen.getUUID();
		this.txtWuLiaoCode = item.getTxtWuLiaoCode();
		this.txtGongDanGuid = saleAfterGuid;
		this.txtWuLiaoName = item.getTxtWuLiaoName();
		this.txtSuppName = item.getTxtSuppName();
		this.txtPrice = item.getTxtPrice();
		this.txtLaiYuanGuid = item.getTxtWuLiaoGuid();
		this.ddlStatus = item.getDdlStatus();
		this.txtLaiYuan = "采购";
		this.ddlZhangTao = "免费";
	}

	public String getTxtWuLiaoGuid() {
		return txtWuLiaoGuid;
	}

	public void setTxtWuLiaoGuid(String txtWuLiaoGuid) {
		this.txtWuLiaoGuid = txtWuLiaoGuid;
	}

	public String getDdlSuoSuXiangMu() {
		return ddlSuoSuXiangMu;
	}

	public void setDdlSuoSuXiangMu(String ddlSuoSuXiangMu) {
		this.ddlSuoSuXiangMu = ddlSuoSuXiangMu;
	}

	public String getTxtLaiYuan() {
		return txtLaiYuan;
	}

	public void setTxtLaiYuan(String txtLaiYuan) {
		this.txtLaiYuan = txtLaiYuan;
	}

	public String getTxtLaiYuanGuid() {
		return txtLaiYuanGuid;
	}

	public void setTxtLaiYuanGuid(String txtLaiYuanGuid) {
		this.txtLaiYuanGuid = txtLaiYuanGuid;
	}

	public String getTxtWuLiaoCode() {
		return txtWuLiaoCode;
	}

	public void setTxtWuLiaoCode(String txtWuLiaoCode) {
		this.txtWuLiaoCode = txtWuLiaoCode;
	}

	public String getTxtGongDanGuid() {
		return txtGongDanGuid;
	}

	public void setTxtGongDanGuid(String txtGongDanGuid) {
		this.txtGongDanGuid = txtGongDanGuid;
	}

	public String getTxtWuLiaoName() {
		return txtWuLiaoName;
	}

	public void setTxtWuLiaoName(String txtWuLiaoName) {
		this.txtWuLiaoName = txtWuLiaoName;
	}

	public float getTxtQty() {
		return txtQty;
	}

	public void setTxtQty(float txtQty) {
		this.txtQty = txtQty;
	}

	public float getTxtPrice() {
		return txtPrice;
	}

	public void setTxtPrice(float txtPrice) {
		this.txtPrice = txtPrice;
	}

	public float getTxtPaid() {
		return this.txtQty * this.txtPrice;
	}

	public String getDdlZhangTao() {
		return ddlZhangTao;
	}

	public void setDdlZhangTao(String ddlZhangTao) {
		this.ddlZhangTao = ddlZhangTao;
	}

	public String getTxtSuppName() {
		return txtSuppName;
	}

	public void setTxtSuppName(String txtSuppName) {
		this.txtSuppName = txtSuppName;
	}

	public String getDdlStatus() {
		return ddlStatus;
	}

	public void setDdlStatus(String ddlStatus) {
		this.ddlStatus = ddlStatus;
	}

	public String getTxtRemark() {
		return txtRemark;
	}

	public void setTxtRemark(String txtRemark) {
		this.txtRemark = txtRemark;
	}

}