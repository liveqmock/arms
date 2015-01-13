package com.chiefmech.arms.common.util;

import org.apache.commons.lang.time.DateFormatUtils;

public class DateUtil {

	private static final String FORMAT_DATETIME = "yyyy-MM-dd HH:mm:ss";
	private static final String FORMAT_DATE = "yyyy-MM-dd";
	private static final String FORMAT_TIME = "HH:mm:ss";

	public static String getCurrentDateTime() {
		return DateFormatUtils.format(System.currentTimeMillis(),
				FORMAT_DATETIME);
	}

	public static String getCurrentDate() {
		return DateFormatUtils.format(System.currentTimeMillis(), FORMAT_DATE);
	}

	public static String getCurrentTime() {
		return DateFormatUtils.format(System.currentTimeMillis(), FORMAT_TIME);
	}
}
