package com.chiefmech.arms.entity.query;

import com.chiefmech.arms.entity.query.Criteria.Action;

public class ExceptionManageSearchBean extends SearchBean {
	private String liWaiDate;
	private String liWaiDateEnd;
	private String billNo;
	private String billType;
	private String cangKuName;
	
	private String beiZhu;
	private String shuLiang;
	private String jinE;
	private String liWaiStatus;
	private String shenHeRen;
	
	private int start = 1;
	private int rows = 15;

	public String getLiWaiDate() {
		return liWaiDate;
	}

	public void setLiWaiDate(String liWaiDate) {
		this.liWaiDate = liWaiDate;
	}

	public String getLiWaiDateEnd() {
		return liWaiDateEnd;
	}

	public void setLiWaiDateEnd(String liWaiDateEnd) {
		this.liWaiDateEnd = liWaiDateEnd;
	}

	public String getBillNo() {
		return billNo;
	}

	public void setBillNo(String billNo) {
		this.billNo = billNo;
	}

	public String getBillType() {
		return billType;
	}

	public void setBillType(String billType) {
		this.billType = billType;
	}

	public String getCangKuName() {
		return cangKuName;
	}

	public void setCangKuName(String cangKuName) {
		this.cangKuName = cangKuName;
	}

	public String getBeiZhu() {
		return beiZhu;
	}

	public void setBeiZhu(String beiZhu) {
		this.beiZhu = beiZhu;
	}

	public String getShuLiang() {
		return shuLiang;
	}

	public void setShuLiang(String shuLiang) {
		this.shuLiang = shuLiang;
	}

	public String getJinE() {
		return jinE;
	}

	public void setJinE(String jinE) {
		this.jinE = jinE;
	}

	public String getLiWaiStatus() {
		return liWaiStatus;
	}

	public void setLiWaiStatus(String liWaiStatus) {
		this.liWaiStatus = liWaiStatus;
	}

	public String getShenHeRen() {
		return shenHeRen;
	}

	public void setShenHeRen(String shenHeRen) {
		this.shenHeRen = shenHeRen;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getRows() {
		return rows;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}


	@Override
	public void initSearchFields() {
		this.addField(new Criteria(Action.STR_BETWEEN, "liWaiDate",
				liWaiDate, liWaiDateEnd));
		this.addField(new Criteria(Action.LIKE, "billNo", billNo));
		this.addField(new Criteria(Action.LIKE, "billType", billType));
		this.addField(new Criteria(Action.LIKE, "beiZhu", beiZhu));
		this.addField(new Criteria(Action.LIKE, "liWaiStatus", liWaiStatus));
		this.addLimitInfo(this.getStart(), this.getRows());
	}

}
