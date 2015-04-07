package com.chiefmech.arms.entity;

public class JianChaXiangMu {
	private String txtJianChaGuId;
	private int txtXuHao;
	private String txtJianChaSort;
	private float txtJianChaLiCheng;
	private float txtJianChaDate;
	private String txtJianChaName;
	private String txtStatusItem;
	private String txtActionItem;
	private String txtTip1;
	private String txtTip2;
	private String txtTip3;
	private String txtTip4;
	private String txtRemark;

	public JianChaXiangMu(JianChaXiangMu item) {
		this.txtJianChaGuId = item.getTxtJianChaGuId();
		this.txtXuHao = item.getTxtXuHao();
		this.txtJianChaSort = item.getTxtJianChaSort();
		this.txtJianChaLiCheng = item.getTxtJianChaLiCheng();
		this.txtJianChaDate = item.getTxtJianChaDate();
		this.txtJianChaName = item.getTxtJianChaName();
		this.txtStatusItem = item.getTxtStatusItem();
		this.txtActionItem = item.getTxtActionItem();
		this.txtTip1 = item.getTxtTip1();
		this.txtTip2 = item.getTxtTip2();
		this.txtTip3 = item.getTxtTip3();
		this.txtTip4 = item.getTxtTip4();
		this.txtRemark = item.getTxtRemark();
	}

	public JianChaXiangMu() {
	}

	public String getTxtStatusItem() {
		return txtStatusItem;
	}

	public void setTxtStatusItem(String txtStatusItem) {
		this.txtStatusItem = txtStatusItem;
	}

	public String getTxtActionItem() {
		return txtActionItem;
	}

	public void setTxtActionItem(String txtActionItem) {
		this.txtActionItem = txtActionItem;
	}

	public String getTxtTip1() {
		return txtTip1;
	}

	public void setTxtTip1(String txtTip1) {
		this.txtTip1 = txtTip1;
	}

	public String getTxtTip2() {
		return txtTip2;
	}

	public void setTxtTip2(String txtTip2) {
		this.txtTip2 = txtTip2;
	}

	public String getTxtTip3() {
		return txtTip3;
	}

	public void setTxtTip3(String txtTip3) {
		this.txtTip3 = txtTip3;
	}

	public String getTxtTip4() {
		return txtTip4;
	}

	public void setTxtTip4(String txtTip4) {
		this.txtTip4 = txtTip4;
	}

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
	public int getTxtXuHao() {
		return txtXuHao;
	}

	public void setTxtXuHao(int txtXuHao) {
		this.txtXuHao = txtXuHao;
	}

	public String getTxtRemark() {
		return txtRemark;
	}

	public void setTxtRemark(String txtRemark) {
		this.txtRemark = txtRemark;
	}
}
