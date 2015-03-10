package com.chiefmech.arms.common.util;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.apache.log4j.Logger;

import com.chiefmech.arms.entity.Shop;
import com.chiefmech.arms.entity.User;

public class ConfigUtil {
	private static Logger logger = Logger.getLogger(ConfigUtil.class.getName());

	private static ConfigUtil instance = new ConfigUtil();
	private Properties props = null;

	private User userInfo = null;
	private Shop shopInfo = null;

	private ConfigUtil() {
		initialize();
	}

	public static ConfigUtil getInstance() {
		return instance;
	}

	private void initialize() {
		if (props != null) {
			return;
		}

		props = new Properties();

		String profilepath = this.getClass().getClassLoader()
				.getResource("config.properties").getPath();
		InputStream is = null;
		try {
			is = new FileInputStream(profilepath);
			props.load(is);
			logger.debug("succed to load config file:" + profilepath);
		} catch (IOException e) {
			logger.error("failed to load config file:" + profilepath, e);
		} finally {
			if (is != null) {
				try {
					is.close();
				} catch (IOException ignore) {
				}
			}
		}
	}

	public String getStringProperty(String key) {
		return getStringProperty(key, null);
	}

	public String getStringProperty(String key, String def) {
		String val = props.getProperty(key, def);
		if (val == null) {
			val = def;
		} else {
			val = val.trim();
		}

		return val;
	}

	public User getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(User userInfo) {
		this.userInfo = userInfo;
	}

	public Shop getShopInfo() {
		return shopInfo;
	}

	public void setShopInfo(Shop shopInfo) {
		this.shopInfo = shopInfo;
	}

}
