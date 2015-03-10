package com.chiefmech.arms.entity;

import com.chiefmech.arms.common.util.ConfigUtil;

public class Supplier {
	/**
	 * 供应商Id
	 */
	private String txtSuppId;
	/**
	 * 供应商编号
	 */
	private String txtSuppBianHao;
	/**
	 * 供应商名称
	 */
	private String txtSuppName;
	/**
	 * 备注
	 */
	private String txtRemarks;

	private String txtShopCode = ConfigUtil.getInstance().getShopInfo()
			.getShopCode();

	public String getTxtShopCode() {
		return txtShopCode;
	}

	public void setTxtShopCode(String txtShopCode) {
		this.txtShopCode = txtShopCode;
	}

	public String getTxtSuppId() {
		return txtSuppId;
	}

	public void setTxtSuppId(String txtSuppId) {
		this.txtSuppId = txtSuppId;
	}

	public String getTxtSuppBianHao() {
		return txtSuppBianHao;
	}

	public void setTxtSuppBianHao(String txtSuppBianHao) {
		this.txtSuppBianHao = txtSuppBianHao;
	}

	public String getTxtSuppName() {
		return txtSuppName;
	}

	public void setTxtSuppName(String txtSuppName) {
		this.txtSuppName = txtSuppName;
	}

	public String getTxtRemarks() {
		return txtRemarks;
	}

	public void setTxtRemarks(String txtRemarks) {
		this.txtRemarks = txtRemarks;
	}

}
