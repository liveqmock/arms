package com.chiefmech.arms.entity;

import com.chiefmech.arms.common.util.IDGen;

public class GongDanWeiXiuWuLiao {

	private String txtWuLiaoGuid;
	private String txtWuLiaoId;
	private String txtBillNo;
	private String txtWuLiaoName;
	private float txtRegQty;
	private float txtTakeQty;
	private float txtReturnQty;
	private float txtPrice;
	private String ddlZhangTao;
	private String ddlSubZhangTao;

	public GongDanWeiXiuWuLiao() {

	}

	public GongDanWeiXiuWuLiao(String saleAfterGuid, WeiXiuWuLiao item) {
		this.txtWuLiaoGuid = IDGen.getUUID();
		this.txtWuLiaoId = item.getTxtShopId();
		this.txtBillNo = saleAfterGuid;
		this.txtWuLiaoName = item.getTxtShopName();
		this.txtPrice = item.getTxtSalePrice();
		this.ddlZhangTao = "正常维修";
	}

	public String getTxtWuLiaoGuid() {
		return txtWuLiaoGuid;
	}

	public void setTxtWuLiaoGuid(String txtWuLiaoGuid) {
		this.txtWuLiaoGuid = txtWuLiaoGuid;
	}

	public String getTxtWuLiaoId() {
		return txtWuLiaoId;
	}

	public void setTxtWuLiaoId(String txtWuLiaoId) {
		this.txtWuLiaoId = txtWuLiaoId;
	}

	public String getTxtBillNo() {
		return txtBillNo;
	}

	public void setTxtBillNo(String txtBillNo) {
		this.txtBillNo = txtBillNo;
	}

	public String getTxtWuLiaoName() {
		return txtWuLiaoName;
	}

	public void setTxtWuLiaoName(String txtWuLiaoName) {
		this.txtWuLiaoName = txtWuLiaoName;
	}

	public float getTxtRegQty() {
		return txtRegQty;
	}

	public void setTxtRegQty(float txtRegQty) {
		this.txtRegQty = txtRegQty;
	}

	public float getTxtTakeQty() {
		return txtTakeQty;
	}

	public void setTxtTakeQty(float txtTakeQty) {
		this.txtTakeQty = txtTakeQty;
	}

	public float getTxtReturnQty() {
		return txtReturnQty;
	}

	public void setTxtReturnQty(float txtReturnQty) {
		this.txtReturnQty = txtReturnQty;
	}

	public float getTxtPrice() {
		return txtPrice;
	}

	public void setTxtPrice(float txtPrice) {
		this.txtPrice = txtPrice;
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

}