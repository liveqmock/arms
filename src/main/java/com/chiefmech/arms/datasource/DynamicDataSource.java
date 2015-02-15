package com.chiefmech.arms.datasource;

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.log4j.Logger;

import com.chiefmech.arms.common.util.ConfigUtil;
import com.chiefmech.arms.entity.SystemInfo;

public class DynamicDataSource extends BasicDataSource {
	private static Logger logger = Logger.getLogger(DynamicDataSource.class
			.getName());

	public DynamicDataSource() {
		SystemInfo systemInfo = ConfigUtil.getInstance().getSystemInfo();
		if (systemInfo == null) {
			logger.fatal("不应该存在这种情况。。。");
		} else {
			this.url = String.format(
					"jdbc:mysql://%s:3306/%s?characterEncoding=UTF-8",
					systemInfo.getDb_host(), systemInfo.getDb_name());
			this.username = systemInfo.getDb_username();
			this.password = systemInfo.getDb_password();
		}
	}

}
