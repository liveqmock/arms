package com.chiefmech.arms.entity;

import com.chiefmech.arms.common.util.IDGen;

public class GongDanCheLiangJianCe extends JianChaXiangMu {

	private String txtJianceGuid;
	private String txtGongDanGuid;
	private String txtRemark;

	public GongDanCheLiangJianCe(String txtGongDanGuid, JianChaXiangMu item) {
		super(item);

		this.txtJianceGuid = IDGen.getUUID();
		this.txtGongDanGuid = txtGongDanGuid;
		this.txtRemark = "";

	}
	public GongDanCheLiangJianCe() {
	}
	public String getTxtJianceGuid() {
		return txtJianceGuid;
	}
	public void setTxtJianceGuid(String txtJianceGuid) {
		this.txtJianceGuid = txtJianceGuid;
	}
	public String getTxtGongDanGuid() {
		return txtGongDanGuid;
	}
	public void setTxtGongDanGuid(String txtGongDanGuid) {
		this.txtGongDanGuid = txtGongDanGuid;
	}
	public String getTxtRemark() {
		return txtRemark;
	}
	public void setTxtRemark(String txtRemark) {
		this.txtRemark = txtRemark;
	}

}
