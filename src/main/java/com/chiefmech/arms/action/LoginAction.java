package com.chiefmech.arms.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
@Namespace("/")
@Controller()
@Scope("prototype")
public class LoginAction extends ActionSupport {

	private String message;

	@Action(value = "login", results = {@Result(name = "success", location = "login.jsp")})
	public String login() {
		// http://www.cnblogs.com/yjmyzz/p/3888507.html
		return SUCCESS;
	}

	@Action(value = "admin", results = {@Result(name = "success", location = "admin.jsp")})
	public String admin() {
		return SUCCESS;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}