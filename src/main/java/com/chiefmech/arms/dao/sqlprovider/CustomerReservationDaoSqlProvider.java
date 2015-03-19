package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.entity.query.CustomerReservationSearchBean;

public class CustomerReservationDaoSqlProvider {

	public String getReservationList(Map<String, Object> param) {
		CustomerReservationSearchBean searchBean = (CustomerReservationSearchBean) param
				.get("item");

		return String.format("select * from v_customerreservation %s %s",
				searchBean.getWhereSql(), searchBean.getLimitSql());
	}

	public String getReservationListCount(Map<String, Object> param) {
		CustomerReservationSearchBean searchBean = (CustomerReservationSearchBean) param
				.get("item");
		return String.format("select count(*) from v_customerreservation  %s",
				searchBean.getWhereSql());
	}
}
