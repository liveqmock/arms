package com.chiefmech.arms.entity.query;

import com.chiefmech.arms.common.util.ConfigUtil;
import com.chiefmech.arms.entity.query.Criteria.Action;

public class CustomerReservationSearchBean extends SearchBean {
	private String txtCheLiangChePaiHao;
	private String txtReserveDateBegin;
	private String txtReserveDateEnd;
	private String txtCallSort;
	private int page = 1;
	private int rows = 20;

	@Override
	public void initSearchFields() {
		this.addField(new Criteria(Action.DATE_BETWEEN, "txtReserveDate",
				txtReserveDateBegin, txtReserveDateEnd));
		this.addField(new Criteria(Action.LIKE, "txtCheLiangChePaiHao",
				txtCheLiangChePaiHao));
		this.addField(new Criteria(Action.LIKE, "txtCheLiangChePaiHao",
				txtCheLiangChePaiHao));
		this.addField(new Criteria(Action.LIKE, "txtCallSort", txtCallSort));
		this.addLimitInfo(this.getPage(), this.getRows());
		// 不能跨公司查看预约信息
		this.addField(new Criteria(Action.STR_EQUAL, "companyFlag", ConfigUtil
				.getInstance().getShopInfo().getCompanyFlag()));
		// 没有预约管理权限就只能查看自店预约信息
		if (!ConfigUtil.getInstance().getUserInfo().getPrivilegeLst()
				.contains("customerReservationManage")) {
			this.addField(new Criteria(Action.STR_EQUAL, "txtReserveShop",
					ConfigUtil.getInstance().getShopInfo().getShopName()));
		}
	}

	public String getTxtCallSort() {
		return txtCallSort;
	}

	public void setTxtCallSort(String txtCallSort) {
		this.txtCallSort = txtCallSort;
	}

	public String getTxtCheLiangChePaiHao() {
		return txtCheLiangChePaiHao;
	}

	public void setTxtCheLiangChePaiHao(String txtCheLiangChePaiHao) {
		this.txtCheLiangChePaiHao = txtCheLiangChePaiHao;
	}

	public String getTxtReserveDateBegin() {
		return txtReserveDateBegin;
	}

	public void setTxtReserveDateBegin(String txtReserveDateBegin) {
		this.txtReserveDateBegin = txtReserveDateBegin;
	}

	public String getTxtReserveDateEnd() {
		return txtReserveDateEnd;
	}

	public void setTxtReserveDateEnd(String txtReserveDateEnd) {
		this.txtReserveDateEnd = txtReserveDateEnd;
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
