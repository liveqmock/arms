package com.chiefmech.arms.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class BaseActionSupport extends ActionSupport
		implements
			SessionAware,
			RequestAware,
			ServletResponseAware {

	protected Map<String, Object> session;
	protected Map<String, Object> request;
	protected HttpServletResponse response;
	protected String basePath;

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	@Override
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}

	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	public String getBasePath() {
		HttpServletRequest request = ServletActionContext.getRequest();
		return new StringBuffer(request.getScheme()).append("://")
				.append(request.getServerName()).append(":")
				.append(request.getServerPort())
				.append(request.getContextPath()).append("/").toString();
	}

}
