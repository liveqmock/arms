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
import com.chiefmech.arms.entity.Param;
import com.chiefmech.arms.service.ParamsService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/webSetup")
@Controller()
@Scope("prototype")
public class ParamsManageAction extends BaseActionSupport
		implements
			ModelDriven<Param> {
	@Resource()
	private ParamsService paramsService;

	private Param item = new Param();

	@Action(value = "customerReservationParamsManage", results = {@Result(name = "input", location = "customerReservationParamsManage.jsp")})
	public String customerReservationParamsManage() {
		return INPUT;
	}

	@Action(value = "queryParam")
	public void queryParam() {
		this.transmitJson(paramsService.getParamEasyUiJSon(item));
	}

	@Action(value = "insertParam")
	public void insertParam() {
		item.setParamGuid(IDGen.getUUID());
		int rowAffected = paramsService.insertItem(item);
		String jsonStr = getJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateParam")
	public void updateParam() {
		int rowAffected = paramsService.updateItem(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteParam")
	public void deleteParam() {
		String id = item.getParamGuid();
		int rowAffected = paramsService.deleteItem(id);
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
	public Param getModel() {
		return item;
	}

}
