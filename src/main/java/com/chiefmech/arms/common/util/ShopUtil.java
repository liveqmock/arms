package com.chiefmech.arms.common.util;

public class ShopUtil {
	public static String getShopName(String key) {
		String shopName = "八路通连锁店";
		if ("/arms".equals(key)) {
			shopName = "八路通深圳西乡店";
		} else if ("/arms1".equals(key)) {
			shopName = "八路通深圳罗芳店";
		}
		return shopName;
	}
}
