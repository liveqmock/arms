package com.chiefmech.arms.common.util;

import java.io.IOException;
import java.util.List;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;

public class HttpUtil {

	public static HttpEntity doGet(String url) {
		return doGet(url, 30);
	}
	public static HttpEntity doGet(String url, int timeOut) {
		HttpEntity httpEntity = null;
		// 创建HttpGet或HttpPost对象，将要请求的URL通过构造方法传入HttpGet或HttpPost对象。
		HttpGet httpRequst = new HttpGet(url);

		try {
			HttpParams httpParameters = new BasicHttpParams();
			/*
			 * HttpConnectionParams.setConnectionTimeout(httpParameters, timeOut
			 * * 1000);// 设置请求超时10秒
			 * HttpConnectionParams.setSoTimeout(httpParameters, timeOut *
			 * 1000); // 设置等待数据超时10秒
			 */HttpClient httpclient = new DefaultHttpClient(httpParameters); // 此时构造DefaultHttpClient时将参数传入
			// 使用DefaultHttpClient类的execute方法发送HTTP GET请求，并返回HttpResponse对象。
			HttpResponse httpResponse = httpclient.execute(httpRequst);// 其中HttpGet是HttpUriRequst的子类
			if (httpResponse.getStatusLine().getStatusCode() == 200) {
				httpEntity = httpResponse.getEntity();
			} else {
				httpRequst.abort();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return httpEntity;
	}

	public HttpEntity doPost(String url, List<NameValuePair> params) {
		return doPost(url, params);
	}
	public HttpEntity doPost(String url, List<NameValuePair> params, int timeOut) {
		HttpEntity httpEntity = null;
		HttpPost httpRequst = new HttpPost(url);// 创建HttpPost对象

		try {
			httpRequst.setEntity(new UrlEncodedFormEntity(params, HTTP.UTF_8));

			HttpParams httpParameters = new BasicHttpParams();
			HttpConnectionParams.setConnectionTimeout(httpParameters,
					timeOut * 1000);// 设置请求超时10秒
			HttpConnectionParams.setSoTimeout(httpParameters, timeOut * 1000); // 设置等待数据超时10秒
			HttpClient httpclient = new DefaultHttpClient(httpParameters); // 此时构造DefaultHttpClient时将参数传入
			HttpResponse httpResponse = httpclient.execute(httpRequst);
			if (httpResponse.getStatusLine().getStatusCode() == 200) {
				httpEntity = httpResponse.getEntity();
			} else {
				httpRequst.abort();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return httpEntity;
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
