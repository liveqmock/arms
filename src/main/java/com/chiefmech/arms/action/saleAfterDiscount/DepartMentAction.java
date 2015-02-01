package com.chiefmech.arms.action.saleAfterDiscount;

import javax.annotation.Resource;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.apache.struts2.convention.annotation.Result;
import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.entity.DepartMent;
import com.chiefmech.arms.service.DepartMentService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterDiscount")
@Controller()
@Scope("prototype")
public class DepartMentAction extends BaseActionSupport implements
		ModelDriven<DepartMent> {
	@Resource()
	private DepartMentService departMentServiceService;

	private DepartMent item = new DepartMent();
	private int page = 1;
	private int rows = 10;

	@Action(value = "departMentManage", results = { @Result(name = "input", location = "departMentManage.jsp") })
	public String departMentManage() {
		return INPUT;
	}

	@Action(value = "queryDepartMent")
	public void querydepartMent() {
		this.transmitJson(departMentServiceService.getDepartMentEasyUiJSon(
				item, page, rows));
	}

	@Action(value = "departMentSearch")
	public void departMentSearch() {
		this.transmitJson(departMentServiceService.getDepartMentEasyUiJSon(
				item, page, rows));
	}

	@Action(value = "insertDepartMent")
	public void insertItem() {
		item.setDepartId(IDGen.getUUID());
		int rowAffected = departMentServiceService.insertItem(item);
		String jsonStr = getJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateDepartMent")
	public void updateItem() {
		int rowAffected = departMentServiceService.updateItem(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteDepartMent")
	public void deleteItem() {
		String departId = item.getDepartId();
		int rowAffected = departMentServiceService.deleteItem(departId);
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
	public DepartMent getModel() {
		return item;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}
}
