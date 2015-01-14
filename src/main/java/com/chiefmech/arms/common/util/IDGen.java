package com.chiefmech.arms.common.util;

import java.util.UUID;

public class IDGen {

	public static String getUUID() {
		return UUID.randomUUID().toString().toLowerCase();
	}
}
