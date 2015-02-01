package com.chiefmech.arms.entity.footer;

public class GongDanWeiXiuWuLiaoFooter {

	private String txtWuLiaoId;
	private float txtRegQty;
	private float txtTakeQty;
	private float txtReturnQty;
	private float txtPrice;

	public String getTxtWuLiaoId() {
		return txtWuLiaoId;
	}

	public void setTxtWuLiaoId(String txtWuLiaoId) {
		this.txtWuLiaoId = txtWuLiaoId;
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

	public String getTxtPrice() {
		return "预估费用：" + txtPrice;
	}

	public void setTxtPrice(float txtPrice) {
		this.txtPrice = txtPrice;
	}

}
