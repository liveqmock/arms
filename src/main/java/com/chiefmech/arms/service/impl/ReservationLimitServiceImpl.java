package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.common.util.SessionUtil;
import com.chiefmech.arms.dao.ReservationLimitDao;
import com.chiefmech.arms.dao.ShopDao;
import com.chiefmech.arms.entity.ReservationLimit;
import com.chiefmech.arms.entity.query.ReservationLimitSearchBean;
import com.chiefmech.arms.service.ReservationLimitService;

@Service("reservationLimitService")
public class ReservationLimitServiceImpl implements ReservationLimitService {
	@Resource()
	private ReservationLimitDao reservationLimitDao;

	@Resource()
	private ShopDao shopDao;

	@Override
	public int insertItem(ReservationLimit item) {
		return reservationLimitDao.insertItem(item);
	}

	@Override
	public int updateItem(ReservationLimit item) {
		return reservationLimitDao.updateItem(item);
	}

	@Override
	public int deleteItem(String id) {
		return reservationLimitDao.deleteItem(id);
	}

	@Override
	public String getParamEasyUiJSon(ReservationLimitSearchBean query) {
		List<ReservationLimit> lst = reservationLimitDao
				.getReservationLimitList(query);
		int total = reservationLimitDao.getReservationLimitListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public String getDefaultReservationListEasyUiJSon() {
		List<ReservationLimit> lst = reservationLimitDao
				.getDefaultReservationList(SessionUtil.getShopInfo()
						.getCompanyFlag());

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}",
				lst.size(), lstJson);
		return jsonStr;
	}

	@Override
	public int updateDefaultReservationLimit(ReservationLimit item) {
		return reservationLimitDao.updateDefaultReservationLimit(item);
	}

}
