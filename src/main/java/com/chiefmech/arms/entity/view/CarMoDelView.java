package com.chiefmech.arms.entity.view;

public class CarMoDelView {
	/**
	 * 车系ID
	 */
	private int id;
	/**
	 * 车系编号
	 */
	private String modelId;
	/**
	 * 车系名称
	 */
	private String modelName;
	/**
	 * 品牌编号
	 */
	private String brandId;
	/**
	 * 品牌名称
	 */
	private String brandName;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getModelId() {
		return modelId;
	}

	public void setModelId(String modelId) {
		this.modelId = modelId;
	}

	public String getModelName() {
		return modelName;
	}

	public void setModelName(String modelName) {
		this.modelName = modelName;
	}

	public String getBrandId() {
		return brandId;
	}

	public void setBrandId(String brandId) {
		this.brandId = brandId;
	}

	public String getBrandName() {
		return brandName;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

}
