package com.chiefmech.arms.entity;

import org.apache.commons.lang3.StringUtils;

import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.entity.view.VCaiGouWuLiao;

public class GongDanWeiXiuWuLiao {

	private String txtWuLiaoGuid;
	private String txtShopCode;
	private String txtWuLiaoCode;
	private String txtGongDanGuid;
	private String txtWuLiaoName;
	private String txtSuppName;
	private float txtQty;
	private float txtChengBenJia;
	private float txtSalePrice;
	private float txtPaidPrice;
	private String ddlSuoSuXiangMu;
	private String ddlZhangTao;
	private String ddlStatus;
	private String txtRemark;
	private String txtLaiYuan;

	public GongDanWeiXiuWuLiao() {

	}

	public GongDanWeiXiuWuLiao(String saleAfterGuid, KuCun item) {
		this.txtWuLiaoGuid = IDGen.getUUID();
		this.txtShopCode = item.getTxtShopCode();
		this.txtGongDanGuid = saleAfterGuid;
		this.txtWuLiaoCode = item.getTxtWuLiaoCode();
		this.txtWuLiaoName = item.getTxtWuLiaoName();
		this.txtSuppName = item.getTxtSuppName();
		this.txtChengBenJia = item.getTxtChengBenJia();
		this.txtSalePrice = item.getTxtSalePrice();
		this.txtPaidPrice = item.getTxtSalePrice();
		this.txtLaiYuan = "库存";
		this.ddlStatus = "未出库";
		this.ddlZhangTao = "客户自费";
	}

	public GongDanWeiXiuWuLiao(String saleAfterGuid, VCaiGouWuLiao item) {
		// 工单物料id和临时采购入库单物料id一致，用于同步临时采购入库物料状态
		this.txtWuLiaoGuid = item.getTxtWuLiaoGuid();
		this.txtShopCode = item.getTxtShopCode();
		this.txtGongDanGuid = saleAfterGuid;
		this.txtWuLiaoCode = item.getTxtWuLiaoCode();
		this.txtWuLiaoName = item.getTxtWuLiaoName();
		this.txtSuppName = item.getTxtSuppName();
		this.txtChengBenJia = item.getTxtPrice();
		this.txtSalePrice = item.getTxtSalePrice();
		this.txtPaidPrice = item.getTxtSalePrice();
		this.ddlStatus = item.getDdlStatus();
		this.txtLaiYuan = "采购";
		this.ddlZhangTao = "客户自费";
	}

	public String getDisplayPrice() {
		if (StringUtils.isEmpty(this.txtWuLiaoName)) {
			return "";
		} else {
			return String.format("%.2f", this.txtSalePrice);
		}
	}

	public String getDisplayQty() {
		if (StringUtils.isEmpty(this.txtWuLiaoName)) {
			return "";
		} else {
			return String.format("%.2f", txtQty);
		}
	}

	public float getTxtPaidPrice() {
		return txtPaidPrice;
	}

	public void setTxtPaidPrice(float txtPaidPrice) {
		this.txtPaidPrice = txtPaidPrice;
	}

	public String getTxtShopCode() {
		return txtShopCode;
	}

	public void setTxtShopCode(String txtShopCode) {
		this.txtShopCode = txtShopCode;
	}

	public String getDdlSuoSuXiangMu() {
		return ddlSuoSuXiangMu;
	}

	public void setDdlSuoSuXiangMu(String ddlSuoSuXiangMu) {
		this.ddlSuoSuXiangMu = ddlSuoSuXiangMu;
	}

	public String getTxtWuLiaoGuid() {
		return txtWuLiaoGuid;
	}

	public void setTxtWuLiaoGuid(String txtWuLiaoGuid) {
		this.txtWuLiaoGuid = txtWuLiaoGuid;
	}

	public String getTxtLaiYuan() {
		return txtLaiYuan;
	}

	public void setTxtLaiYuan(String txtLaiYuan) {
		this.txtLaiYuan = txtLaiYuan;
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

	public float getTxtPaid() {
		return this.txtQty * this.txtSalePrice;
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