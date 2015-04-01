package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.entity.query.ReservationLimitSearchBean;
import com.chiefmech.arms.entity.query.SearchBean;

public class ReservationLimitDaoSqlProvider {

	public String getReservationLimitList(Map<String, Object> param) {
		ReservationLimitSearchBean query = (ReservationLimitSearchBean) param
				.get("item");
		return String
				.format("select * from v_reservationlimit %s order by reservationDate %s",
						query.getWhereSql(), query.getLimitSql());
	}

	public String getReservationLimitListCount(Map<String, Object> param) {
		SearchBean query = (ReservationLimitSearchBean) param.get("item");

		return String.format("select count(*) from v_reservationlimit %s",
				query.getWhereSql());
	}
}
