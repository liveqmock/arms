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
import com.chiefmech.arms.entity.CustomerSort;
import com.chiefmech.arms.service.CustomerSortService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/webSetup")
@Controller()
@Scope("prototype")
public class CustomerSortManageAction extends BaseActionSupport
		implements
			ModelDriven<CustomerSort> {

	@Resource()
	private CustomerSortService customerSortService;

	private CustomerSort item = new CustomerSort();

	@Action(value = "customerSortManage", results = {@Result(name = "input", location = "customerSortManage.jsp")})
	public String customerSortManage() {
		return INPUT;
	}

	@Action(value = "queryCustomerSort")
	public void queryCustomerSort() {
		this.transmitJson(customerSortService.getCustomerSortLisEasyUiJSon());
	}

	@Action(value = "insertCustomerSort")
	public void insertItem() {
		item.setTxtGuid(IDGen.getUUID());
		int rowAffected = customerSortService.insertItem(item);
		String jsonStr = getJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateCustomerSort")
	public void updateItem() {
		int rowAffected = customerSortService.updateItem(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteCustomerSort")
	public void deleteItem() {
		String id = item.getTxtGuid();
		int rowAffected = customerSortService.deleteItem(id);
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
	public CustomerSort getModel() {
		return item;
	}

}
