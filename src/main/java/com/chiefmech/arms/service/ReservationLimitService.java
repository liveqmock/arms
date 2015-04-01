package com.chiefmech.arms.service;

import com.chiefmech.arms.entity.ReservationLimit;
import com.chiefmech.arms.entity.query.ReservationLimitSearchBean;

public interface ReservationLimitService {

	public int insertItem(ReservationLimit item);

	public int updateItem(ReservationLimit item);

	public int deleteItem(String id);

	public String getParamEasyUiJSon(ReservationLimitSearchBean query);

	String getDefaultReservationListEasyUiJSon();

	public int updateDefaultReservationLimit(ReservationLimit item);
}
