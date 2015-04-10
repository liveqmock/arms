package com.chiefmech.arms.common.util;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.ParseException;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpOptions;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.client.methods.HttpTrace;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.apache.log4j.Logger;

public class FetchURL {
	private static final String GET = "GET";
	private static final String POST = "POST";
	private static final String DELETE = "DELETE";
	private static final String PUT = "PUT";
	private static final String HEAD = "HEAD";
	private static final String OPTIONS = "OPTIONS";
	private static final String TRACE = "TRACE";
	private static final int MAX_REDIRECT_NUM = 5;
	private static Logger logger = Logger.getLogger(FetchURL.class.getName());
	private String method = GET;

	private final HttpClient httpclient;
	private HttpRequestBase http;
	private final Map<String, String> headers = new HashMap<String, String>();
	private final Map<String, ArrayList<String>> reduplicateHeaders = new HashMap<String, ArrayList<String>>();
	private final Set<String> forbidHead = new HashSet<String>();
	private Map<String, String> addHttpHeaders = new HashMap<String, String>();
	private Map<String, ArrayList<String>> reduplicateAddHttpHeaders = new HashMap<String, ArrayList<String>>();
	private Map<String, String> postMap;
	private boolean isPost = false;

	private int httpStatusCode = 200;

	private String statusMsg = "";

	private boolean isAllowRedirect = true;

	private String body = "";

	private String characterEncode = "UTF-8";

	public FetchURL() {
		httpclient = wrapClient(new DefaultHttpClient());
		initForbidHeaders();
	}

	private void initForbidHeaders() {
		this.forbidHead.add("content-length");
		this.forbidHead.add("host");
		this.forbidHead.add("vary");
		this.forbidHead.add("via");
		this.forbidHead.add("x-forwarded-for");
		this.forbidHead.add("fetchUrl");
		this.forbidHead.add("timeStamp");
		this.forbidHead.add("allowTruncated");
		this.forbidHead.add("connectTimeout");
		this.forbidHead.add("sendTimeout");
		this.forbidHead.add("readTimeout");
	}

	private HttpRequestBase choiceHttpMethod(String method, String url) {
		String httpMethod = method.toUpperCase();
		if (GET.equals(httpMethod))
			return new HttpGet(url);
		if (POST.equals(httpMethod))
			return new HttpPost(url);
		if (DELETE.equals(httpMethod))
			return new HttpDelete(url);
		if (PUT.equals(httpMethod))
			return new HttpPut(url);
		if (HEAD.equals(httpMethod))
			return new HttpHead(url);
		if (OPTIONS.equals(httpMethod))
			return new HttpOptions(url);
		if (TRACE.equals(httpMethod)) {
			return new HttpTrace(url);
		}
		return new HttpGet(url);
	}

	private void genPostRequest(HttpRequestBase httpBase) {
		if ((httpBase instanceof HttpPost)) {
			try {
				HttpPost post = (HttpPost) httpBase;

				if (this.postMap != null) {
					List<BasicNameValuePair> nvps = new ArrayList<BasicNameValuePair>();
					Iterator<Entry<String, String>> iter = this.postMap
							.entrySet().iterator();
					while (iter.hasNext()) {
						Entry<String, String> entry = iter.next();
						String name = entry.getKey();
						String value = entry.getValue();
						nvps.add(new BasicNameValuePair(name, value));
					}
					if ((null == this.characterEncode)
							|| ("".equals(this.characterEncode))) {
						this.characterEncode = "UTF-8";
					}
					post.setEntity(new UrlEncodedFormEntity(nvps,
							this.characterEncode));
				}

			} catch (UnsupportedEncodingException e) {
				logger.error("gen post request header failure.", e);
			}
		} else {
			logger.error("current http method not post!");
		}
	}

	private void parseResponseStatus(HttpResponse response) {
		StatusLine line = response.getStatusLine();
		int statusCode = line.getStatusCode();
		String reasonPhrase = line.getReasonPhrase();
		this.httpStatusCode = statusCode;
		this.statusMsg = reasonPhrase;
	}

