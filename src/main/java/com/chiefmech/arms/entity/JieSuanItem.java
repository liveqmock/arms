package com.chiefmech.arms.entity;

public class JieSuanItem {
	private String zhangtao;
	private float gongshiFei;
	private float wuLiaoFei;
	private String gongshiFeiZheQian;
	private String gongshiFeiZheHou;
	private String wuLiaoFeiZheQian;
	private String wuLiaoFeiZheHou;

	public JieSuanItem() {

	}

	public JieSuanItem(String zhangTao, float gongshiFei, float wuLiaoFei,
			float gongShiZheKou, float wuLiaoZheKou) {
		this.zhangtao = zhangTao;
		this.gongshiFei = gongshiFei;
		this.wuLiaoFei = wuLiaoFei;
		this.gongshiFeiZheQian = formatMoney(gongshiFei);
		this.gongshiFeiZheHou = formatMoney(gongshiFei * gongShiZheKou);
		this.wuLiaoFeiZheQian = formatMoney(wuLiaoFei);
		this.wuLiaoFeiZheHou = formatMoney(wuLiaoFei * wuLiaoZheKou);
	}

	private String formatMoney(float money) {
		return String.format("%.2f", money);
	}
	public float getGongshiFei() {
		return gongshiFei;
	}
	public void setGongshiFei(float gongshiFei) {
		this.gongshiFei = gongshiFei;
	}
	public float getWuLiaoFei() {
		return wuLiaoFei;
	}
	public void setWuLiaoFei(float wuLiaoFei) {
		this.wuLiaoFei = wuLiaoFei;
	}
	public String getZhangtao() {
		return zhangtao;
	}
	public void setZhangtao(String zhangtao) {
		this.zhangtao = zhangtao;
	}
	public String getGongshiFeiZheQian() {
		return gongshiFeiZheQian;
	}
	public void setGongshiFeiZheQian(String gongshiFeiZheQian) {
		this.gongshiFeiZheQian = gongshiFeiZheQian;
	}
	public String getGongshiFeiZheHou() {
		return gongshiFeiZheHou;
	}
	public void setGongshiFeiZheHou(String gongshiFeiZheHou) {
		this.gongshiFeiZheHou = gongshiFeiZheHou;
	}
	public String getWuLiaoFeiZheQian() {
		return wuLiaoFeiZheQian;
	}
	public void setWuLiaoFeiZheQian(String wuLiaoFeiZheQian) {
		this.wuLiaoFeiZheQian = wuLiaoFeiZheQian;
	}
	public String getWuLiaoFeiZheHou() {
		return wuLiaoFeiZheHou;
	}
	public void setWuLiaoFeiZheHou(String wuLiaoFeiZheHou) {
		this.wuLiaoFeiZheHou = wuLiaoFeiZheHou;
	}

}