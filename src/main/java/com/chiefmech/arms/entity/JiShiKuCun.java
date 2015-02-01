package com.chiefmech.arms.entity;

public class JiShiKuCun {
	/**
	 * 即时库存ID
	 */
	private String JiShiKuCunGuId;
	/**
	 * 商品编号
	 */
	private String txtShopId;
	/**
	 * 商品名称
	 */
	private String txtShopName;
	/**
	 * 所属仓库
	 */
	private String txtCangKu;
	/**
	 * 商品库存数量
	 */
	private int txtShopNum;
	/**
	 * 售价
	 */
	private float txtShouJia;
	/**
	 * 销售总额
	 */
	private float txtXiaoShouZongE;
	/**
	 * 成本单价
	 */
	private float txtChengBenDanJia;
	/**
	 * 成本总额
	 */
	private float txtChengBenZongE;
	/**
	 * 最后一次入库时间
	 */
	private String txtRuKuDate;
	/**
	 * 最后一次出库时间
	 */
	private String txtChuKuDate;
	/**
	 * 备注
	 */
	private String txtRemarks;

	public String getJiShiKuCunGuId() {
		return JiShiKuCunGuId;
	}

	public void setJiShiKuCunGuId(String jiShiKuCunGuId) {
		JiShiKuCunGuId = jiShiKuCunGuId;
	}

	public String getTxtShopId() {
		return txtShopId;
	}

	public void setTxtShopId(String txtShopId) {
		this.txtShopId = txtShopId;
	}

	public String getTxtShopName() {
		return txtShopName;
	}

	public void setTxtShopName(String txtShopName) {
		this.txtShopName = txtShopName;
	}

	public int getTxtShopNum() {
		return txtShopNum;
	}

	public void setTxtShopNum(int txtShopNum) {
		this.txtShopNum = txtShopNum;
	}

	public float getTxtShouJia() {
		return txtShouJia;
	}

	public void setTxtShouJia(float txtShouJia) {
		this.txtShouJia = txtShouJia;
	}

	public float getTxtXiaoShouZongE() {
		return txtXiaoShouZongE;
	}

	public void setTxtXiaoShouZongE(float txtXiaoShouZongE) {
		this.txtXiaoShouZongE = txtXiaoShouZongE;
	}

	public float getTxtChengBenDanJia() {
		return txtChengBenDanJia;
	}

	public void setTxtChengBenDanJia(float txtChengBenDanJia) {
		this.txtChengBenDanJia = txtChengBenDanJia;
	}

	public float getTxtChengBenZongE() {
		return txtChengBenZongE;
	}

	public void setTxtChengBenZongE(float txtChengBenZongE) {
		this.txtChengBenZongE = txtChengBenZongE;
	}

	public String getTxtRuKuDate() {
		return txtRuKuDate;
	}

	public void setTxtRuKuDate(String txtRuKuDate) {
		this.txtRuKuDate = txtRuKuDate;
	}

	public String getTxtChuKuDate() {
		return txtChuKuDate;
	}

	public void setTxtChuKuDate(String txtChuKuDate) {
		this.txtChuKuDate = txtChuKuDate;
	}

	public String getTxtRemarks() {
		return txtRemarks;
	}

	public void setTxtRemarks(String txtRemarks) {
		this.txtRemarks = txtRemarks;
	}

	public String getTxtCangKu() {
		return txtCangKu;
	}

	public void setTxtCangKu(String txtCangKu) {
		this.txtCangKu = txtCangKu;
	}
}
