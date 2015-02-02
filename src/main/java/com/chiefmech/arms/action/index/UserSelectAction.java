package com.chiefmech.arms.action.index;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.Constants;
import com.chiefmech.arms.entity.DepartMent;
import com.chiefmech.arms.entity.JiGou;
import com.chiefmech.arms.entity.SystemOwner;
import com.chiefmech.arms.entity.User;
import com.chiefmech.arms.service.DepartMentService;
import com.chiefmech.arms.service.JiGouService;
import com.chiefmech.arms.service.SystemOwnerService;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Controller()
@Scope("prototype")
public class UserSelectAction extends BaseActionSupport {

	@Resource()
	private JiGouService jiGouService;
	
	@Resource()
	private DepartMentService departMentService;
	
	@Resource()
	private SystemOwnerService systemOwnerService;
	
	List<JiGou> jigouList;
	List<DepartMent> departMentList;
	List<SystemOwner> systemOwnerList;
	private String userId;

	@Action(value = "userSelect", results = { @Result(name = "input", location = "userSelect.jsp") })
	public String userSelect() {
		jigouList = jiGouService.selectItem();
		departMentList=departMentService.selectItem();
		systemOwnerList=systemOwnerService.selectItem();
		User user=	(User)servletRequest.getSession().getAttribute(Constants.KEY_USER_SESSION);
	    userId=user.getUserId();
		return INPUT;
	}

	public List<JiGou> getJigouList() {
		return jigouList;
	}

	public void setJigouList(List<JiGou> jigouList) {
		this.jigouList = jigouList;
	}

	public List<DepartMent> getDepartMentList() {
		return departMentList;
	}

	public void setDepartMentList(List<DepartMent> departMentList) {
		this.departMentList = departMentList;
	}

	public List<SystemOwner> getSystemOwnerList() {
		return systemOwnerList;
	}

	public void setSystemOwnerList(List<SystemOwner> systemOwnerList) {
		this.systemOwnerList = systemOwnerList;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserId() {
		return userId;
	}
}
