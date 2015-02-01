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
import com.chiefmech.arms.entity.WeiXiuPaiGong;
import com.chiefmech.arms.service.WeiXiuPaiGongService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/webSetup")
@Controller()
@Scope("prototype")
public class WeiXiuPaiGongAction extends BaseActionSupport implements
		ModelDriven<WeiXiuPaiGong> {
	
	@Resource()
	private WeiXiuPaiGongService weiXiuPaiGongService;
	
    private WeiXiuPaiGong item=new WeiXiuPaiGong();
    private int page = 1;
	private int rows = 10;

	@Action(value = "weiXiuPaiGongManage", results = { @Result(name = "input", location = "weiXiuPaiGongManage.jsp") })
	public String weiXiuPaiGongManage() {
		return INPUT;
	}
	@Action(value = "queryweiXiuPaiGong")
	public void queryweiXiuPaiGong() {
		this.transmitJson(weiXiuPaiGongService.getWeiXiuPaiGongEasyUiJSon(item, page, rows));
	}

	@Action(value = "weiXiuPaiGongSearch")
	public void weiXiuPaiGongSearch() {
		this.transmitJson(weiXiuPaiGongService.getWeiXiuPaiGongEasyUiJSon(item, page, rows));
	}

	@Action(value = "insertweiXiuPaiGong")
	public void insertItem() {
		item.setWeixiuzuID(IDGen.getUUID());
		int rowAffected = weiXiuPaiGongService.insertItem(item);
		String jsonStr = getJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateweiXiuPaiGong")
	public void updateItem() {
		int rowAffected = weiXiuPaiGongService.updateItem(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteweiXiuPaiGong")
	public void deleteItem() {
		String id = item.getWeixiuzuID();
		int rowAffected = weiXiuPaiGongService.deleteItem(id);
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
	public WeiXiuPaiGong getModel() {
		return item;
	}
	
	public void setPage(int page) {
		this.page = page;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}
}
