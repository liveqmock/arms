package com.chiefmech.arms.service;

import java.util.List;

import com.chiefmech.arms.entity.Supplier;
import com.chiefmech.arms.entity.option.OptionBean;

public interface SupplierService {

	public int insertItem(Supplier item);

	public int updateItem(Supplier item);

	public int deleteItem(String id);

	public String getSupplierEasyUiJSon(Supplier query, int page, int rows);

	public List<OptionBean> getAllOptionBean();
}
