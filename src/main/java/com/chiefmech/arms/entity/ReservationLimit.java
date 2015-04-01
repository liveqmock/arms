package com.chiefmech.arms.entity;

public class ReservationLimit {

	private String txtGuid;
	private String shopCode;
	private String shopName;
	private int reservationLimit;
	private String reservationDate;
	public String getTxtGuid() {
		return txtGuid;
	}
	public void setTxtGuid(String txtGuid) {
		this.txtGuid = txtGuid;
	}
	public String getShopCode() {
		return shopCode;
	}
	public void setShopCode(String shopCode) {
		this.shopCode = shopCode;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public int getReservationLimit() {
		return reservationLimit;
	}
	public void setReservationLimit(int reservationLimit) {
		this.reservationLimit = reservationLimit;
	}
	public String getReservationDate() {
		return reservationDate;
	}
	public void setReservationDate(String reservationDate) {
		this.reservationDate = reservationDate;
	}

}
