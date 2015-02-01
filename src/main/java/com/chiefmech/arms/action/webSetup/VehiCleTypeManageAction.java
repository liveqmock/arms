package com.chiefmech.arms.action.webSetup;

import javax.annotation.Resource;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.VehiCleType;
import com.chiefmech.arms.service.VehiCleTypeService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/webSetup")
@Controller()
@Scope("prototype")
public class VehiCleTypeManageAction extends BaseActionSupport implements
ModelDriven<VehiCleType> {
	
	@Resource()
	private VehiCleTypeService vehiCleTypeService;
	
	private VehiCleType item=new VehiCleType();
	private int page = 1;
	private int rows = 10;
	
	
	@Action(value = "vehiCleTypeManage", results = { @Result(name = "input", location = "vehiCleType.jsp") })
	public String vehiCleTypeManage() {
		return INPUT;
	}
	@Action(value = "queryVehiCleType")
	public void queryZhangTao() {
		this.transmitJson(vehiCleTypeService.getVehiCleTypeEasyUiJSon(item, page,
				rows));
	}

	@Action(value = "VehiCleTypeSearch")
	public void ZhangTaoSearch() {
		this.transmitJson(vehiCleTypeService.getVehiCleTypeEasyUiJSon(item, page,
				rows));
	}

	@Action(value = "insertVehiCleType")
	public void insertItem() {
		int rowAffected = vehiCleTypeService.insertItem(item);
		String jsonStr = getJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateVehiCleType")
	public void updateItem() {
		int rowAffected = vehiCleTypeService.updateItem(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteVehiCleType")
	public void deleteItem() {
		int id = item.getVehiCleTypeGuid();
		int rowAffected = vehiCleTypeService.deleteItem(id);
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

	public void setPage(int page) {
		this.page = page;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	@Override
	public VehiCleType getModel() {
		return item;
	}

}
