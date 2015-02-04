package com.chiefmech.arms.action.index;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.Constants;
import com.chiefmech.arms.entity.SystemOwner;
import com.chiefmech.arms.service.SystemOwnerService;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Controller()
@Scope("prototype")
public class GroupSelfSetAction extends BaseActionSupport {
	
	

	@Resource()
	private SystemOwnerService systemOwnerService;

	private SystemOwner  systemOwner;

	@Action(value = "groupSelfSet", results = {@Result(name = "input", location = "groupSelfSet.jsp")})
	public String groupSelfSet() {
		SystemOwner user=	(SystemOwner)servletRequest.getSession().getAttribute(Constants.KEY_USER_SESSION);
	  String  id=user.getUserId();
		user=systemOwnerService.findSystemOwnerById(id);
		return INPUT;
	}

	public SystemOwner getSystemOwner() {
		return systemOwner;
	}

	public void setSystemOwner(SystemOwner systemOwner) {
		this.systemOwner = systemOwner;
	}


	
	
}
