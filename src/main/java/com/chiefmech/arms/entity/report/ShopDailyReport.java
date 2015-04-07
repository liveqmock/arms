package com.chiefmech.arms.entity.report;

public class ShopDailyReport {

	private int dailyIncomingCount; // 每日入厂台数
	private int monthlyIncomingCount;
	private int dailyOutputValue; // 每日产值
	private int monthlyOutputValue;
	private int dailyGrossProfit; // 每日毛利
	private int monthlyGrossProfit;

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
	public int getDailyOutputValue() {
		return dailyOutputValue;
	}
	public void setDailyOutputValue(int dailyOutputValue) {
		this.dailyOutputValue = dailyOutputValue;
	}
	public int getMonthlyOutputValue() {
		return monthlyOutputValue;
	}
	public void setMonthlyOutputValue(int monthlyOutputValue) {
		this.monthlyOutputValue = monthlyOutputValue;
	}
	public int getDailyGrossProfit() {
		return dailyGrossProfit;
	}
	public void setDailyGrossProfit(int dailyGrossProfit) {
		this.dailyGrossProfit = dailyGrossProfit;
	}
	public int getMonthlyGrossProfit() {
		return monthlyGrossProfit;
	}
	public void setMonthlyGrossProfit(int monthlyGrossProfit) {
		this.monthlyGrossProfit = monthlyGrossProfit;
	}

}
