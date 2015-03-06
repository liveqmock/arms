package com.chiefmech.arms.entity;

import java.util.List;

public class User {

	private String userId;
	private String loginName;
	private String displayName;
	private String password;
	private String expirydate;
	private String groupName;
	private List<String> privilegeLst;
	private String shopName;
	private String shopAdd;
    private String shopTel;

	public String getUserId() {
		return userId;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getLoginName() {
		return loginName;
	}

	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getDisplayName() {
		return displayName;
	}

	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getExpirydate() {
		return expirydate;
	}

	public void setExpirydate(String expirydate) {
		this.expirydate = expirydate;
	}

	public List<String> getPrivilegeLst() {
		return privilegeLst;
	}

	public void setPrivilegeLst(List<String> privilegeLst) {
		this.privilegeLst = privilegeLst;
	}

	public String getShopAdd() {
		return shopAdd;
	}

	public void setShopAdd(String shopAdd) {
		this.shopAdd = shopAdd;
	}

	public String getShopTel() {
		return shopTel;
	}

	public void setShopTel(String shopTel) {
		this.shopTel = shopTel;
	}
	

}
