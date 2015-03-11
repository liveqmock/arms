package com.chiefmech.arms.entity;

import com.chiefmech.arms.common.util.IDGen;

public class CustomerTaoKaItem {

	private String txtGuid;
	private String txtCustId;
	private String txtTaoKaSort;
	private String txtXiangMuCode;
	private String txtXiangMuName;
	private int txtTotalTimes;
	private int txtRestTimes;

	public CustomerTaoKaItem() {

	}
	public CustomerTaoKaItem(String txtCustId, TaoKaItem item) {
		this.txtGuid = IDGen.getUUID();
		this.txtCustId = txtCustId;
		this.txtTaoKaSort = item.getTxtTaoKaSort();
		this.txtXiangMuCode = item.getTxtXiangMuCode();
		this.txtXiangMuName = item.getTxtXiangMuName();
		this.txtTotalTimes = item.getTxtTotalTimes();
		this.txtRestTimes = this.txtTotalTimes;
	}
	public String getTxtGuid() {
		return txtGuid;
	}
	public void setTxtGuid(String txtGuid) {
		this.txtGuid = txtGuid;
	}
	public String getTxtCustId() {
		return txtCustId;
	}
	public void setTxtCustId(String txtCustId) {
		this.txtCustId = txtCustId;
	}
	public String getTxtTaoKaSort() {
		return txtTaoKaSort;
	}
	public void setTxtTaoKaSort(String txtTaoKaSort) {
		this.txtTaoKaSort = txtTaoKaSort;
	}
	public String getTxtXiangMuCode() {
		return txtXiangMuCode;
	}
	public void setTxtXiangMuCode(String txtXiangMuCode) {
		this.txtXiangMuCode = txtXiangMuCode;
	}
	public String getTxtXiangMuName() {
		return txtXiangMuName;
	}
	public void setTxtXiangMuName(String txtXiangMuName) {
		this.txtXiangMuName = txtXiangMuName;
	}
	public int getTxtTotalTimes() {
		return txtTotalTimes;
	}
	public void setTxtTotalTimes(int txtTotalTimes) {
		this.txtTotalTimes = txtTotalTimes;
	}
	public int getTxtRestTimes() {
		return txtRestTimes;
	}
	public void setTxtRestTimes(int txtRestTimes) {
		this.txtRestTimes = txtRestTimes;
	}

}
