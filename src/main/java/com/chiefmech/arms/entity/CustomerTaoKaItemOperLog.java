package com.chiefmech.arms.entity;

import com.chiefmech.arms.common.util.DateUtil;
import com.chiefmech.arms.common.util.IDGen;

public class CustomerTaoKaItemOperLog extends CustomerTaoKaItem {

	private String txtLogGuid;
	private String txtAction;
	private String txtLogDate;
	private int txtNewRestTimes;

	public CustomerTaoKaItemOperLog() {
		super();
	}
	public CustomerTaoKaItemOperLog(String txtAction, int txtNewRestTimes,
			CustomerTaoKaItem item) {
		super(item);
		this.txtLogGuid = IDGen.getUUID();
		this.txtAction = txtAction;
		this.txtLogDate = DateUtil.getCurrentDateTime();
		this.txtNewRestTimes = txtNewRestTimes;
	}
	public String getTxtLogGuid() {
		return txtLogGuid;
	}
	public void setTxtLogGuid(String txtLogGuid) {
		this.txtLogGuid = txtLogGuid;
	}
	public String getTxtAction() {
		return txtAction;
	}
	public void setTxtAction(String txtAction) {
		this.txtAction = txtAction;
	}
	public String getTxtLogDate() {
		return txtLogDate;
	}
	public void setTxtLogDate(String txtLogDate) {
		this.txtLogDate = txtLogDate;
	}
	public int getTxtNewRestTimes() {
		return txtNewRestTimes;
	}
	public void setTxtNewRestTimes(int txtNewRestTimes) {
		this.txtNewRestTimes = txtNewRestTimes;
	}

}
