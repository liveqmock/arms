package com.chiefmech.arms.entity;

public class JianChaXiangMu {
	/**
	 * 检查项目唯一标示
	 */
	private String txtJianChaGuId;
	/**
	 * 序号
	 */
	private int txtXuHao;
	/**
	 * 检查项目所属类别
	 */
	private String txtJianChaSort;
	/**
	 * 检查项目名字
	 */
	private String txtJianChaName;
	/**
	 * 项目里程周期
	 */
	private float txtJianChaLiCheng;
	/**
	 * 检查项目时间周期
	 */
	private float txtJianChaDate;
	/**
	 * 保养更换周期说明
	 */
	private String txtXiangMuRemark;

	public String getTxtJianChaGuId() {
		return txtJianChaGuId;
	}

	public void setTxtJianChaGuId(String txtJianChaGuId) {
		this.txtJianChaGuId = txtJianChaGuId;
	}

	public String getTxtJianChaSort() {
		return txtJianChaSort;
	}

	public void setTxtJianChaSort(String txtJianChaSort) {
		this.txtJianChaSort = txtJianChaSort;
	}

	public String getTxtJianChaName() {
		return txtJianChaName;
	}

	public void setTxtJianChaName(String txtJianChaName) {
		this.txtJianChaName = txtJianChaName;
	}

	public float getTxtJianChaLiCheng() {
		return txtJianChaLiCheng;
	}

	public void setTxtJianChaLiCheng(float txtJianChaLiCheng) {
		this.txtJianChaLiCheng = txtJianChaLiCheng;
	}

	public float getTxtJianChaDate() {
		return txtJianChaDate;
	}

	public void setTxtJianChaDate(float txtJianChaDate) {
		this.txtJianChaDate = txtJianChaDate;
	}

	public String getTxtXiangMuRemark() {
		return txtXiangMuRemark;
	}

	public void setTxtXiangMuRemark(String txtXiangMuRemark) {
		this.txtXiangMuRemark = txtXiangMuRemark;
	}

	public int getTxtXuHao() {
		return txtXuHao;
	}

	public void setTxtXuHao(int txtXuHao) {
		this.txtXuHao = txtXuHao;
	}
}
