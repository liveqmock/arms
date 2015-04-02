package com.chiefmech.arms.entity;

import com.chiefmech.arms.common.util.SessionUtil;

public class WeiXiuXiangMu {
	private String txtGuid;
	private String txtName;
	private String txtNeiRong;
	private float txtFeiYong;
	private String ddlGongDuan;
	private String txtRemark;
	private String txtShopCode;

	public String getTxtShopCode() {
		if (txtShopCode == null) {
			txtShopCode = SessionUtil.getShopInfo().getShopCode();
		}
		return txtShopCode;
	}

	public void setTxtShopCode(String txtShopCode) {
		this.txtShopCode = txtShopCode;
	}

	public String getTxtGuid() {
		return txtGuid;
	}

	public void setTxtGuid(String txtGuid) {
		this.txtGuid = txtGuid;
	}

	public String getTxtName() {
		return txtName;
	}

	public void setTxtName(String txtName) {
		this.txtName = txtName;
	}

	public String getTxtNeiRong() {
		return txtNeiRong;
	}

	public void setTxtNeiRong(String txtNeiRong) {
		this.txtNeiRong = txtNeiRong;
	}

	public float getTxtFeiYong() {
		return txtFeiYong;
	}

	public void setTxtFeiYong(float txtFeiYong) {
		this.txtFeiYong = txtFeiYong;
	}

	public String getDdlGongDuan() {
		return ddlGongDuan;
	}

	public void setDdlGongDuan(String ddlGongDuan) {
		this.ddlGongDuan = ddlGongDuan;
	}

	public String getTxtRemark() {
		return txtRemark;
	}

	public void setTxtRemark(String txtRemark) {
		this.txtRemark = txtRemark;
	}

}