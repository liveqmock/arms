package com.chiefmech.arms.entity;

import java.sql.Timestamp;
import java.util.List;

public class User {

	private String userId;
	private String loginName;
	private String displayName;
	private String password;
	private Timestamp lastLoginTime;
	private String isLimit;
	private String departName;
	private List<String> privilegeLst;
	private String jigouName;

	public String getUserId() {
		return userId;
	}

	public String getJigouName() {
		return jigouName;
	}

	public void setJigouName(String jigouName) {
		this.jigouName = jigouName;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getLoginName() {
		return loginName;
	}

	public String getDepartName() {
		return departName;
	}

	public void setDepartName(String departName) {
		this.departName = departName;
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

	public Timestamp getLastLoginTime() {
		return lastLoginTime;
	}

	public void setLastLoginTime(Timestamp lastLoginTime) {
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