	private void debugRequestHeader(HttpRequestBase http) {
		logger.debug(new StringBuilder().append("request url = ")
				.append(http.getRequestLine().getUri()).toString());
		logger.debug(new StringBuilder().append("request method = ")
				.append(http.getRequestLine().getMethod()).toString());
		logger.debug(new StringBuilder().append("request http version = ")
				.append(http.getRequestLine().getProtocolVersion()).toString());
		Header[] headers = http.getAllHeaders();
		logger.debug("request headers:");
		for (Header h : headers) {
			logger.debug(new StringBuilder().append(h.getName()).append(" : ")
					.append(h.getValue()).toString());
		}
	}

	private void debugPostData(HttpEntity entity) {
		try {
			logger.debug(EntityUtils.toString(entity));
		} catch (ParseException e) {
			logger.error("debug failure", e);
		} catch (IOException e) {
			logger.error("debug failure", e);
		}
	}

	private HttpEntity reFetch(String redirectUrl) {
		try {
			boolean isRedirect = true;
			HttpResponse response = null;
			for (int i = 0; (i < MAX_REDIRECT_NUM) && (isRedirect); i++) {
				HttpGet get = new HttpGet(redirectUrl);
				genHttpHeader(get, redirectUrl);

				if (logger.isDebugEnabled()) {
					debugRequestHeader(get);
				}
				response = new DefaultHttpClient().execute(get);
				Header[] responseHeaders = response.getAllHeaders();
				if (logger.isDebugEnabled()) {
					for (Header h : responseHeaders) {
						logger.debug(new StringBuilder().append(h.getName())
								.append(":").append(h.getValue()).toString());
					}
				}
				for (Header h : responseHeaders) {
					if ("Location".equals(h.getName())) {
						redirectUrl = h.getValue();
					} else {
						isRedirect = false;
						break;
					}
				}
			}
			if (response != null) {
				Header[] responseHeaders = response.getAllHeaders();
				this.headers.clear();
				for (Header h : responseHeaders) {
					if (this.headers.containsKey(h.getName())) {
						ArrayList<String> list = this.reduplicateHeaders.get(h
								.getName());
						if (list == null) {
							list = new ArrayList<String>();
							String v = this.headers.get(h.getName());
							list.add(v);
						}
						list.add(h.getValue());
						this.reduplicateHeaders.put(h.getName(), list);

						this.headers.put(h.getName(), null);
					} else {
						this.headers.put(h.getName(), h.getValue());
					}
				}
			}
			parseResponseStatus(response);
			HttpEntity entity = response.getEntity();

			if (logger.isDebugEnabled()) {
				debugPostData(entity);
			}
			return entity;
		} catch (ClientProtocolException e) {
			logger.error("refetch failure.", e);
		} catch (IOException e) {
			logger.error("refetch failure.", e);
		}
		return null;
	}

	private void genAddHttpHeader(HttpRequestBase http) {
		Iterator<Entry<String, String>> iter = this.addHttpHeaders.entrySet()
				.iterator();
		while (iter.hasNext()) {
			Entry<String, String> entry = iter.next();
			String name = entry.getKey();
			String value = entry.getValue();
			if (value != null) {
				http.setHeader(name, value);
			}

		}

		Iterator<Entry<String, ArrayList<String>>> iter2 = this.reduplicateAddHttpHeaders
				.entrySet().iterator();
		while (iter2.hasNext()) {
			Entry<String, ArrayList<String>> entry = iter2.next();
			String name = entry.getKey();
			ArrayList<String> values = entry.getValue();
			for (String value : values) {
				http.setHeader(name, value);
			}
		}
	}

	private String checkProtocol(String url) {
		try {
			if (url == null) {
				throw new RuntimeException("url is null");
			}
			String urlLowerCase = url.toLowerCase();
			if ((urlLowerCase.startsWith("http://"))
					|| (urlLowerCase.startsWith("https://"))) {
				return url;
			}
			return new StringBuilder().append("http://").append(url).toString();
		} catch (Exception e) {
		}
		return url;
	}

