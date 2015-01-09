package com.chiefmech.arms.action;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

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

	@Action(value = "login", results = {@Result(name = "success", location = "carInfo.jsp")})
	public String login() {
		User userInfo = userService.findUser(user);

		return SUCCESS;
	}

	@Override
	public User getModel() {
		return user;
	}

	public User getUser() {
		return user;
	}

}
