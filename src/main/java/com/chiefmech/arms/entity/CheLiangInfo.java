package com.chiefmech.arms.entity;

import com.chiefmech.arms.common.util.SessionUtil;

public class CheLiangInfo {
	private String txtCustId;
	private String txtCheLiangId;
	private String ddlCheLiangZhiZaoShang;
	private String ddlCheLiangCheXi;
	private String txtCheLiangCheXingDaiMa;
	private String txtCheLiangChePaiHao;
	private String txtCheLiangCheJiaHao;
	private String txtCheLiangFaDongJiHao;
	private String txtCheLiangDengJiRiQi;
	private String txtCheLiangNianShenDaoQiRi;
	private String txtCheLiangBaoXianDaoQiRi;
	private String ddlChengBaoGongSi;
	private String ddlCheLiangNianFen;
	private String ddlCheLiangPaiLiang;
	private String txtRegisterShopCode;

	public String getTxtRegisterShopCode() {
		if (txtRegisterShopCode == null) {
			txtRegisterShopCode = SessionUtil.getShopInfo().getShopCode();
		}
		return txtRegisterShopCode;
	}

	public void setTxtRegisterShopCode(String txtRegisterShopCode) {
		this.txtRegisterShopCode = txtRegisterShopCode;
	}

	public String getDdlCheLiangNianFen() {
		return ddlCheLiangNianFen;
	}

	public void setDdlCheLiangNianFen(String ddlCheLiangNianFen) {
		this.ddlCheLiangNianFen = ddlCheLiangNianFen;
	}

	public String getDdlCheLiangPaiLiang() {
		return ddlCheLiangPaiLiang;
	}

	public void setDdlCheLiangPaiLiang(String ddlCheLiangPaiLiang) {
		this.ddlCheLiangPaiLiang = ddlCheLiangPaiLiang;
	}

	public String getTxtCustId() {
		return txtCustId;
	}

	public void setTxtCustId(String txtCustId) {
		this.txtCustId = txtCustId;
	}

	public String getTxtCheLiangId() {
		return txtCheLiangId;
	}

	public void setTxtCheLiangId(String txtCheLiangId) {
		this.txtCheLiangId = txtCheLiangId;
	}

	public String getTxtCheLiangChePaiHao() {
		return txtCheLiangChePaiHao;
	}

	public void setTxtCheLiangChePaiHao(String txtCheLiangChePaiHao) {
		this.txtCheLiangChePaiHao = txtCheLiangChePaiHao;
	}

	public String getTxtCheLiangCheXingDaiMa() {
		return txtCheLiangCheXingDaiMa;
	}

	public void setTxtCheLiangCheXingDaiMa(String txtCheLiangCheXingDaiMa) {
		this.txtCheLiangCheXingDaiMa = txtCheLiangCheXingDaiMa;
	}

	public String getTxtCheLiangCheJiaHao() {
		return txtCheLiangCheJiaHao;
	}

	public void setTxtCheLiangCheJiaHao(String txtCheLiangCheJiaHao) {
		this.txtCheLiangCheJiaHao = txtCheLiangCheJiaHao;
	}

	public String getTxtCheLiangDengJiRiQi() {
		return txtCheLiangDengJiRiQi;
	}

	public void setTxtCheLiangDengJiRiQi(String txtCheLiangDengJiRiQi) {
		this.txtCheLiangDengJiRiQi = txtCheLiangDengJiRiQi;
	}

	public String getTxtCheLiangFaDongJiHao() {
		return txtCheLiangFaDongJiHao;
	}

	public void setTxtCheLiangFaDongJiHao(String txtCheLiangFaDongJiHao) {
		this.txtCheLiangFaDongJiHao = txtCheLiangFaDongJiHao;
	}

	public String getTxtCheLiangNianShenDaoQiRi() {
		return txtCheLiangNianShenDaoQiRi;
	}

	public void setTxtCheLiangNianShenDaoQiRi(String txtCheLiangNianShenDaoQiRi) {
		this.txtCheLiangNianShenDaoQiRi = txtCheLiangNianShenDaoQiRi;
	}

	public String getTxtCheLiangBaoXianDaoQiRi() {
		return txtCheLiangBaoXianDaoQiRi;
	}

	public void setTxtCheLiangBaoXianDaoQiRi(String txtCheLiangBaoXianDaoQiRi) {
		this.txtCheLiangBaoXianDaoQiRi = txtCheLiangBaoXianDaoQiRi;
	}

	public String getDdlCheLiangZhiZaoShang() {
		return ddlCheLiangZhiZaoShang;
	}

	public void setDdlCheLiangZhiZaoShang(String ddlCheLiangZhiZaoShang) {
		this.ddlCheLiangZhiZaoShang = ddlCheLiangZhiZaoShang;
	}

	public String getDdlCheLiangCheXi() {
		return ddlCheLiangCheXi;
	}

	public void setDdlCheLiangCheXi(String ddlCheLiangCheXi) {
		this.ddlCheLiangCheXi = ddlCheLiangCheXi;
	}

	public String getDdlChengBaoGongSi() {
		return ddlChengBaoGongSi;
	}

	public void setDdlChengBaoGongSi(String ddlChengBaoGongSi) {
		this.ddlChengBaoGongSi = ddlChengBaoGongSi;
	}

}