	public HttpEntity fetch(String url) {
		HttpEntity entity = null;
		logger.debug(url);
		try {
			url = checkProtocol(url);
			this.http = choiceHttpMethod(this.method, url);
			genHttpHeader(this.http, url);
			genAddHttpHeader(this.http);
			if (this.isPost) {
				genPostRequest(this.http);
			}

			if (logger.isDebugEnabled()) {
				debugRequestHeader(this.http);
			}

			HttpResponse response = this.httpclient.execute(this.http);
			parseResponseStatus(response);
			Header[] responseHeaders = response.getAllHeaders();
			for (Header h : responseHeaders) {
				if (this.headers.containsKey(h.getName())) {
					ArrayList<String> list = this.reduplicateHeaders.get(h
							.getName());
					if (list == null) {
						list = new ArrayList<String>();
						String v = (String) this.headers.get(h.getName());
						list.add(v);
					}
					list.add(h.getValue());
					this.reduplicateHeaders.put(h.getName(), list);

					this.headers.put(h.getName(), null);
				} else {
					this.headers.put(h.getName(), h.getValue());
				}
				if (logger.isDebugEnabled()) {
					logger.debug(new StringBuilder().append(h.getName())
							.append(":").append(h.getValue()).toString());
				}
			}

			if (this.isAllowRedirect) {
				String location = this.headers.get("Location");
				if ((null != location) && (!"".equals(location))) {
					entity = reFetch(location);
				} else {
					entity = response.getEntity();
				}
			} else {
				entity = response.getEntity();
			}
			logger.debug("ContentCharSet:"
					+ EntityUtils.getContentCharSet(entity));
		} catch (ParseException e) {
			logger.error("fetch failure.", e);
		} catch (IOException e) {
			logger.error("fetch failure.", e);
		}
		return entity;
	}

	private void genHttpHeader(HttpRequestBase http, String url) {
		String timeStamp = Long.toString(System.currentTimeMillis() / 1000L);
		http.setHeader("TimeStamp", timeStamp);
		http.setHeader("User-Agent",
				"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0");
	}
	public void setMethod(String method) {
		this.method = method;
	}

	public void setCookie(String name, String value) {
		String cookieValue = new StringBuilder().append(name).append("=")
				.append(value).append(";").toString();
		if (!this.addHttpHeaders.containsKey(name)) {
			this.addHttpHeaders.put("Cookie", cookieValue);
		} else {
			ArrayList<String> values = this.reduplicateAddHttpHeaders.get(name);
			if (values == null) {
				values = new ArrayList<String>();
				String v = (String) this.addHttpHeaders.get("Cookie");
				values.add(v);
			}
			values.add(value);
			this.reduplicateAddHttpHeaders.put(name, values);
			this.addHttpHeaders.put(name, null);
		}
	}

	public void setCookies(Map<String, String> maps) {
		Iterator<Map.Entry<String, String>> iter = maps.entrySet().iterator();
		StringBuilder cookieResult = new StringBuilder();
		while (iter.hasNext()) {
			Entry<String, String> value = iter.next();
			String cookieName = (String) value.getKey();
			String cookieValue = (String) value.getValue();
			cookieResult.append(cookieName).append(":").append(cookieValue)
					.append(";");
		}

		if (cookieResult.length() > 0) {
			cookieResult.deleteCharAt(cookieResult.length() - 1);
		}
		setCookie("Cookie", cookieResult.toString());
	}

	public void setHeader(String name, String value) {
		String trimName = name.trim();
		if (!checkIsForbid(trimName))
			if (!this.addHttpHeaders.containsKey(name)) {
				this.addHttpHeaders.put(name, value);
			} else {
				ArrayList<String> values = this.reduplicateAddHttpHeaders
						.get(name);
				if (values == null) {
					values = new ArrayList<String>();
					String v = (String) this.addHttpHeaders.get(name);
					values.add(v);
				}
				values.add(value);
				this.reduplicateAddHttpHeaders.put(name, values);
				this.addHttpHeaders.put(name, null);
			}
	}

