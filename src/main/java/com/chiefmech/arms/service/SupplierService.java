package com.chiefmech.arms.service;

import com.chiefmech.arms.entity.Supplier;

public interface SupplierService {

	public int insertItem(Supplier item);

	public int updateItem(Supplier item);

	public int deleteItem(String id);

	public String getSupplierEasyUiJSon(Supplier query, int page, int rows);
}
