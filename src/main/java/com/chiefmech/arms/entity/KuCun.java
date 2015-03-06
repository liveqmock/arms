package com.chiefmech.arms.entity;

public class KuCun {
	private String txtKuCunGuid;
	private String txtWuLiaoGuid;
	private String txtWuLiaoCode;
	private String txtWuLiaoName;
	private int txtQty;
	private float txtChengBenJia;
	private float txtSalePrice;
	private String txtSuppName;

	public KuCun(KuCunOperLog operLog) {
		this.txtWuLiaoCode = operLog.getTxtWuLiaoCode();
		this.txtWuLiaoName = operLog.getTxtWuLiaoName();
		this.txtQty = operLog.getTxtQty();
		this.txtChengBenJia = operLog.getTxtChengBenJia();
		this.txtSalePrice = operLog.getTxtSalePrice();
		this.txtSuppName = operLog.getTxtSuppName();
	}

	public KuCun() {
	}

	public String getTxtKuCunGuid() {
		return txtKuCunGuid;
	}
	public void setTxtKuCunGuid(String txtKuCunGuid) {
		this.txtKuCunGuid = txtKuCunGuid;
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
	public String getTxtWuLiaoName() {
		return txtWuLiaoName;
	}
	public void setTxtWuLiaoName(String txtWuLiaoName) {
		this.txtWuLiaoName = txtWuLiaoName;
	}
	public int getTxtQty() {
		return txtQty;
	}
	public void setTxtQty(int txtQty) {
		this.txtQty = txtQty;
	}
	public float getTxtChengBenJia() {
		return txtChengBenJia;
	}
	public void setTxtChengBenJia(float txtChengBenJia) {
		this.txtChengBenJia = txtChengBenJia;
	}
	public float getTxtSalePrice() {
		return txtSalePrice;
	}
	public void setTxtSalePrice(float txtSalePrice) {
		this.txtSalePrice = txtSalePrice;
	}

	public String getTxtSuppName() {
		return txtSuppName;
	}

	public void setTxtSuppName(String txtSuppName) {
		this.txtSuppName = txtSuppName;
	}

}
