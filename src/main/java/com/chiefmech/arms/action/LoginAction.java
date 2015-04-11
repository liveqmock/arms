package com.chiefmech.arms.action;

import java.sql.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.common.util.Constants;
import com.chiefmech.arms.entity.Shop;
import com.chiefmech.arms.entity.User;
import com.chiefmech.arms.service.ShopService;
import com.chiefmech.arms.service.UserService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Controller()
@Scope("prototype")
public class LoginAction extends BaseActionSupport implements ModelDriven<User> {

	@Resource()
	private UserService userService;

	@Resource()
	private ShopService shopService;

	private User user = new User();

	@Action(value = "login", results = {@Result(name = "input", location = "login.jsp")})
	public String login() {
		return INPUT;
	}

	@Action(value = "accessCheck")
	public void accessCheck() {
		String error_msg = "";
		if (StringUtils.isBlank(user.getLoginName())
				|| StringUtils.isBlank(user.getPassword())) {
			error_msg = "用户名和密码都不能为空";
		} else {
			User userInfo = userService
					.findUserByLoginName(user.getLoginName());
			Shop shopInfo = null;
			if (userInfo != null) {
				shopInfo = shopService.findShopInfoByShopCode(userInfo
						.getShopCode());
				if (Date.valueOf(shopInfo.getExpirydate()).before(
						new Date(System.currentTimeMillis()))) {
					error_msg = "亲，系統已超过使用期，请联系管理员！";
				} else if (!user.getPassword().equals(userInfo.getPassword())) {
					error_msg = "亲，密码错误！";
				} else if (Date.valueOf(userInfo.getExpirydate()).before(
						new Date(System.currentTimeMillis()))) {
					error_msg = "亲，账号已超过使用期，请联系管理员！";
				} else {
					// 用户和系统信息都合法有效
				}
			} else {
				error_msg = String.format("亲，用户名%s不存在！", user.getLoginName());
			}
			if (error_msg.length() == 0) {
				List<String> privilegeLst = userService
						.getUserPrivilegeLst(userInfo.getUserId());
				userInfo.setPrivilegeLst(privilegeLst);
				servletRequest.getSession().setAttribute(
						Constants.KEY_USER_SESSION, userInfo);
				servletRequest.getSession().setAttribute(
						Constants.KEY_SHOP_SESSION, shopInfo);
			}
		}
		this.transmitJson(String.format("{\"errorMsg\":\"%s\"}", error_msg));
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
