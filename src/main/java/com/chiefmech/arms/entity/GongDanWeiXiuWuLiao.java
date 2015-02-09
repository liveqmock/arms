package com.chiefmech.arms.entity;

import com.chiefmech.arms.common.util.IDGen;

public class GongDanWeiXiuWuLiao {

	private String txtWuLiaoGuid;
	private String txtWuLiaoCode;
	private String txtGongDanGuid;
	private String txtWuLiaoName;
	private String ddlCangKu;
	private float txtTakeQty;
	private float txtPrice;
	private float txtPaid;
	private String ddlZhangTao;
	private String ddlSubZhangTao;

	public GongDanWeiXiuWuLiao() {

	}

	public GongDanWeiXiuWuLiao(String saleAfterGuid, KuCun item) {
		this.txtWuLiaoGuid = IDGen.getUUID();
		this.txtWuLiaoCode = item.getTxtWuLiaoCode();
		this.txtGongDanGuid = saleAfterGuid;
		this.txtWuLiaoName = item.getTxtWuLiaoName();
		this.ddlCangKu = item.getDdlCangKu();
		this.txtPrice = item.getTxtSalePrice();
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

	public float getTxtTakeQty() {
		return txtTakeQty;
	}

	public void setTxtTakeQty(float txtTakeQty) {
		this.txtTakeQty = txtTakeQty;
	}

	public float getTxtPrice() {
		return txtPrice;
	}

	public void setTxtPrice(float txtPrice) {
		this.txtPrice = txtPrice;
	}

	public float getTxtPaid() {
		return this.txtTakeQty * this.txtPrice;
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

	public String getDdlCangKu() {
		return ddlCangKu;
	}

	public void setDdlCangKu(String ddlCangKu) {
		this.ddlCangKu = ddlCangKu;
	}

}