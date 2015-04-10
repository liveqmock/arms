package com.chiefmech.arms.common.util;

import java.util.Map;

import org.apache.http.HttpEntity;
import org.apache.http.util.EntityUtils;

public class HttpUtil {
	private static FetchURL fetchURL = new FetchURL();

	public static HttpEntity doGet(String url) {
		return fetchURL.fetch(url);
	}

	public static HttpEntity doPost(String url, Map<String, String> maps) {
		fetchURL.setPostData(maps);
		return fetchURL.fetch(url);
	}

	public static String getHttpEntityString(HttpEntity httpEntity) {
		String result = "";
		if (httpEntity != null) {
			try {
				result = EntityUtils.toString(httpEntity);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public static byte[] getHttpEntityByteArray(HttpEntity httpEntity) {
		byte[] result = null;
		if (httpEntity != null) {
			try {
				result = EntityUtils.toByteArray(httpEntity);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
}
