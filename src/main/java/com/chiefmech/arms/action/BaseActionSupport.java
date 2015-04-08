package com.chiefmech.arms.action;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.chiefmech.arms.common.util.Constants;
import com.chiefmech.arms.common.util.SessionUtil;
import com.chiefmech.arms.entity.Shop;
import com.chiefmech.arms.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class BaseActionSupport extends ActionSupport
		implements
			SessionAware,
			RequestAware,
			ServletResponseAware,
			ServletRequestAware {
	private static Logger logger = Logger.getLogger(BaseActionSupport.class
			.getName());

	protected Map<String, Object> session;
	protected Map<String, Object> request;
	protected HttpServletResponse servletResponse;
	protected HttpServletRequest servletRequest;
	protected String basePath;

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
		SessionUtil.setSession(session);
	}

	@Override
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}

	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.servletResponse = response;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.servletRequest = request;
		basePath = new StringBuffer(request.getScheme()).append("://")
				.append(request.getServerName()).append(":")
				.append(request.getServerPort())
				.append(request.getContextPath()).toString();
	}

	public String getBasePath() {
		return basePath;
	}

	public User getUser() {
		return (User) session.get(Constants.KEY_USER_SESSION);
	}

	public Shop getShop() {
		return (Shop) session.get(Constants.KEY_SHOP_SESSION);
	}

	public String getActionName() {
		return ActionContext.getContext().getActionInvocation().getProxy()
				.getActionName();
	}

	protected void transmitXML(String xmlStr) {
		transmitText(xmlStr, "application/xml");
	}

	protected void transmitPlainText(String plainText) {
		transmitText(plainText, "text/plain");
	}

	protected void transmitJson(String jsonStr) {
		transmitText(jsonStr, "application/json");
	}

	private void transmitText(String text, String contentType) {
		logger.debug("transmitText:\n" + text);
		servletResponse.setContentType(String.format("%s;charset=utf-8",
				contentType));
		servletResponse.setHeader("Cache-control", "no-cache");
		servletResponse.setHeader("pragma", "no-cache");

		PrintWriter out;
		try {
			out = servletResponse.getWriter();
			out.write(text);
			out.flush();
			out.close();
		} catch (IOException e) {
			logger.fatal("IOException when output ajax data", e);
		}
	}

	protected void transmitImage(byte[] picBytes, String formatName) {
		logger.debug("transmitImage formatName:" + formatName);

		servletResponse.setContentType("image/jpeg");
		servletResponse.setHeader("Cache-control", "no-cache");
		servletResponse.setHeader("pragma", "no-cache");

		try {
			InputStream inputStream = new ByteArrayInputStream(picBytes);
			BufferedImage bi = ImageIO.read(inputStream);
			ImageIO.write(bi, "JPEG", servletResponse.getOutputStream());
		} catch (IOException e) {
			logger.fatal("IOException when output image", e);
		}
	}

	protected String getCrudJsonResponse(int rowAffected, String info) {
		String jsonStr = String.format("{\"status\":\"ok\", \"info\":\"%s\"}",
				info);
		if (rowAffected < 1) {
			jsonStr = String.format("{\"errorMsg\":\"%s数据失败\"}", info);
		}

		return jsonStr;
	}

}
