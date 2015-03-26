package com.chiefmech.arms.entity;

import com.chiefmech.arms.common.util.ConfigUtil;

public class ChengBaoGongSi {
	/**
	 * 承保公司ID
	 */
	private String chengBaoGongSiId;
	/**
	 * 承保公司名称
	 */
	private String chengBaoGongSiName;
	private String txtShopCode = ConfigUtil.getInstance().getShopInfo()
			.getShopCode();

	public String getTxtShopCode() {
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
