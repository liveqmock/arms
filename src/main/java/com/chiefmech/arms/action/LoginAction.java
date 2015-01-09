package com.chiefmech.arms.action;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.common.util.Constants;
import com.chiefmech.arms.entity.User;
import com.chiefmech.arms.service.UserService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@Controller()
@Scope("prototype")
public class LoginAction extends BaseActionSupport implements ModelDriven<User> {

	@Resource()
	private UserService userService;

	private User user = new User();

	private String message;
	private String goingToAction = "index/default";

	@Action(value = "login", results = {
			@Result(name = "success", type = "redirectAction", location = "${goingToAction}"),
			@Result(name = "login", location = "login.jsp") })
	public String login() {
		if (StringUtils.isBlank(user.getUserLoginName())
				|| StringUtils.isBlank(user.getPassword())) {
			// 跳转到登录页面
			return LOGIN;
		} else {
			User userInfo = userService.findUser(user);
			if (userInfo != null) {
				String sessionGoingToAction = (String) session
						.get(Constants.KEY_ACTION_GOING_TO);
				if (StringUtils.isNotBlank(sessionGoingToAction)) {
					goingToAction = sessionGoingToAction;
				}
				return SUCCESS;
			} else {
				message = "用户名或密码错误";
				return LOGIN;
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

	public String getMessage() {
		return message;
	}

	public String getGoingToURL() {
		return goingToAction;
	}

}
