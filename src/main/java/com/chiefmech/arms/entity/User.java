package com.chiefmech.arms.entity;

import java.util.List;

public class User {

	private String userId;
	private String userLoginName;
	private String userDisplayName;
	private String password;
	private String lastLoginTime;
	private String isLimit;
	private List<String> privilegeLst;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserLoginName() {
		return userLoginName;
	}
	public void setUserLoginName(String userLoginName) {
		this.userLoginName = userLoginName;
	}
	public String getUserDisplayName() {
		return userDisplayName;
	}
	public void setUserDisplayName(String userDisplayName) {
		this.userDisplayName = userDisplayName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLastLoginTime() {
		return lastLoginTime;
	}
	public void setLastLoginTime(String lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}
	public String getIsLimit() {
		return isLimit;
	}
	public void setIsLimit(String isLimit) {
		this.isLimit = isLimit;
	}
	public List<String> getPrivilegeLst() {
		return privilegeLst;
	}
	public void setPrivilegeLst(List<String> privilegeLst) {
		this.privilegeLst = privilegeLst;
	}

}
