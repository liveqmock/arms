package com.chiefmech.arms.entity;

public class Store {
	/**
	 * ID
	 */
	private String StoreId;
	/**
	 * 仓库编号
	 */
	private String txtStoreBianHao;
	/**
	 * 仓库名称
	 */
	private String txtStoreName;
	/**
	 * 仓库类别
	 */
	private String ddlStoreSort;
	/**
	 * 启用标志
	 */
	private String ddlStopFlag;
	/**
	 * 备注
	 */
	private String txtRemarks;

	public String getStoreId() {
		return StoreId;
	}

	public void setStoreId(String storeId) {
		StoreId = storeId;
	}

	public String getTxtStoreBianHao() {
		return txtStoreBianHao;
	}

	public void setTxtStoreBianHao(String txtStoreBianHao) {
		this.txtStoreBianHao = txtStoreBianHao;
	}

	public String getTxtStoreName() {
		return txtStoreName;
	}

	public void setTxtStoreName(String txtStoreName) {
		this.txtStoreName = txtStoreName;
	}

	public String getDdlStoreSort() {
		return ddlStoreSort;
	}

	public void setDdlStoreSort(String ddlStoreSort) {
		this.ddlStoreSort = ddlStoreSort;
	}

	public String getDdlStopFlag() {
		return ddlStopFlag;
	}

	public void setDdlStopFlag(String ddlStopFlag) {
		this.ddlStopFlag = ddlStopFlag;
	}

	public String getTxtRemarks() {
		return txtRemarks;
	}

	public void setTxtRemarks(String txtRemarks) {
		this.txtRemarks = txtRemarks;
	}

}
