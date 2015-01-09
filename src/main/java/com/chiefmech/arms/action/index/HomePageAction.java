package com.chiefmech.arms.action.index;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Controller()
@Scope("prototype")
public class HomePageAction extends BaseActionSupport {

	@Action(value = "default", results = { @Result(name = "success", location = "default.jsp") })
	public String homePage() {
		return SUCCESS;
	}

}
