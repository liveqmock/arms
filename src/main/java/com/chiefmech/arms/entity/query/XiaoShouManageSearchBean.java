package com.chiefmech.arms.entity.query;

import com.chiefmech.arms.entity.query.Criteria.Action;

public class XiaoShouManageSearchBean extends SearchBean {
	private String xiaoshouDate;
	private String xiaoshouDateEnd;
	private String xiaoshouID;
	private String kehuMing;
	private String danjuState;
	private int page = 1;
	private int rows = 20;

	public String getXiaoshouDate() {
		return xiaoshouDate;
	}

	public void setXiaoshouDate(String xiaoshouDate) {
		this.xiaoshouDate = xiaoshouDate;
	}

	public String getXiaoshouDateEnd() {
		return xiaoshouDateEnd;
	}

	public void setXiaoshouDateEnd(String xiaoshouDateEnd) {
		this.xiaoshouDateEnd = xiaoshouDateEnd;
	}

	public String getXiaoshouID() {
		return xiaoshouID;
	}

	public void setXiaoshouID(String xiaoshouID) {
		this.xiaoshouID = xiaoshouID;
	}

	public String getKehuMing() {
		return kehuMing;
	}

	public void setKehuMing(String kehuMing) {
		this.kehuMing = kehuMing;
	}

	public String getDanjuState() {
		return danjuState;
	}

	public void setDanjuState(String danjuState) {
		this.danjuState = danjuState;
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
		this.addField(new Criteria(Action.STR_BETWEEN, "xiaoshouDate",
				xiaoshouDate, xiaoshouDateEnd));
		this.addField(new Criteria(Action.LIKE, "xiaoshouID", xiaoshouID));
		this.addField(new Criteria(Action.LIKE, "kehuMing", kehuMing));
		this.addField(new Criteria(Action.LIKE, "danjuState", danjuState));
		this.addLimitInfo(this.getPage(), this.getRows());
	}

}
