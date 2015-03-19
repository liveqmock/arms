package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.CustomerReservationDao;
import com.chiefmech.arms.entity.CustomerReservation;
import com.chiefmech.arms.entity.query.CustomerReservationSearchBean;
import com.chiefmech.arms.entity.view.VCustomerReservation;
import com.chiefmech.arms.entity.view.VKeHuCheLiang;
import com.chiefmech.arms.service.CustomerReservationService;

@Service("customerReservationService")
public class CustomerReservationServiceImpl
		implements
			CustomerReservationService {
	@Resource()
	private CustomerReservationDao customerReservationDao;

	@Override
	public String getReservationListEasyUiJSon(
			CustomerReservationSearchBean query) {
		List<VCustomerReservation> lst = customerReservationDao
				.getReservationList(query);
		int total = customerReservationDao.getReservationListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public int insertItem(CustomerReservation item) {
		return customerReservationDao.insertItem(item);
	}

	@Override
	public int updateItem(CustomerReservation item) {
		return customerReservationDao.updateItem(item);
	}

	@Override
	public int deleteItem(String id) {
		return customerReservationDao.deleteItem(id);
	}

	@Override
	public String isChePaiHaoExist(String txtCheLiangChePaiHao) {
		List<VKeHuCheLiang> lst = customerReservationDao
				.getVKeHuCheLiangList(txtCheLiangChePaiHao);
		String existStatus = lst.size() > 0 ? "yes" : "no";
		return String.format("{\"existFlag\":\"%s\"}", existStatus);
	}
}
