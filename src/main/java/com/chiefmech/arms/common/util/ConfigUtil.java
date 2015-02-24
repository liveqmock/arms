package com.chiefmech.arms.common.util;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import org.apache.log4j.Logger;

import com.chiefmech.arms.entity.SystemInfo;

public class ConfigUtil {
	private static Logger logger = Logger.getLogger(ConfigUtil.class.getName());

	private static ConfigUtil instance = new ConfigUtil();
	private Properties props = null;
	private SystemInfo systemInfo;

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

	public void initSystemInfo(String systemkey) {
		logger.info("try to update systemInfo:" + systemkey);
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(getStringProperty("portalUrl"));
			ResultSet rs = conn.createStatement().executeQuery(
					String.format(
							"select * from systeminfo where systemkey='%s'",
							systemkey));
			while (rs.next()) {
				systemInfo = new SystemInfo();
				systemInfo.setSystemkey(systemkey);
				systemInfo.setDb_host(rs.getString("db_host"));
				systemInfo.setDb_name(rs.getString("db_name"));
				systemInfo.setDb_username(rs.getString("db_username"));
				systemInfo.setDb_password(rs.getString("db_password"));
				systemInfo.setShopName(rs.getString("shopName"));
				systemInfo.setExpirydate(rs.getString("expirydate"));

				logger.info("succed to update systemInfo[new]:" + systemInfo);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

	public SystemInfo getSystemInfo() {
		return systemInfo;
	}
}
