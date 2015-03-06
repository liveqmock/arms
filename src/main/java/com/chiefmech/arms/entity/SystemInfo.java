package com.chiefmech.arms.entity;

public class SystemInfo {
	private String systemkey;
	private String shopName;
	private String expirydate;
	private String db_host;
	private String db_name;
	private String db_username;
	private String db_password;
	private String shopAdd;
	private String shopTel;

	public String getSystemkey() {
		return systemkey;
	}
	public void setSystemkey(String systemkey) {
		this.systemkey = systemkey;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public String getExpirydate() {
		return expirydate;
	}
	public void setExpirydate(String expirydate) {
		this.expirydate = expirydate;
	}
	public String getDb_host() {
		return db_host;
	}
	public void setDb_host(String db_host) {
		this.db_host = db_host;
	}
	public String getDb_name() {
		return db_name;
	}
	public void setDb_name(String db_name) {
		this.db_name = db_name;
	}
	public String getDb_username() {
		return db_username;
	}
	public void setDb_username(String db_username) {
		this.db_username = db_username;
	}
	public String getDb_password() {
		return db_password;
	}
	public void setDb_password(String db_password) {
		this.db_password = db_password;
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
	@Override
	public String toString() {
		return "SystemInfo [systemkey=" + systemkey + ", shopName=" + shopName
				+ ", expirydate=" + expirydate + ", db_host=" + db_host
				+ ", db_name=" + db_name + ", db_username=" + db_username
				+ ", db_password=" + db_password + ",shopAdd="+shopAdd+",shopTel="+shopTel+"]";
	}

}
