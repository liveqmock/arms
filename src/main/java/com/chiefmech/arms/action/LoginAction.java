package com.chiefmech.arms.action;

import java.sql.Date;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.common.util.ConfigUtil;
import com.chiefmech.arms.common.util.Constants;
import com.chiefmech.arms.entity.SystemInfo;
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
			@Result(name = "input", location = "login.jsp")})
	public String login() {
		this.clearFieldErrors();
		if (StringUtils.isBlank(user.getLoginName())
				|| StringUtils.isBlank(user.getPassword())) {
			// 跳转到登录页面
			return INPUT;
		} else {
			String error_msg = "";
			User userInfo = null;

			// 更新系统信息
			ConfigUtil.getInstance().initSystemInfo(
					this.servletRequest.getContextPath().substring(1));

			SystemInfo systemInfo = ConfigUtil.getInstance().getSystemInfo();
			String sysExpirydate = systemInfo.getExpirydate();
			if (Date.valueOf(sysExpirydate).before(
					new Date(System.currentTimeMillis()))) {
				error_msg = "亲，系統已超过使用期，请联系管理员！";
			} else {
				userInfo = userService.findUserByLoginName(user.getLoginName());
				if (userInfo != null) {
					if (!user.getPassword().equals(userInfo.getPassword())) {
						error_msg = "亲，密码错误！";
					} else if (Date.valueOf(userInfo.getExpirydate()).before(
							new Date(System.currentTimeMillis()))) {
						error_msg = "亲，账号已超过使用期，请联系管理员！";
					}
				} else {
					error_msg = String.format("亲，用户名%s不存在！",
							user.getLoginName());
				}
			}
			if (error_msg.length() > 0) {
				this.addFieldError("message_login_failed", error_msg);
				return INPUT;
			} else {
				userInfo.setShopName(systemInfo.getShopName());
				userInfo.setShopAdd(systemInfo.getShopAdd());
				userInfo.setShopTel(systemInfo.getShopTel());
				servletRequest.getSession().setAttribute(
						Constants.KEY_USER_SESSION, userInfo);
				return SUCCESS;
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
