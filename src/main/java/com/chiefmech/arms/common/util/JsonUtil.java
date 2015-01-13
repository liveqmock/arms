package com.chiefmech.arms.common.util;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class JsonUtil {

	public static String getJsonText(Object obj) {
		String jsonText = "{}";
		if (obj.getClass().isArray()) {
			jsonText = JSONArray.fromObject(obj).toString();
		} else {
			jsonText = JSONObject.fromObject(obj).toString();
		}
		return jsonText;
	}
}
