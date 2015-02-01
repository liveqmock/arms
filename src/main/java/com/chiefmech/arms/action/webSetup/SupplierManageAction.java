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
import com.chiefmech.arms.entity.Supplier;
import com.chiefmech.arms.service.SupplierService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/webSetup")
@Controller()
@Scope("prototype")
public class SupplierManageAction extends BaseActionSupport implements
		ModelDriven<Supplier> {
	@Resource()
	private SupplierService supplierService;

	private Supplier item = new Supplier();
	private int page = 1;
	private int rows = 10;

	@Action(value = "supplierManage", results = { @Result(name = "input", location = "supplierManage.jsp") })
	public String supplierManage() {
		return INPUT;
	}

	@Action(value = "querySupplier")
	public void queryZhangTao() {
		this.transmitJson(supplierService.getSupplierEasyUiJSon(item, page,
				rows));
	}

	@Action(value = "SupplierSearch")
	public void ZhangTaoSearch() {
		this.transmitJson(supplierService.getSupplierEasyUiJSon(item, page,
				rows));
	}

	@Action(value = "insertSupplier")
	public void insertItem() {
		item.setTxtSuppId(IDGen.getUUID());
		int rowAffected = supplierService.insertItem(item);
		String jsonStr = getJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateSupplier")
	public void updateItem() {
		int rowAffected = supplierService.updateItem(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteSupplier")
	public void deleteItem() {
		String id = item.getTxtSuppId();
		int rowAffected = supplierService.deleteItem(id);
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
	public Supplier getModel() {
		return item;
	}

}
