package com.chiefmech.arms.entity.query;

import com.chiefmech.arms.common.util.SessionUtil;
import com.chiefmech.arms.common.util.DateUtil;
import com.chiefmech.arms.entity.query.Criteria.Action;

public class ReservationLimitSearchBean extends SearchBean {
	private String shopCode;
	private String reservationDateBegin;
	private String reservationDateEnd;
	private int page = 1;
	private int rows = 20;

	@Override
	public void initSearchFields() {
		this.addField(new Criteria(Action.DATE_LARGE_EQUAL, "reservationDate",
				DateUtil.getCurrentDate()));
		this.addField(new Criteria(Action.LIKE, "shopCode", shopCode));
		this.addLimitInfo(this.getPage(), this.getRows());
		this.addField(new Criteria(Action.DATE_BETWEEN, "reservationDate",
				reservationDateBegin, reservationDateEnd));
		// 不能跨公司查看预约信息
		this.addField(new Criteria(Action.STR_EQUAL, "companyFlag", SessionUtil
				.getShopInfo().getCompanyFlag()));
	}

	public String getShopCode() {
		return shopCode;
	}

	public void setShopCode(String shopCode) {
		this.shopCode = shopCode;
	}

	public String getReservationDateBegin() {
		return reservationDateBegin;
	}

	public void setReservationDateBegin(String reservationDateBegin) {
		this.reservationDateBegin = reservationDateBegin;
	}

	public String getReservationDateEnd() {
		return reservationDateEnd;
	}

	public void setReservationDateEnd(String reservationDateEnd) {
		this.reservationDateEnd = reservationDateEnd;
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

}
