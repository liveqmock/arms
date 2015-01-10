package com.chiefmech.arms.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.common.util.Constants;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Controller()
@Scope("prototype")
public class LogoutAction extends BaseActionSupport {

	@Action(value = "logout")
	public String logout() {
		HttpSession session = servletRequest.getSession(false);
		if (session != null) {
			session.removeAttribute(Constants.KEY_USER_SESSION);
		}
		// 跳转到登录页面
		return "userLogin";
	}

}
