package com.chiefmech.arms.entity;

import org.apache.commons.lang3.StringUtils;

import com.chiefmech.arms.common.util.IDGen;

public class GongDanWeiXiuXiangMu {

	private String txtWeiXiuXiangMuId;
	private String txtGongDanGuid;
	private String txtXiangMuCode;
	private String txtXiangMuName;
	private String txtGongDuanName;
	private String txtWeiXiuNeiRong;
	private float txtFeiYong;
	private String ddlSuoSuXiangMu;
	private String ddlZhangTao;
	private String txtRemark;
	private String txtBanZu;
	private String txtZhuXiuRen;
	private String txtWanJianStatus;
	private String txtWanJianRen;
	private String txtWanJianShiJian;
	private String txtRemarkOmitted;

	private String disPlayFeiYong;

	public GongDanWeiXiuXiangMu() {

	}

	public GongDanWeiXiuXiangMu(String saleAfterWeiXiuGuid, WeiXiuXiangMu item) {
		this.txtWeiXiuXiangMuId = IDGen.getUUID();
		this.txtGongDanGuid = saleAfterWeiXiuGuid;
		this.txtXiangMuCode = item.getTxtCode();
		this.txtXiangMuName = item.getTxtName();
		this.txtGongDuanName = item.getDdlGongDuan();
		this.txtFeiYong = item.getTxtFeiYong();
		this.txtWeiXiuNeiRong = item.getTxtNeiRong();
		this.ddlZhangTao = "付费";
	}

	public String getDisPlayFeiYong() {
		if (StringUtils.isEmpty(this.txtXiangMuName)) {
			return "";
		} else {
			return String.format("%.2f", txtFeiYong);
		}
	}

	public String getDdlSuoSuXiangMu() {
		return ddlSuoSuXiangMu;
	}

	public void setDdlSuoSuXiangMu(String ddlSuoSuXiangMu) {
		this.ddlSuoSuXiangMu = ddlSuoSuXiangMu;
	}

	public String getTxtWeiXiuXiangMuId() {
		return txtWeiXiuXiangMuId;
	}

	public void setTxtWeiXiuXiangMuId(String txtWeiXiuXiangMuId) {
		this.txtWeiXiuXiangMuId = txtWeiXiuXiangMuId;
	}

	public String getTxtGongDanGuid() {
		return txtGongDanGuid;
	}

	public void setTxtGongDanGuid(String txtGongDanGuid) {
		this.txtGongDanGuid = txtGongDanGuid;
	}

	public String getTxtXiangMuCode() {
		return txtXiangMuCode;
	}

	public void setTxtXiangMuCode(String txtXiangMuCode) {
		this.txtXiangMuCode = txtXiangMuCode;
	}

	public String getTxtGongDuanName() {
		return txtGongDuanName;
	}

	public void setTxtGongDuanName(String txtGongDuanName) {
		this.txtGongDuanName = txtGongDuanName;
	}

	public String getTxtWeiXiuNeiRong() {
		return txtWeiXiuNeiRong;
	}

	public void setTxtWeiXiuNeiRong(String txtWeiXiuNeiRong) {
		this.txtWeiXiuNeiRong = txtWeiXiuNeiRong;
	}

	public String getTxtXiangMuName() {
		return txtXiangMuName;
	}

	public void setTxtXiangMuName(String txtXiangMuName) {
		this.txtXiangMuName = txtXiangMuName;
	}

	public float getTxtFeiYong() {
		return txtFeiYong;
	}

	public void setTxtFeiYong(float txtFeiYong) {
		this.txtFeiYong = txtFeiYong;
	}

	public String getDdlZhangTao() {
		return ddlZhangTao;
	}

	public void setDdlZhangTao(String ddlZhangTao) {
		this.ddlZhangTao = ddlZhangTao;
	}

	public String getTxtRemark() {
		return txtRemark;
	}

	public void setTxtRemark(String txtRemark) {
		this.txtRemark = txtRemark;
	}

	public String getTxtBanZu() {
		return txtBanZu;
	}

	public void setTxtBanZu(String txtBanZu) {
		this.txtBanZu = txtBanZu;
	}

	public String getTxtZhuXiuRen() {
		return txtZhuXiuRen;
	}

	public void setTxtZhuXiuRen(String txtZhuXiuRen) {
		this.txtZhuXiuRen = txtZhuXiuRen;
	}

	public String getTxtWanJianStatus() {
		return txtWanJianStatus;
	}

	public void setTxtWanJianStatus(String txtWanJianStatus) {
		this.txtWanJianStatus = txtWanJianStatus;
	}

	public String getTxtWanJianRen() {
		return txtWanJianRen;
	}

	public void setTxtWanJianRen(String txtWanJianRen) {
		this.txtWanJianRen = txtWanJianRen;
	}

	public String getTxtWanJianShiJian() {
		return txtWanJianShiJian;
	}

	public void setTxtWanJianShiJian(String txtWanJianShiJian) {
		this.txtWanJianShiJian = txtWanJianShiJian;
	}

	public String getTxtRemarkOmitted() {
		String remark = "";
		int LEN = 13;
		if (txtRemark != null && txtRemark.length() > LEN) {
			remark = txtRemark.substring(0, LEN) + "...";
		}else{
			remark=txtRemark;
		}

		return remark;
	}

}