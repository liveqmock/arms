package com.chiefmech.arms.entity.query;

import com.chiefmech.arms.entity.query.Criteria.Action;

public class MaillSearchBean extends SearchBean {
	/**
	 * 发送时间
	 */
	private String txtSendDate;
	/**
	 * 发送时间截至
	 */
	private String txtSendDateEnd;
	/**
	 * 阅读时间
	 */
	private String txtReadDate;
	/**
	 * 阅读时间截至
	 */
	private String txtReadDateEnd;
	/**
	 * 内容
	 */
	private String txtRemarks;
	/**
	 * 发送人姓名
	 */
	private String senderName;
	/**
	 * 主送人
	 */
	private String hidToUserName;

	private int page = 1;
	private int rows = 20;

	public String getTxtSendDate() {
		return txtSendDate;
	}

	public String getHidToUserName() {
		return hidToUserName;
	}

	public void setHidToUserName(String hidToUserName) {
		this.hidToUserName = hidToUserName;
	}

	public void setTxtSendDate(String txtSendDate) {
		this.txtSendDate = txtSendDate;
	}

	public String getTxtSendDateEnd() {
		return txtSendDateEnd;
	}

	public void setTxtSendDateEnd(String txtSendDateEnd) {
		this.txtSendDateEnd = txtSendDateEnd;
	}

	public String getTxtReadDate() {
		return txtReadDate;
	}

	public void setTxtReadDate(String txtReadDate) {
		this.txtReadDate = txtReadDate;
	}

	public String getTxtReadDateEnd() {
		return txtReadDateEnd;
	}

	public void setTxtReadDateEnd(String txtReadDateEnd) {
		this.txtReadDateEnd = txtReadDateEnd;
	}

	public String getTxtRemarks() {
		return txtRemarks;
	}

	public void setTxtRemarks(String txtRemarks) {
		this.txtRemarks = txtRemarks;
	}

	public String getSenderName() {
		return senderName;
	}

	public void setSenderName(String senderName) {
		this.senderName = senderName;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getRows() {
		return rows;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	@Override
	public void initSearchFields() {
		this.addField(new Criteria(Action.DATE_BETWEEN, "txtSendDate",
				txtSendDate, txtSendDateEnd));
		this.addField(new Criteria(Action.DATE_BETWEEN, "txtReadDate",
				txtReadDate, txtReadDateEnd));
		this.addField(new Criteria(Action.LIKE, "txtRemarks", txtRemarks));
		this.addField(new Criteria(Action.LIKE, "senderName", senderName));
		this.addField(new Criteria(Action.LIKE, "hidToUserName", hidToUserName));
		this.addLimitInfo(this.getPage(), this.getRows());
	}

}
