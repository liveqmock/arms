package com.chiefmech.arms.action.index;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.Constants;
import com.chiefmech.arms.entity.User;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Controller()
@Scope("prototype")
public class HomePageAction extends BaseActionSupport {

	private User user;

	@Action(value = "default", results = { @Result(name = "success", location = "default.jsp") })
	public String homePage() {
		user = (User) session.get(Constants.KEY_USER_SESSION);
		return SUCCESS;
	}

	public User getUser() {
		return user;
	}

}
