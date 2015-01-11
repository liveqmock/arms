package com.chiefmech.arms.action;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.common.util.Constants;
import com.chiefmech.arms.entity.User;
import com.chiefmech.arms.service.UserService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Controller()
@Scope("prototype")
public class LoginAction extends BaseActionSupport implements ModelDriven<User> {

	@Resource()
	private UserService userService;

	private User user = new User();

	@Action(value = "login", results = {
			@Result(name = "success", type = "redirectAction", location = "index/default"),
			@Result(name = "input", location = "login.jsp") })
	public String login() {
		this.clearFieldErrors();
		if (StringUtils.isBlank(user.getLoginName())
				|| StringUtils.isBlank(user.getPassword())) {
			// 跳转到登录页面
			return INPUT;
		} else {
			User userInfo = userService.findUser(user);
			if (userInfo != null) {
				servletRequest.getSession().setAttribute(
						Constants.KEY_USER_SESSION, userInfo);
				return SUCCESS;
			} else {
				this.addFieldError("error_username_password", "用户名或密码错误");
				return INPUT;
			}
		}
	}

	@Override
	public User getModel() {
		return user;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
