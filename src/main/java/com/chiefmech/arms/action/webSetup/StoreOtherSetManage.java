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
import com.chiefmech.arms.entity.Store;
import com.chiefmech.arms.service.StoreService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/webSetup")
@Controller()
@Scope("prototype")
public class StoreOtherSetManage extends BaseActionSupport implements
		ModelDriven<Store> {
	
	@Resource()
	private StoreService storeService;
	
    private Store item=new Store();
    private int page = 1;
	private int rows = 10;


	@Action(value = "storeOtherSetManage", results = { @Result(name = "input", location = "storeOtherSetManage.jsp") })
	public String storeOtherSetManage() {
		return INPUT;
	}
	@Action(value = "queryStore")
	public void queryZhangTao() {
		this.transmitJson(storeService.getStoreEasyUiJSon(item, page,
				rows));
	}

	@Action(value = "StoreSearch")
	public void ZhangTaoSearch() {
		this.transmitJson(storeService.getStoreEasyUiJSon(item, page,
				rows));
	}

	@Action(value = "insertStore")
	public void insertItem() {
		item.setStoreId(IDGen.getUUID());
		int rowAffected = storeService.insertItem(item);
		String jsonStr = getJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateStore")
	public void updateItem() {
		int rowAffected = storeService.updateItem(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteStore")
	public void deleteItem() {
		String id = item.getStoreId();
		int rowAffected = storeService.deleteItem(id);
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
	public Store getModel() {
		return item;
	}
	
	public void setPage(int page) {
		this.page = page;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}
}
