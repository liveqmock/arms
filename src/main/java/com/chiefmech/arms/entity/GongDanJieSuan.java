package com.chiefmech.arms.entity;

public class GongDanJieSuan {
	private String weiXiuFeiFree;
	private String weiXiuFeiPaid;
	private String weiXiuFeiDiscount;
	private String wuLiaoFeiFree;
	private String wuLiaoFeiPaid;
	private String wuLiaoFeiDiscount;
	private String heJiFree;
	private String heJiPaid;
	private String heJiDiscount;

	public GongDanJieSuan(float xiangMuZheHou, float wuLiaoZheHou,
			float weiXiuFeiFree2, float wuLiaoFeiFree2, float weiXiuFeiPaid2,
			float wuLiaoFeiPaid2) {
		this.weiXiuFeiFree = formatMoney(weiXiuFeiFree2);
		this.weiXiuFeiPaid = formatMoney(weiXiuFeiPaid2);
		this.weiXiuFeiDiscount = formatMoney(weiXiuFeiPaid2 * xiangMuZheHou);
		this.wuLiaoFeiFree = formatMoney(wuLiaoFeiFree2);
		this.wuLiaoFeiPaid = formatMoney(wuLiaoFeiPaid2);
		this.wuLiaoFeiDiscount = formatMoney(wuLiaoFeiPaid2 * wuLiaoZheHou);
		this.heJiFree = formatMoney(weiXiuFeiFree2 + wuLiaoFeiFree2);
		this.heJiPaid = formatMoney(weiXiuFeiPaid2 + wuLiaoFeiPaid2);
		this.heJiDiscount = formatMoney(weiXiuFeiPaid2 * xiangMuZheHou
				+ wuLiaoFeiPaid2 * wuLiaoZheHou);
	}

	private String formatMoney(float money) {
		return String.format("%.2f", money);
	}

	public String getWeiXiuFeiFree() {
		return weiXiuFeiFree;
	}

	public void setWeiXiuFeiFree(String weiXiuFeiFree) {
		this.weiXiuFeiFree = weiXiuFeiFree;
	}

	public String getWeiXiuFeiPaid() {
		return weiXiuFeiPaid;
	}

	public void setWeiXiuFeiPaid(String weiXiuFeiPaid) {
		this.weiXiuFeiPaid = weiXiuFeiPaid;
	}

	public String getWeiXiuFeiDiscount() {
		return weiXiuFeiDiscount;
	}

	public void setWeiXiuFeiDiscount(String weiXiuFeiDiscount) {
		this.weiXiuFeiDiscount = weiXiuFeiDiscount;
	}

	public String getWuLiaoFeiFree() {
		return wuLiaoFeiFree;
	}

	public void setWuLiaoFeiFree(String wuLiaoFeiFree) {
		this.wuLiaoFeiFree = wuLiaoFeiFree;
	}

	public String getWuLiaoFeiPaid() {
		return wuLiaoFeiPaid;
	}

	public void setWuLiaoFeiPaid(String wuLiaoFeiPaid) {
		this.wuLiaoFeiPaid = wuLiaoFeiPaid;
	}

	public String getWuLiaoFeiDiscount() {
		return wuLiaoFeiDiscount;
	}

	public void setWuLiaoFeiDiscount(String wuLiaoFeiDiscount) {
		this.wuLiaoFeiDiscount = wuLiaoFeiDiscount;
	}

	public String getHeJiFree() {
		return heJiFree;
	}

	public void setHeJiFree(String heJiFree) {
		this.heJiFree = heJiFree;
	}

	public String getHeJiPaid() {
		return heJiPaid;
	}

	public void setHeJiPaid(String heJiPaid) {
		this.heJiPaid = heJiPaid;
	}

	public String getHeJiDiscount() {
		return heJiDiscount;
	}

	public void setHeJiDiscount(String heJiDiscount) {
		this.heJiDiscount = heJiDiscount;
	}

}