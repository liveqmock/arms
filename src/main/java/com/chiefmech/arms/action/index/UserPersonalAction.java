package com.chiefmech.arms.action.index;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.UserPersonalInfo;
import com.chiefmech.arms.service.UserService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Controller()
@Scope("prototype")
public class UserPersonalAction extends BaseActionSupport
		implements
			ModelDriven<UserPersonalInfo> {

	@Resource()
	private UserService userService;

	private UserPersonalInfo personalInfo = new UserPersonalInfo();

	@Action(value = "userPersonalChange", results = {@Result(name = "input", location = "userPersonalChange.jsp")})
	public String userPersonalChange() {
		return INPUT;
	}

	@Action(value = "updateUserPersonalInfo")
	public void updateUserPersonalInfo() {
		String statusCode = userService.updateUserPersonalInfo(personalInfo);

		this.transmitJson(String.format("{\"statusCode\":\"%s\"}", statusCode));
	}

	@Override
	public UserPersonalInfo getModel() {
		return personalInfo;
	}

}
