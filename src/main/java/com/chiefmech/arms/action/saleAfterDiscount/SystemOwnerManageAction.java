package com.chiefmech.arms.action.saleAfterDiscount;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.entity.DepartMent;
import com.chiefmech.arms.entity.JiGou;
import com.chiefmech.arms.entity.SystemOwner;
import com.chiefmech.arms.service.DepartMentService;
import com.chiefmech.arms.service.JiGouService;
import com.chiefmech.arms.service.SystemOwnerService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterDiscount")
@Controller()
@Scope("prototype")
public class SystemOwnerManageAction extends BaseActionSupport implements
		ModelDriven<SystemOwner> {
	@Resource()
	private SystemOwnerService systemOwnerService;

	@Resource()
	private JiGouService jiGouService;

	@Resource()
	private DepartMentService departMentService;

	private SystemOwner item = new SystemOwner();
	private List<JiGou> JiGouList;
	private List<DepartMent> DepartMentList;
	private int page = 1;
	private int rows = 10;

	@Action(value = "systemOwnerManage", results = { @Result(name = "input", location = "systemOwnerManage.jsp") })
	public String systemOwnerManage() {
		JiGouList = jiGouService.selectItem();
		DepartMentList = departMentService.selectItem();
		return INPUT;
	}

	@Action(value = "querySystemOwner")
	public void querySystemOwner() {
		this.transmitJson(systemOwnerService.getSystemOwnerEasyUiJSon(item,
				page, rows));
	}

	@Action(value = "systemOwnerSearch")
	public void systemOwnerSearch() {
		this.transmitJson(systemOwnerService.getSystemOwnerEasyUiJSon(item,
				page, rows));
	}

	@Action(value = "insertSystemOwner")
	public void insertItem() {
		item.setUserId(IDGen.getUUID());
		int rowAffected = systemOwnerService.insertItem(item);
		String jsonStr = getJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateSystemOwner")
	public void updateItem() {
		int rowAffected = systemOwnerService.updateItem(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteSystemOwner")
	public void deleteSystemOwner() {
		String userId = item.getUserId();
		int rowAffected = systemOwnerService.deleteItem(userId);
		String jsonStr = getJsonResponse(rowAffected, "删除");
		this.transmitJson(jsonStr);
	}

	private String getJsonResponse(int rowAffected, String action) {
		String jsonStr = "{\"status\":\"ok\"}";
		if (rowAffected != 1) {
			jsonStr = String.format("{\"errorMsg\":\"%s数据失败\"}", action);
		}

		return jsonStr;
	}

	@Override
	public SystemOwner getModel() {
		return item;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	public List<JiGou> getJiGouList() {
		return JiGouList;
	}

	public void setJiGouList(List<JiGou> jiGouList) {
		JiGouList = jiGouList;
	}

	public List<DepartMent> getDepartMentList() {
		return DepartMentList;
	}

	public void setDepartMentList(List<DepartMent> departMentList) {
		DepartMentList = departMentList;
	}
}
