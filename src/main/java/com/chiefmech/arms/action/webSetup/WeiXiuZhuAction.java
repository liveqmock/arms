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
import com.chiefmech.arms.entity.WeiXiuZhu;
import com.chiefmech.arms.service.WeiXiuZhuService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/webSetup")
@Controller()
@Scope("prototype")
public class WeiXiuZhuAction extends BaseActionSupport
		implements
			ModelDriven<WeiXiuZhu> {

	@Resource()
	private WeiXiuZhuService weiXiuZhuService;

	private WeiXiuZhu item = new WeiXiuZhu();
	private int page = 1;
	private int rows = 10;

	@Action(value = "weiXiuZhuManage", results = {@Result(name = "input", location = "weiXiuZhuManage.jsp")})
	public String weiXiuPaiGongManage() {
		return INPUT;
	}
	@Action(value = "queryWeiXiuZhu")
	public void queryweiXiuPaiGong() {
		this.transmitJson(weiXiuZhuService.getWeiXiuPaiGongEasyUiJSon(item,
				page, rows));
	}

	@Action(value = "insertWeiXiuZhu")
	public void insertItem() {
		item.setWeixiuzuID(IDGen.getUUID());
		int rowAffected = weiXiuZhuService.insertItem(item);
		String jsonStr = getJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateWeiXiuZhu")
	public void updateItem() {
		int rowAffected = weiXiuZhuService.updateItem(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteWeiXiuZhu")
	public void deleteItem() {
		String id = item.getWeixiuzuID();
		int rowAffected = weiXiuZhuService.deleteItem(id);
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
	public WeiXiuZhu getModel() {
		return item;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}
}
