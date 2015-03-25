package com.chiefmech.arms.service;

import com.chiefmech.arms.entity.CustomerSort;

public interface CustomerSortService {

	public int insertItem(CustomerSort item);

	public int updateItem(CustomerSort item);

	public int deleteItem(String id);

	public String getCustomerSortLisEasyUiJSon();
}
