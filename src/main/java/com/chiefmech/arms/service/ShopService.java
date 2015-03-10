package com.chiefmech.arms.service;
import java.util.List;

import com.chiefmech.arms.entity.Shop;

public interface ShopService {
	public Shop findShopInfoByShopCode(String shopCode);

	public int insertItem(Shop item);

	public int updateItem(Shop item);

	public int deleteItem(String shopGuid);

	public String getShopEasyUiJSon(Shop query, int page, int rows);

	public List<Shop> selectItem();

}
