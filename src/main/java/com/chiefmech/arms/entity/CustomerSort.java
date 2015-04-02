package com.chiefmech.arms.entity;

import com.chiefmech.arms.common.util.SessionUtil;

public class CustomerSort {
	private String txtGuid;
	private String txtName;
	private String txtShopCode;
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
	public String getTxtShopCode() {
		if (txtShopCode == null) {
			txtShopCode = SessionUtil.getShopInfo().getShopCode();
		}
		return txtShopCode;
	}
	public void setTxtShopCode(String txtShopCode) {
		this.txtShopCode = txtShopCode;
	}

}
