package com.chiefmech.arms.action.webSetup;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.entity.Unit;
import com.chiefmech.arms.service.UnitService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/webSetup")
@Controller()
@Scope("prototype")
public class StoreOtherUnitManageAction extends BaseActionSupport implements
		ModelDriven<Unit> {
	@Resource()
	private UnitService unitService;
	
	private Unit item = new Unit();
	private int page = 1;
	private int rows = 10;

	@Action(value = "storeOtherUnitManage", results = { @Result(name = "input", location = "storeOtherUnitManage.jsp") })
	public String storeOtherUnitManage() {
		return INPUT;
	}

	@Action(value = "queryUnit")
	public void queryUnit() {
		this.transmitJson(unitService.getUnitEasyUiJSon(item,
				page, rows));
	}

	@Action(value = "UnitSearch")
	public void UnitSearch() {
		this.transmitJson(unitService.getUnitEasyUiJSon(item,
				page, rows));
	}

	@Action(value = "insertUnit")
	public void insertItem() {
//	User user=	(User)servletRequest.getSession().getAttribute(Constants.KEY_USER_SESSION);
//		item.setTxtUnitId(user.getUserId());          获取当前登陆用户信息
		item.setTxtUnitId(IDGen.getUUID());
		int rowAffected = unitService.insertItem(item);
		String jsonStr = getJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateUnit")
	public void updateItem() {
		int rowAffected = unitService.updateItem(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteUnit")
	public void deleteItem() {
		String id = item.getTxtUnitId();
		int rowAffected = unitService.deleteItem(id);
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
	public Unit getModel() {
		return item;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

}
