package com.chiefmech.arms.action.saleAfterManage;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterManage")
@Controller()
@Scope("prototype")
public class CustomSearchAction extends BaseActionSupport {

	@Action(value = "customerSearch", results = { @Result(name = "input", location = "saleAfter_CustomSearch.jsp") })
	public String customVehicleChange() {
		return INPUT;
	}

	@Action(value = "saleAfterCustomSearch")
	public void saleAfterCustomSearch() {
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", 100,
				"{}");

		this.transmitJson(jsonStr);
	}
}
