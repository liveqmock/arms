package com.chiefmech.arms.entity;

import com.chiefmech.arms.common.util.SessionUtil;

public class ChengBaoGongSi {
	/**
	 * 承保公司ID
	 */
	private String chengBaoGongSiId;
	/**
	 * 承保公司名称
	 */
	private String chengBaoGongSiName;
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

	public String getChengBaoGongSiId() {
		return chengBaoGongSiId;
	}

	public void setChengBaoGongSiId(String chengBaoGongSiId) {
		this.chengBaoGongSiId = chengBaoGongSiId;
	}

	public String getChengBaoGongSiName() {
		return chengBaoGongSiName;
	}

	public void setChengBaoGongSiName(String chengBaoGongSiName) {
		this.chengBaoGongSiName = chengBaoGongSiName;
	}

}
