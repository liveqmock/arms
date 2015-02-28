package com.chiefmech.arms.entity;

public class CarModel2 {
	private int id;

	/**
	 * 品牌id
	 */
	private String brandId;

	/**
	 * 车系id
	 */
	private String modelId;

	/**
	 * 车系名称
	 */
	private String modelName;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBrandId() {
		return brandId;
	}

	public void setBrandId(String brandId) {
		this.brandId = brandId;
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

}
