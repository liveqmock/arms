package com.chiefmech.arms.common.util;

import java.util.Date;

import org.apache.commons.lang.time.DateFormatUtils;
import org.apache.commons.lang.time.DateUtils;

public class DateUtil {

	private static final String FORMAT_DATETIME = "yyyy-MM-dd HH:mm:ss";
	private static final String FORMAT_DATE = "yyyy-MM-dd";
	private static final String FORMAT_DATE_ID = "yyyyMMdd";
	private static final String FORMAT_TIME = "HH:mm:ss";

	public static String getCurrentDateTime() {
		return DateFormatUtils.format(System.currentTimeMillis(),
				FORMAT_DATETIME);
	}

	public static String getCurrentDate() {
		return DateFormatUtils.format(System.currentTimeMillis(), FORMAT_DATE);
	}

	public static String getCurrentDateID() {
		return DateFormatUtils.format(System.currentTimeMillis(),
				FORMAT_DATE_ID);
	}

	public static String getCurrentTime() {
		return DateFormatUtils.format(System.currentTimeMillis(), FORMAT_TIME);
	}

	public static String getNewRuChangDate() {
		return DateFormatUtils.format(DateUtils.addMonths(new Date(), 3)
				.getTime(), FORMAT_DATE);
	}

	public static String getDateSinceToday(int deltDay) {
		return DateFormatUtils.format(DateUtils.addDays(new Date(), deltDay)
				.getTime(), FORMAT_DATE);
	}

	public static String getDateTimeSinceNow(int deltMillisecond) {
		return DateFormatUtils.format(
				DateUtils.addMilliseconds(new Date(), deltMillisecond)
						.getTime(), FORMAT_DATETIME);
	}

}
