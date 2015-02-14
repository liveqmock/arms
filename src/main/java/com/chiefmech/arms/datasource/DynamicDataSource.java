package com.chiefmech.arms.datasource;

import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

public class DynamicDataSource extends AbstractRoutingDataSource {

	private static String lookupKey;

	@Override
	protected Object determineCurrentLookupKey() {
		return lookupKey;
	}

	public static void setLookupKey(String lookupKey) {
		DynamicDataSource.lookupKey = lookupKey;
	}

}
