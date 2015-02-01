package com.chiefmech.arms.entity;

public class ShopOperLog {
	/**
	 * 日志Guid
	 */
	private String operLogGuid;
	/**
	 * 仓库名
	 */
	private String cangKu;
	/**
	 * 商品编码
	 */
	private String shopId;
	/**
	 * 商品名称
	 */
	private String shopName;
	/**
	 * 操作时间
	 */
	private String operDate;
	/**
	 * 数量
	 */
	private int qty;
	/**
	 * 成本价
	 */
	private float chengBenJia;
	/**
	 * 成本总额
	 */
	private float chengBenJiaAll;
	/**
	 * 销售价
	 */
	private float salePrice;
	/**
	 * 销售总额
	 */
	private float salePriceAll;
	/**
	 * 业务单号
	 */
	private String billNo;
	/**
	 * 业务类别
	 */
	private String billName;
	public String getOperLogGuid() {
		return operLogGuid;
	}
	public void setOperLogGuid(String operLogGuid) {
		this.operLogGuid = operLogGuid;
	}
	public String getCangKu() {
		return cangKu;
	}
	public void setCangKu(String cangKu) {
		this.cangKu = cangKu;
	}
	public String getShopId() {
		return shopId;
	}
	public void setShopId(String shopId) {
		this.shopId = shopId;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public String getOperDate() {
		return operDate;
	}
	public void setOperDate(String operDate) {
		this.operDate = operDate;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public float getChengBenJia() {
		return chengBenJia;
	}
	public void setChengBenJia(float chengBenJia) {
		this.chengBenJia = chengBenJia;
	}
	public float getChengBenJiaAll() {
		return chengBenJiaAll;
	}
	public void setChengBenJiaAll(float chengBenJiaAll) {
		this.chengBenJiaAll = chengBenJiaAll;
	}
	public float getSalePrice() {
		return salePrice;
	}
	public void setSalePrice(float salePrice) {
		this.salePrice = salePrice;
	}
	public float getSalePriceAll() {
		return salePriceAll;
	}
	public void setSalePriceAll(float salePriceAll) {
		this.salePriceAll = salePriceAll;
	}
	public String getBillNo() {
		return billNo;
	}
	public void setBillNo(String billNo) {
		this.billNo = billNo;
	}
	public String getBillName() {
		return billName;
	}
	public void setBillName(String billName) {
		this.billName = billName;
	}
}
