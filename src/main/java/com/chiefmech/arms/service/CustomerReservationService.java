package com.chiefmech.arms.service;

import com.chiefmech.arms.entity.CustomerReservation;
import com.chiefmech.arms.entity.query.CustomerReservationSearchBean;
import com.chiefmech.arms.entity.view.VCustomerReservation;

public interface CustomerReservationService {

	String getReservationListEasyUiJSon(CustomerReservationSearchBean query);

	int insertItem(CustomerReservation item);

	int updateItem(CustomerReservation item);

	int deleteItem(String id);

	String isChePaiHaoExist(String txtCheLiangChePaiHao);

	VCustomerReservation findItemById(String txtReserveGuid);
}
