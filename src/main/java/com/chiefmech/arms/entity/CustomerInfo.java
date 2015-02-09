package com.chiefmech.arms.entity;

import com.chiefmech.arms.common.util.HuiYuanUtil;

public class CustomerInfo {
	private String txtCustId;
	private String ddlCustSort;
	private String txtCheZhuName;
	private String txtCheZhuTel;
	private String txtLianXiRenName;
	private String txtLianXiRenTel;
	private String txtLianXiRenAdd;
	private String txtCheZhuJiaZhaoDate;
	private int txtHuiYuanJiFen;
	private float txtGongShiZheKou;
	private float txtCaiLiaoZheKou;
	private String txtHuiYuanDengJi;

	public String getTxtHuiYuanDengJi() {
		return HuiYuanUtil.getHuiYuanDengJi(this.txtHuiYuanJiFen);
	}

	public void setTxtHuiYuanDengJi(String txtHuiYuanDengJi) {
		this.txtHuiYuanDengJi = txtHuiYuanDengJi;
	}

	public int getTxtHuiYuanJiFen() {
		return txtHuiYuanJiFen;
	}

	public void setTxtHuiYuanJiFen(int txtHuiYuanJiFen) {
		this.txtHuiYuanJiFen = txtHuiYuanJiFen;
	}

	public float getTxtGongShiZheKou() {
		return txtGongShiZheKou;
	}

	public void setTxtGongShiZheKou(float txtGongShiZheKou) {
		this.txtGongShiZheKou = txtGongShiZheKou;
	}

	public float getTxtCaiLiaoZheKou() {
		return txtCaiLiaoZheKou;
	}

	public void setTxtCaiLiaoZheKou(float txtCaiLiaoZheKou) {
		this.txtCaiLiaoZheKou = txtCaiLiaoZheKou;
	}

	public String getTxtCustId() {
		return txtCustId;
	}

	public void setTxtCustId(String txtCustId) {
		this.txtCustId = txtCustId;
	}

	public String getDdlCustSort() {
		return ddlCustSort;
	}

	public void setDdlCustSort(String ddlCustSort) {
		this.ddlCustSort = ddlCustSort;
	}

	public String getTxtCheZhuName() {
		return txtCheZhuName;
	}

	public void setTxtCheZhuName(String txtCheZhuName) {
		this.txtCheZhuName = txtCheZhuName;
	}

	public String getTxtCheZhuTel() {
		return txtCheZhuTel;
	}

	public void setTxtCheZhuTel(String txtCheZhuTel) {
		this.txtCheZhuTel = txtCheZhuTel;
	}

	public String getTxtLianXiRenName() {
		return txtLianXiRenName;
	}

	public void setTxtLianXiRenName(String txtLianXiRenName) {
		this.txtLianXiRenName = txtLianXiRenName;
	}

	public String getTxtLianXiRenTel() {
		return txtLianXiRenTel;
	}

	public void setTxtLianXiRenTel(String txtLianXiRenTel) {
		this.txtLianXiRenTel = txtLianXiRenTel;
	}

	public String getTxtLianXiRenAdd() {
		return txtLianXiRenAdd;
	}

	public void setTxtLianXiRenAdd(String txtLianXiRenAdd) {
		this.txtLianXiRenAdd = txtLianXiRenAdd;
	}

	public String getTxtCheZhuJiaZhaoDate() {
		return txtCheZhuJiaZhaoDate;
	}

	public void setTxtCheZhuJiaZhaoDate(String txtCheZhuJiaZhaoDate) {
		this.txtCheZhuJiaZhaoDate = txtCheZhuJiaZhaoDate;
	}
}
