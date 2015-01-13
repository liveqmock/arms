package com.chiefmech.arms.common.log;

import org.apache.commons.lang.time.DateFormatUtils;

import com.p6spy.engine.common.P6Util;
import com.p6spy.engine.spy.appender.MessageFormattingStrategy;

public class P6spyLogFormat implements MessageFormattingStrategy {

	/**
	 * Formats a log message for the logging module
	 * 
	 * @param connectionId
	 *            the id of the connection
	 * @param now
	 *            the current ime expressing in milliseconds
	 * @param elapsed
	 *            the time in milliseconds that the operation took to complete
	 * @param category
	 *            the category of the operation
	 * @param prepared
	 *            the SQL statement with all bind variables replaced with actual
	 *            values
	 * @param sql
	 *            the sql statement executed
	 * @return the formatted log message
	 */
	@Override
	public String formatMessage(final int connectionId, final String now,
			final long elapsed, final String category, final String prepared,
			final String sql) {
		String timeFlag = "";
		if (elapsed < 500) {
			timeFlag = "none";
		} else if (elapsed < 1000) {
			timeFlag = "low";
		} else if (elapsed < 1500) {
			timeFlag = "normal";
		} else if (elapsed < 3000) {
			timeFlag = "high";
		} else if (elapsed < 5000) {
			timeFlag = "urgent";
		} else {
			timeFlag = "showstoper";
		}

		StringBuffer sb = new StringBuffer();
		sb.append(
				DateFormatUtils.format(Long.parseLong(now),
						"yyyy-MM-dd HH:mm:ss")).append("|")
				.append(String.format("elapsed:%5d", elapsed)).append("|")
				.append(timeFlag).append("|").append(category)
				.append("|connectionId:").append(connectionId).append("|")
				.append(P6Util.singleLine(prepared)).append("|")
				.append(P6Util.singleLine(sql));
		return sb.toString();
	}

}
