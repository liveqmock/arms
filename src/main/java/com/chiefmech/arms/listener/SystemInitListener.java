package com.chiefmech.arms.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.log4j.Logger;

import com.chiefmech.arms.common.util.ConfigUtil;

public class SystemInitListener implements ServletContextListener {
	private static Logger logger = Logger.getLogger(SystemInitListener.class
			.getName());

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {

	}

	@Override
	public void contextInitialized(ServletContextEvent contextEvent) {
		logger.info("SystemInitListener is invoked");

		ConfigUtil.getInstance().initSystemInfo(
				contextEvent.getServletContext().getContextPath().substring(1));
	}

}
