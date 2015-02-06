package com.chiefmech.arms.entity;

import com.chiefmech.arms.common.util.IDGen;

public class GongDanWeiXiuXiangMu {

	private String txtWeiXiuXiangMuId;
	private String txtGongDanGuid;
	private String txtXiangMuCode;
	private String txtGongDuanName;
	private String txtWeiXiuNeiRong;
	private float txtGongShi;
	private float txtGongShiFei;
	private String ddlZhangTao;
	private String ddlSubZhangTao;
	private String txtBanZu;
	private String txtZhuXiuRen;
	private String txtWanJianStatus;
	private String txtWanJianRen;
	private String txtWanJianShiJian;

	public GongDanWeiXiuXiangMu() {

	}

	public GongDanWeiXiuXiangMu(String saleAfterWeiXiuGuid, WeiXiuXiangMu item) {
		this.txtWeiXiuXiangMuId = IDGen.getUUID();
		this.ddlZhangTao = "正常维修";
		this.txtGongDanGuid = saleAfterWeiXiuGuid;
		this.txtXiangMuCode = item.getTxtWeiXiuXiangMuBianHao();
		this.txtGongDuanName = item.getDdlSuoShuGongDuan();
		this.txtGongShi = item.getTxtGongShi();
		this.txtGongShiFei = this.txtGongShi * 100;
		this.txtWeiXiuNeiRong = item.getTxtWeiXiuNeiRong();
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

	public float getTxtGongShi() {
		return txtGongShi;
	}

	public void setTxtGongShi(float txtGongShi) {
		this.txtGongShi = txtGongShi;
	}

	public float getTxtGongShiFei() {
		return txtGongShiFei;
	}

	public void setTxtGongShiFei(float txtGongShiFei) {
		this.txtGongShiFei = txtGongShiFei;
	}

	public String getDdlZhangTao() {
		return ddlZhangTao;
	}

	public void setDdlZhangTao(String ddlZhangTao) {
		this.ddlZhangTao = ddlZhangTao;
	}

	public String getDdlSubZhangTao() {
		return ddlSubZhangTao;
	}

	public void setDdlSubZhangTao(String ddlSubZhangTao) {
		this.ddlSubZhangTao = ddlSubZhangTao;
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

}