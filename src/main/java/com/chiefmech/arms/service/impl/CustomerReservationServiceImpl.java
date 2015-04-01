package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.CustomerReservationDao;
import com.chiefmech.arms.dao.ReservationLimitDao;
import com.chiefmech.arms.dao.ShopDao;
import com.chiefmech.arms.entity.CustomerReservation;
import com.chiefmech.arms.entity.ReservationLimit;
import com.chiefmech.arms.entity.Shop;
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
	@Resource()
	private ReservationLimitDao reservationLimitDao;
	@Resource()
	private ShopDao shopDao;

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
		String existStatus = "no";
		String cheLiangId = "";
		if (lst.size() > 0) {
			existStatus = "yes";
			cheLiangId = lst.get(0).getTxtCheLiangId();
		}
		return String.format("{\"existFlag\":\"%s\",\"cheLiangId\":\"%s\"}",
				existStatus, cheLiangId);
	}

	@Override
	public String getReservationInfo(VCustomerReservation query) {
		String shopCode = query.getTxtShopCode();
		String txtReserveDate = query.getTxtReserveDate();

		Shop shop = shopDao.findShopInfoByShopCode(shopCode);
		ReservationLimit targetReservationLimit = reservationLimitDao
				.queryReservationLimit(shopCode, txtReserveDate);
		int reservationLimit = (targetReservationLimit == null) ? shop
				.getReservationLimit() : targetReservationLimit
				.getReservationLimit();
		int curReservation = customerReservationDao.getCurrentReservation(
				shopCode, txtReserveDate);
		String jsonStr = String
				.format("{\"shopCode\":\"%s\",\"reservationDate\":\"%s\",\"shopName\":\"%s\",\"reservationLimit\":\"%s\",\"curReservation\":\"%s\"}",
						shopCode, query.getTxtReserveDate(),
						shop.getShopName(), reservationLimit, curReservation);
		return jsonStr;
	}

	@Override
	public VCustomerReservation findItemById(String txtReserveGuid) {
		return customerReservationDao.findItemById(txtReserveGuid);
	}
}
