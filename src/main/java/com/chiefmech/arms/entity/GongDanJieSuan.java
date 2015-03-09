package com.chiefmech.arms.entity;

import java.util.List;

public class GongDanJieSuan {
	private List<JieSuanItem> jieSuanLst;
	private String gongshiFeiZheQianHeJi;
	private String gongshiFeiZheHouHeJi;
	private String wuLiaoFeiZheQianHeJi;
	private String wuLiaoFeiZheHouHeJi;
	private String gongDanHeJi;

	public GongDanJieSuan(List<JieSuanItem> jieSuanLst, float gongShiZheKou,
			float wuLiaoZheKou) {
		this.jieSuanLst = jieSuanLst;

		int gongshiFeiHeJi = 0;
		int wuLiaoFeiHeJi = 0;
		for (JieSuanItem item : jieSuanLst) {
			gongshiFeiHeJi += item.getGongshiFei();
			wuLiaoFeiHeJi += item.getWuLiaoFei();
		}
		this.gongshiFeiZheQianHeJi = formatMoney(gongshiFeiHeJi);
		this.gongshiFeiZheHouHeJi = formatMoney(gongshiFeiHeJi * gongShiZheKou);
		this.wuLiaoFeiZheQianHeJi = formatMoney(wuLiaoFeiHeJi);
		this.wuLiaoFeiZheHouHeJi = formatMoney(wuLiaoFeiHeJi * wuLiaoZheKou);
		this.gongDanHeJi = formatMoney(gongshiFeiHeJi * gongShiZheKou
				+ wuLiaoFeiHeJi * wuLiaoZheKou);
	}

	private String formatMoney(float money) {
		return String.format("%.2f", money);
	}

	public List<JieSuanItem> getJieSuanLst() {
		return jieSuanLst;
	}

	public void setJieSuanLst(List<JieSuanItem> jieSuanLst) {
		this.jieSuanLst = jieSuanLst;
	}

	public String getGongshiFeiZheQianHeJi() {
		return gongshiFeiZheQianHeJi;
	}

	public void setGongshiFeiZheQianHeJi(String gongshiFeiZheQianHeJi) {
		this.gongshiFeiZheQianHeJi = gongshiFeiZheQianHeJi;
	}

	public String getGongshiFeiZheHouHeJi() {
		return gongshiFeiZheHouHeJi;
	}

	public void setGongshiFeiZheHouHeJi(String gongshiFeiZheHouHeJi) {
		this.gongshiFeiZheHouHeJi = gongshiFeiZheHouHeJi;
	}

	public String getWuLiaoFeiZheQianHeJi() {
		return wuLiaoFeiZheQianHeJi;
	}

	public void setWuLiaoFeiZheQianHeJi(String wuLiaoFeiZheQianHeJi) {
		this.wuLiaoFeiZheQianHeJi = wuLiaoFeiZheQianHeJi;
	}

	public String getWuLiaoFeiZheHouHeJi() {
		return wuLiaoFeiZheHouHeJi;
	}

	public void setWuLiaoFeiZheHouHeJi(String wuLiaoFeiZheHouHeJi) {
		this.wuLiaoFeiZheHouHeJi = wuLiaoFeiZheHouHeJi;
	}

	public String getGongDanHeJi() {
		return gongDanHeJi;
	}

	public void setGongDanHeJi(String gongDanHeJi) {
		this.gongDanHeJi = gongDanHeJi;
	}

}