package com.chiefmech.arms.action.saleAfterDiscount;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.entity.ZheKou;
import com.chiefmech.arms.service.ZheKouViewService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterDiscount")
@Controller()
@Scope("prototype")
public class SaleAfterDiscountManageAction extends BaseActionSupport implements
		ModelDriven<ZheKou> {
	@Resource()
	private ZheKouViewService zheKouViewService;

	private ZheKou item = new ZheKou();

	@Action(value = "insertZheKou")
	public void insertItem() {
		item.setTxtZheKouGuId(IDGen.getUUID());
		int rowAffected = zheKouViewService.insertItem(item);
		String jsonStr = getJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateZheKou")
	public void updateItem() {
		int rowAffected = zheKouViewService.updateItem(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");

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
	public ZheKou getModel() {
		return item;
	}

}
