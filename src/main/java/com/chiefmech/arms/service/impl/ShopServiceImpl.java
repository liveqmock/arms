package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.dao.ShopDao;
import com.chiefmech.arms.entity.Shop;
import com.chiefmech.arms.service.ShopService;

@Service("shopService")
public class ShopServiceImpl implements ShopService {
	@Resource()
	private ShopDao shopDao;

	@Override
	public int insertItem(Shop item) {
		item.setShopGuid(IDGen.getUUID());
		return shopDao.insertItem(item);
	}

	@Override
	public int updateItem(Shop item) {
		return shopDao.updateItem(item);
	}

	@Override
	public int deleteItem(String shopGuid) {
		return shopDao.deleteItem(shopGuid);
	}

	@Override
	public String getShopEasyUiJSon(Shop query, int page, int rows) {
		List<Shop> lst = shopDao.getShopList(query, page, rows);
		int total = shopDao.getShopListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public List<Shop> selectItem() {
		return shopDao.selectItem();
	}

	@Override
	public Shop findShopInfoByShopCode(String shopCode) {
		return shopDao.findShopInfoByShopCode(shopCode);
	}

}
