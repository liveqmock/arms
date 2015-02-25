package com.chiefmech.arms.action.saleAfterDiscount;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.entity.Group;
import com.chiefmech.arms.service.GroupService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterDiscount")
@Controller()
@Scope("prototype")
public class GroupManageAction extends BaseActionSupport
		implements
			ModelDriven<Group> {
	@Resource()
	private GroupService groupService;

	private Group item = new Group();
	private int page = 1;
	private int rows = 10;

	@Action(value = "groupManage", results = {@Result(name = "input", location = "groupManage.jsp")})
	public String groupManage() {
		return INPUT;
	}

	@Action(value = "queryGroup")
	public void querygroup() {
		this.transmitJson(groupService.getGroupEasyUiJSon(item, page, rows));
	}

	@Action(value = "insertGroup")
	public void insertItem() {
		item.setGroupId(IDGen.getUUID());
		String jsonStr;
		if (groupService.isGroupNameExist(item)) {
			jsonStr = getJsonResponse(-1, "已有同名用户组");
		} else {
			int rowAffected = groupService.insertItem(item);
			jsonStr = getJsonResponse(rowAffected, "新增数据失败");
		}
		this.transmitJson(jsonStr);
	}

	@Action(value = "updateGroup")
	public void updateItem() {
		String jsonStr;
		if (groupService.isGroupNameExist(item)) {
			jsonStr = getJsonResponse(-1, "已有同名用户组");
		} else {
			int rowAffected = groupService.updateItem(item);
			jsonStr = getJsonResponse(rowAffected, "更新数据失败");
		}
		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteGroup")
	public void deleteItem() {
		String departId = item.getGroupId();
		int rowAffected = groupService.deleteItem(departId);
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
	public Group getModel() {
		return item;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}
}
