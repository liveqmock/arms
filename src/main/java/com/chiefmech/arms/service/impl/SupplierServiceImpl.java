package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.SupplierDao;
import com.chiefmech.arms.entity.Supplier;
import com.chiefmech.arms.entity.option.OptionBean;
import com.chiefmech.arms.service.SupplierService;

@Service("supplierService")
public class SupplierServiceImpl implements SupplierService {
	@Resource()
	private SupplierDao supplierDao;

	@Override
	public int insertItem(Supplier item) {
		return supplierDao.insertItem(item);
	}

	@Override
	public int updateItem(Supplier item) {
		return supplierDao.updateItem(item);
	}

	@Override
	public int deleteItem(String id) {
		return supplierDao.deleteItem(id);
	}

	@Override
	public String getSupplierEasyUiJSon(Supplier query, int page, int rows) {
		List<Supplier> lst = supplierDao.getSupplierList(query, page, rows);
		int total = supplierDao.getSupplierListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public List<OptionBean> getAllOptionBean() {
		return supplierDao.getAllOptionBean();
	}

}
