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
import com.chiefmech.arms.entity.ZhangTao;
import com.chiefmech.arms.service.ZhangTaoService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/webSetup")
@Controller()
@Scope("prototype")
public class ZhangTaoAction extends BaseActionSupport implements
		ModelDriven<ZhangTao> {

	@Resource()
	private ZhangTaoService zhangTaoService;

	private ZhangTao item = new ZhangTao();
	private int page = 1;
	private int rows = 10;

	@Action(value = "zhangTao", results = { @Result(name = "input", location = "zhangTao.jsp") })
	public String ZhangTao() {
		return INPUT;
	}

	@Action(value = "queryZhangTao")
	public void queryZhangTao() {
		this.transmitJson(zhangTaoService.getZhangTaoEasyUiJSon(item, page,
				rows));
	}

	@Action(value = "ZhangTaoSearch")
	public void ZhangTaoSearch() {
		this.transmitJson(zhangTaoService.getZhangTaoEasyUiJSon(item, page,
				rows));
	}

	@Action(value = "insertZhangTao")
	public void insertItem() {
		item.setTxtZhangTaoGuid(IDGen.getUUID());
		int rowAffected = zhangTaoService.insertItem(item);
		String jsonStr = getJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateZhangTao")
	public void updateItem() {
		int rowAffected = zhangTaoService.updateItem(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteZhangTao")
	public void deleteItem() {
		String id = item.getTxtZhangTaoGuid();
		int rowAffected = zhangTaoService.deleteItem(id);
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
	public com.chiefmech.arms.entity.ZhangTao getModel() {
		return item;
	}

}
