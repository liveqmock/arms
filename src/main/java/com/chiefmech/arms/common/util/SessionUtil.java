package com.chiefmech.arms.common.util;

import java.util.Map;

import com.chiefmech.arms.entity.Shop;
import com.chiefmech.arms.entity.User;

public class SessionUtil {
	private static Map<String, Object> session;

	public static Map<String, Object> getSession() {
		return session;
	}

	public static void setSession(Map<String, Object> session) {
		SessionUtil.session = session;
	}
	public static User getUserInfo() {
		return (User) session.get(Constants.KEY_USER_SESSION);
	}

	public static Shop getShopInfo() {
		return (Shop) session.get(Constants.KEY_SHOP_SESSION);
	}

}
