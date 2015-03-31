package com.chiefmech.arms.action.saleAfterDiscount;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.ConfigUtil;
import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.entity.User;
import com.chiefmech.arms.service.UserService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterDiscount")
@Controller()
@Scope("prototype")
public class UserManageAction extends BaseActionSupport
		implements
			ModelDriven<User> {
	@Resource()
	private UserService userService;

	private User item = new User();
	private int page = 1;
	private int rows = 10;

	@Action(value = "userManage", results = {@Result(name = "input", location = "userManage.jsp")})
	public String userManage() {
		return INPUT;
	}

	@Action(value = "queryUser")
	public void queryUser() {
		this.transmitJson(userService.getUserEasyUiJSon(item, page, rows));
	}

	@Action(value = "insertUser")
	public void insertItem() {
		item.setUserId(IDGen.getUUID());
		String jsonStr;
		if (userService.isLoginNameExist(item)) {
			jsonStr = getJsonResponse(-1, "已有同名的登录账号");
		} else {
			if (StringUtils.isBlank(item.getShopCode())) {
				item.setShopCode(this.getShop().getShopCode());
			}
			int rowAffected = userService.insertItem(item);
			jsonStr = getJsonResponse(rowAffected, "新增数据失败");
		}
		this.transmitJson(jsonStr);
	}

	@Action(value = "updateUser")
	public void updateItem() {
		String jsonStr;
		if (userService.isLoginNameExist(item)) {
			jsonStr = getJsonResponse(-1, "已有同名的登录账号");
		} else {
			int rowAffected = userService.updateItem(item);
			jsonStr = getJsonResponse(rowAffected, "更新数据失败");
		}

		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteUser")
	public void deleteUser() {
		String userId = item.getUserId();
		int rowAffected = userService.deleteItem(userId);
		String jsonStr = getJsonResponse(rowAffected, "删除数据失败");
		this.transmitJson(jsonStr);
	}

	private String getJsonResponse(int rowAffected, String action) {
		String jsonStr = "{\"status\":\"ok\"}";
		if (rowAffected != 1) {
			jsonStr = String.format("{\"errorMsg\":\"%s\"}", action);
		}

		return jsonStr;
	}

	@Override
	public User getModel() {
		return item;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}
}
