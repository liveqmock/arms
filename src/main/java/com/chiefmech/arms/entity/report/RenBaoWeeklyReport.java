package com.chiefmech.arms.entity.report;

public class RenBaoWeeklyReport {
	private String txtGongDanId;
	private String txtXiangMuName;
	private String txtRemark;
	private String txtChePaiHao;
	private String txtRuChangDate;
	private String txtCheZhuName;
	private String txtCheZhuTel;
	private String txtCheXiName;
	private String txtVin;
	private String txtFaDongJiHao;
	private String txtCheLiangBaoXianDaoQiRi;

	private String txtRenBaoXiangMu;
	private int txtRenBaoChaJia;

	public String getTxtRenBaoXiangMu() {
		updateRenBaoInfo();
		return txtRenBaoXiangMu;
	}
	public int getTxtRenBaoChaJia() {
		updateRenBaoInfo();
		return txtRenBaoChaJia;
	}

	public int getTxtXiangMuValue() {
		int value = 0;
		if (txtXiangMuName.startsWith("300")
				|| txtXiangMuName.startsWith("500")
				|| txtXiangMuName.startsWith("800")) {
			value = Integer.parseInt(txtXiangMuName.substring(0, 3));
		} else if (txtRemark.startsWith("300") || txtRemark.startsWith("500")
				|| txtRemark.startsWith("800")) {
			value = Integer.parseInt(txtRemark.substring(0, 3));
		}

		return value;
	}

	private void updateRenBaoInfo() {
		switch (getTxtXiangMuValue()) {
			case 300 :
				txtRenBaoXiangMu = "机修";
				txtRenBaoChaJia = 100;
				break;
			case 500 :
				txtRenBaoXiangMu = "保养";
				txtRenBaoChaJia = 100;
				break;
			case 800 :
				txtRenBaoXiangMu = "喷漆";
				txtRenBaoChaJia = 130;
				break;
		}
	}

	public String getTxtGongDanId() {
		return txtGongDanId;
	}
	public void setTxtGongDanId(String txtGongDanId) {
		this.txtGongDanId = txtGongDanId;
	}
	public String getTxtTicketNumber() {
		return getTxtRemark();
	}
	public String getTxtXiangMuName() {
		return txtXiangMuName;
	}
	public String getTxtRemark() {
		return txtRemark == null ? "" : txtRemark;
	}
	public void setTxtRemark(String txtRemark) {
		this.txtRemark = txtRemark;
	}
	public void setTxtXiangMuName(String txtXiangMuName) {
		this.txtXiangMuName = txtXiangMuName;
	}
	public void setTxtRenBaoXiangMu(String txtRenBaoXiangMu) {
		this.txtRenBaoXiangMu = txtRenBaoXiangMu;
	}
	public void setTxtRenBaoChaJia(int txtRenBaoChaJia) {
		this.txtRenBaoChaJia = txtRenBaoChaJia;
	}
	public String getTxtChePaiHao() {
		return txtChePaiHao;
	}
	public void setTxtChePaiHao(String txtChePaiHao) {
		this.txtChePaiHao = txtChePaiHao;
	}
	public String getTxtRuChangDate() {
		return txtRuChangDate;
	}
	public void setTxtRuChangDate(String txtRuChangDate) {
		this.txtRuChangDate = txtRuChangDate;
	}
	public String getTxtCheZhuName() {
		return txtCheZhuName;
	}
	public void setTxtCheZhuName(String txtCheZhuName) {
		this.txtCheZhuName = txtCheZhuName;
	}
	public String getTxtCheZhuTel() {
		return txtCheZhuTel;
	}
	public void setTxtCheZhuTel(String txtCheZhuTel) {
		this.txtCheZhuTel = txtCheZhuTel;
	}
	public String getTxtCheXiName() {
		return txtCheXiName;
	}
	public void setTxtCheXiName(String txtCheXiName) {
		this.txtCheXiName = txtCheXiName;
	}
	public String getTxtVin() {
		return txtVin;
	}
	public void setTxtVin(String txtVin) {
		this.txtVin = txtVin;
	}
	public String getTxtFaDongJiHao() {
		return txtFaDongJiHao;
	}
	public void setTxtFaDongJiHao(String txtFaDongJiHao) {
		this.txtFaDongJiHao = txtFaDongJiHao;
	}
	public String getTxtCheLiangBaoXianDaoQiRi() {
		return txtCheLiangBaoXianDaoQiRi;
	}
	public void setTxtCheLiangBaoXianDaoQiRi(String txtCheLiangBaoXianDaoQiRi) {
		this.txtCheLiangBaoXianDaoQiRi = txtCheLiangBaoXianDaoQiRi;
	}

}
