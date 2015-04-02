package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.common.util.SessionUtil;
import com.chiefmech.arms.dao.CustomerSortDao;
import com.chiefmech.arms.entity.CustomerSort;
import com.chiefmech.arms.service.CustomerSortService;

@Service("customerSortService")
public class CustomerSortServiceImpl implements CustomerSortService {

	@Resource()
	private CustomerSortDao customerSortDao;

	@Override
	public int insertItem(CustomerSort item) {
		return customerSortDao.insertItem(item);
	}

	@Override
	public int updateItem(CustomerSort item) {
		return customerSortDao.updateItem(item);
	}

	@Override
	public int deleteItem(String id) {
		return customerSortDao.deleteItem(id);
	}

	@Override
	public String getCustomerSortLisEasyUiJSon() {
		List<CustomerSort> lst = customerSortDao.selectAllItems(SessionUtil
				.getShopInfo().getShopCode());

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}",
				lst.size(), lstJson);
		return jsonStr;
	}

}
