package com.chiefmech.arms.entity.report;

public class ShopDailyReport {

	private int dailyIncomingCount; // 每日入厂台数
	private int monthlyIncomingCount;
	private float dailyOutputValue; // 每日产值
	private float monthlyOutputValue;
	private float dailyGrossProfit; // 每日毛利
	private float monthlyGrossProfit;
	public int getDailyIncomingCount() {
		return dailyIncomingCount;
	}
	public void setDailyIncomingCount(int dailyIncomingCount) {
		this.dailyIncomingCount = dailyIncomingCount;
	}
	public int getMonthlyIncomingCount() {
		return monthlyIncomingCount;
	}
	public void setMonthlyIncomingCount(int monthlyIncomingCount) {
		this.monthlyIncomingCount = monthlyIncomingCount;
	}
	public float getDailyOutputValue() {
		return dailyOutputValue;
	}
	public void setDailyOutputValue(float dailyOutputValue) {
		this.dailyOutputValue = dailyOutputValue;
	}
	public float getMonthlyOutputValue() {
		return monthlyOutputValue;
	}
	public void setMonthlyOutputValue(float monthlyOutputValue) {
		this.monthlyOutputValue = monthlyOutputValue;
	}
	public float getDailyGrossProfit() {
		return dailyGrossProfit;
	}
	public void setDailyGrossProfit(float dailyGrossProfit) {
		this.dailyGrossProfit = dailyGrossProfit;
	}
	public float getMonthlyGrossProfit() {
		return monthlyGrossProfit;
	}
	public void setMonthlyGrossProfit(float monthlyGrossProfit) {
		this.monthlyGrossProfit = monthlyGrossProfit;
	}

}
