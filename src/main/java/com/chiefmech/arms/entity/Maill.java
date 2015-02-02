package com.chiefmech.arms.entity;

public class Maill {
	/**
	 * Maill唯一ID
	 */
	private String maillId;
	/**
	 * 发送人ID
	 */
	private String senderId;
	/**
	 * 发送人姓名
	 */
	private String senderName;
	/**
	 * 主送人ID
	 */
	private String hidToUserId;
	/**
	 * 抄送人ID
	 */
	private String hidCCUserId;
	/**
	 * 主送人姓名
	 */
	private String hidToUserName;
	/**
	 * 抄送人姓名
	 */
	private String hidCCUserName;
	/**
	 * 内容
	 */
	private String txtRemarks;
	/**
	 * 发送时间
	 */
	private String txtSendDate;
	/**
	 * 阅读时间
	 */
	private String txtReadDate;

	public String getMaillId() {
		return maillId;
	}

	public void setMaillId(String maillId) {
		this.maillId = maillId;
	}

	public String getHidToUserId() {
		return hidToUserId;
	}

	public void setHidToUserId(String hidToUserId) {
		this.hidToUserId = hidToUserId;
	}

	public String getHidCCUserId() {
		return hidCCUserId;
	}

	public void setHidCCUserId(String hidCCUserId) {
		this.hidCCUserId = hidCCUserId;
	}

	public String getHidToUserName() {
		return hidToUserName;
	}

	public void setHidToUserName(String hidToUserName) {
		this.hidToUserName = hidToUserName;
	}

	public String getHidCCUserName() {
		return hidCCUserName;
	}

	public void setHidCCUserName(String hidCCUserName) {
		this.hidCCUserName = hidCCUserName;
	}

	public String getTxtRemarks() {
		return txtRemarks;
	}

	public void setTxtRemarks(String txtRemarks) {
		this.txtRemarks = txtRemarks;
	}

	public String getTxtSendDate() {
		return txtSendDate;
	}

	public void setTxtSendDate(String txtSendDate) {
		this.txtSendDate = txtSendDate;
	}

	public String getTxtReadDate() {
		return txtReadDate;
	}

	public void setTxtReadDate(String txtReadDate) {
		this.txtReadDate = txtReadDate;
	}

	public String getSenderId() {
		return senderId;
	}

	public void setSenderId(String senderId) {
		this.senderId = senderId;
	}

	public String getSenderName() {
		return senderName;
	}

	public void setSenderName(String senderName) {
		this.senderName = senderName;
	}

}
