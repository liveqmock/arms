package com.chiefmech.arms.action.saleAfterDiscount;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.SystemOwner;
import com.chiefmech.arms.entity.view.ZheKouView;
import com.chiefmech.arms.service.SystemOwnerService;
import com.chiefmech.arms.service.ZheKouViewService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterDiscount")
@Controller()
@Scope("prototype")
public class UserManageAction extends BaseActionSupport implements
		ModelDriven<ZheKouView> {

	@Resource()
	private ZheKouViewService zheKouViewService;

	@Resource()
	private SystemOwnerService systemOwnerService;

	private ZheKouView query = new ZheKouView();

	private List<SystemOwner> ownerList;
	private int page = 1;
	private int rows = 10;

	@Action(value = "userManage", results = { @Result(name = "input", location = "saleAfterDiscountUserManage.jsp") })
	public String userManage() {
		ownerList = systemOwnerService.selectItem();
		return INPUT;
	}

	@Action(value = "queryZheKouView")
	public void queryZheKou() {
		this.transmitJson(zheKouViewService.getZheKouViewEasyUiJSon(query,
				page, rows));
	}

	@Action(value = "ZheKouViewSearch")
	public void UnitSearch() {
		this.transmitJson(zheKouViewService.getZheKouViewEasyUiJSon(query,
				page, rows));
	}

	@Action(value = "deleteZheKou")
	public void deleteItem() {
		String id = query.getTxtZheKouGuId();
		int rowAffected = zheKouViewService.deleteItem(id);
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

	public List<SystemOwner> getOwnerList() {
		return ownerList;
	}

	public void setOwnerList(List<SystemOwner> ownerList) {
		this.ownerList = ownerList;
	}

	@Override
	public ZheKouView getModel() {
		return query;
	}

}