	private boolean checkIsForbid(String header) {
		String lowerCase = header.toLowerCase();
		boolean isForbid = this.forbidHead.contains(lowerCase);
		return isForbid;
	}

	public void setReadTimeout(int timeout) {
		this.addHttpHeaders.put("ReadTimeout", Integer.toString(timeout));
	}

	public void setSendTimeout(int timeout) {
		this.addHttpHeaders.put("HEAD_SENDTIMEOUT", Integer.toString(timeout));
	}

	public void setAllowTrunc(boolean allow) {
		this.addHttpHeaders.put("AllowTruncated", Boolean.toString(allow));
	}

	public void setAllowRedirect(boolean allow) {
		this.addHttpHeaders.put("redirect", Boolean.toString(allow));
		this.isAllowRedirect = allow;
	}

	public Map<String, String> responseHeaders() {
		HashMap<String, String> map = new HashMap<String, String>();
		Iterator<Entry<String, String>> iter = this.headers.entrySet()
				.iterator();
		while (iter.hasNext()) {
			Entry<String, String> entry = iter.next();
			if (entry.getValue() != null) {
				map.put(entry.getKey(), entry.getValue());
			}
		}
		return map;
	}

	public Map<String, ArrayList<String>> responseReduplicateHeaders() {
		return new HashMap<String, ArrayList<String>>(this.reduplicateHeaders);
	}

	@Deprecated
	public String responseCookies() {
		String value = (String) this.headers.get("Set-Cookie");
		if (value == null) {
			ArrayList<String> cookies = (ArrayList<String>) this.reduplicateHeaders
					.get("Set-Cookie");
			StringBuilder sb = new StringBuilder();
			for (String s : cookies) {
				sb.append(s).append('\t');
			}
			sb = sb.deleteCharAt(sb.length() - 1);
			return sb.toString();
		}
		return value;
	}

	public String[] responseCookieArray() {
		ArrayList<String> cookies = this.reduplicateHeaders.get("Set-Cookie");
		String[] arr = new String[cookies.size()];
		for (int i = 0; i < cookies.size(); i++) {
			arr[i] = cookies.get(i);
		}
		return arr;
	}

	public int getHttpCode() {
		return this.httpStatusCode;
	}

	public int getErrno() {
		return this.httpStatusCode;
	}

	public String getErrmsg() {
		return this.statusMsg;
	}

	public void clean() {
		this.headers.clear();
		this.reduplicateHeaders.clear();
		this.addHttpHeaders.clear();
		this.reduplicateAddHttpHeaders.clear();
		this.isPost = false;
		this.postMap.clear();
		this.httpStatusCode = 200;
	}

	public String body() {
		return this.body;
	}

	public void setPostData(Map<String, String> maps) {
		setPostData(maps, this.characterEncode);
	}

	public void setPostData(Map<String, String> maps, String characterEncode) {
		setMethod(POST);
		this.postMap = maps;
		this.isPost = true;
		this.characterEncode = characterEncode;
		if (logger.isDebugEnabled())
			logger.debug(new StringBuilder().append("post data:").append(maps)
					.toString());
	}

	private HttpClient wrapClient(HttpClient base) {
		try {
			SSLContext ctx = SSLContext.getInstance("TLS");
			X509TrustManager tm = new X509TrustManager() {
				public void checkClientTrusted(X509Certificate[] xcs,
						String string) throws CertificateException {
				}

				public void checkServerTrusted(X509Certificate[] xcs,
						String string) throws CertificateException {
				}

				public X509Certificate[] getAcceptedIssuers() {
					return null;
				}
			};
			ctx.init(null, new TrustManager[]{tm}, null);
			SSLSocketFactory ssf = new SSLSocketFactory(ctx);
			ssf.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
			ClientConnectionManager ccm = base.getConnectionManager();
			SchemeRegistry sr = ccm.getSchemeRegistry();
			sr.register(new Scheme("https", ssf, 443));
			return new DefaultHttpClient(ccm, base.getParams());
		} catch (Exception e) {
			logger.error("warp httpclient failure.", e);
		}
		return null;
	}
}