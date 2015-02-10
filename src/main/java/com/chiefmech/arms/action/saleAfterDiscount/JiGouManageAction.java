package com.chiefmech.arms.action.saleAfterDiscount;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.JiGou;
import com.chiefmech.arms.service.JiGouService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterDiscount")
@Controller()
@Scope("prototype")
public class JiGouManageAction extends BaseActionSupport
		implements
			ModelDriven<JiGou> {
	@Resource()
	private JiGouService jiGouService;
	private JiGou item = new JiGou();
	private int page = 1;
	private int rows = 10;

	@Action(value = "jiGouManage", results = {@Result(name = "input", location = "jigouManage.jsp")})
	public String jiGouManage() {
		return INPUT;
	}

	@Action(value = "queryJiGou")
	public void queryUnit() {
		this.transmitJson(jiGouService.getJiGouEasyUiJSon(item, page, rows));
	}

	@Action(value = "insertJiGou")
	public void insertItem() {
		int rowAffected = jiGouService.insertItem(item);
		String jsonStr = getJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateJiGou")
	public void updateItem() {
		int rowAffected = jiGouService.updateItem(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteJiGou")
	public void deleteItem() {
		String id = item.getJigouGuid();
		int rowAffected = jiGouService.deleteItem(id);
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
	public JiGou getModel() {
		return item;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

}
