package com.chiefmech.arms.entity;

import com.chiefmech.arms.common.util.ConfigUtil;

public class CustomerReservation {
	private String txtReserveGuid;
	private String txtCheLiangId;
	private String txtTicketInfo;
	private String txtReserveDate;
	private String txtReserveShop;
	private String txtCustomerServiceName = ConfigUtil.getInstance()
			.getUserInfo().getDisplayName();
	private String txtRemarks;
	private String txtCallSort = "预约";
	private String txtShopCode;
	private String txtShopName;

	public String getTxtCallSort() {
		return txtCallSort;
	}
	public void setTxtCallSort(String txtCallSort) {
		this.txtCallSort = txtCallSort;
	}
	public String getTxtShopCode() {
		return txtShopCode;
	}
	public void setTxtShopCode(String txtShopCode) {
		this.txtShopCode = txtShopCode;
	}
	public String getTxtShopName() {
		return txtShopName;
	}
	public void setTxtShopName(String txtShopName) {
		this.txtShopName = txtShopName;
	}
	public String getTxtReserveGuid() {
		return txtReserveGuid;
	}
	public void setTxtReserveGuid(String txtReserveGuid) {
		this.txtReserveGuid = txtReserveGuid;
	}
	public String getTxtCheLiangId() {
		return txtCheLiangId;
	}
	public void setTxtCheLiangId(String txtCheLiangId) {
		this.txtCheLiangId = txtCheLiangId;
	}
	public String getTxtTicketInfo() {
		return txtTicketInfo;
	}
	public void setTxtTicketInfo(String txtTicketInfo) {
		this.txtTicketInfo = txtTicketInfo;
	}
	public String getTxtReserveDate() {
		return txtReserveDate;
	}
	public void setTxtReserveDate(String txtReserveDate) {
		this.txtReserveDate = txtReserveDate;
	}
	public String getTxtReserveShop() {
		return txtReserveShop;
	}
	public void setTxtReserveShop(String txtReserveShop) {
		this.txtReserveShop = txtReserveShop;
	}
	public String getTxtCustomerServiceName() {
		return txtCustomerServiceName;
	}
	public void setTxtCustomerServiceName(String txtCustomerServiceName) {
		this.txtCustomerServiceName = txtCustomerServiceName;
	}
	public String getTxtRemarks() {
		return txtRemarks;
	}
	public void setTxtRemarks(String txtRemarks) {
		this.txtRemarks = txtRemarks;
	}

}
