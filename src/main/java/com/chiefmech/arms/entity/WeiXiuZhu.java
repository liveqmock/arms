package com.chiefmech.arms.entity;

import com.chiefmech.arms.common.util.SessionUtil;

public class WeiXiuZhu {
	/** 维修组编号 */
	private String weixiuzuID;
	/** 维修组名 */
	private String weixiuzuName;

	private String txtShopCode;

	public String getTxtShopCode() {
		if (txtShopCode == null) {
			txtShopCode = SessionUtil.getShopInfo().getShopCode();
		}
		return txtShopCode;
	}
	public void setTxtShopCode(String txtShopCode) {
		this.txtShopCode = txtShopCode;
	}
	public String getWeixiuzuID() {
		return weixiuzuID;
	}
	public void setWeixiuzuID(String weixiuzuID) {
		this.weixiuzuID = weixiuzuID;
	}
	public String getWeixiuzuName() {
		return weixiuzuName;
	}
	public void setWeixiuzuName(String weixiuzuName) {
		this.weixiuzuName = weixiuzuName;
	}

}
