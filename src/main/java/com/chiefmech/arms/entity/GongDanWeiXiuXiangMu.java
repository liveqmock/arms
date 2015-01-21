package com.chiefmech.arms.entity;

import com.chiefmech.arms.common.util.IDGen;

public class GongDanWeiXiuXiangMu {

	private String txtWeiXiuXiangMuId;
	private String txtBillNo;
	private String txtXiangMuId;
	private String txtGongDuanName;
	private String txtWeiXiuNeiRong;
	private float txtGongShi;
	private float txtGongShiFei;
	private String ddlZhangTao;
	private String ddlSubZhangTao;
	private String txtBanZu;
	private String txtZhuXiuRen;
	private String txtWanJian;
	private String txtWanJianF;

	public GongDanWeiXiuXiangMu() {

	}

	public GongDanWeiXiuXiangMu(String saleAfterWeiXiuGuid, WeiXiuXiangMu item) {
		this.txtWeiXiuXiangMuId = IDGen.getUUID();
		this.ddlZhangTao = "正常维修";
		this.txtBillNo = saleAfterWeiXiuGuid;
		this.txtXiangMuId = item.getTxtWeiXiuXiangMuBianHao();
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

	public String getTxtBillNo() {
		return txtBillNo;
	}

	public void setTxtBillNo(String txtBillNo) {
		this.txtBillNo = txtBillNo;
	}

	public String getTxtXiangMuId() {
		return txtXiangMuId;
	}

	public void setTxtXiangMuId(String txtXiangMuId) {
		this.txtXiangMuId = txtXiangMuId;
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

	public String getTxtWanJian() {
		return txtWanJian;
	}

	public void setTxtWanJian(String txtWanJian) {
		this.txtWanJian = txtWanJian;
	}

	public String getTxtWanJianF() {
		return txtWanJianF;
	}

	public void setTxtWanJianF(String txtWanJianF) {
		this.txtWanJianF = txtWanJianF;
	}

}