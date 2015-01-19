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
import com.chiefmech.arms.entity.WeiXiuXiangMu;
import com.chiefmech.arms.service.WeiXiuXiangMuService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/webSetup")
@Controller()
@Scope("prototype")
public class SaleAfterWeiXiuXiangMuSetAction extends BaseActionSupport
		implements ModelDriven<WeiXiuXiangMu> {

	@Resource()
	private WeiXiuXiangMuService weiXiuXiangMuService;

	private WeiXiuXiangMu item = new WeiXiuXiangMu();
	private int page = 1;
	private int rows = 10;

	@Action(value = "saleAfterWeiXiuXiangMuSet", results = { @Result(name = "input", location = "saleAfter_weiXiuXiangMuSet.jsp") })
	public String saleAfterWeiXiuXiangMuSet() {
		return INPUT;
	}

	@Action(value = "queryWeiXiuXiangMu")
	public void queryWeiXiuXiangMu() {
		this.transmitJson(weiXiuXiangMuService.getWeiXiuXiangMuEasyUiJSon(item,
				page, rows));
	}

	@Action(value = "weiXiuXiangMuSearch")
	public void weiXiuXiangMuSearch() {
		this.transmitJson(weiXiuXiangMuService.getWeiXiuXiangMuEasyUiJSon(item,
				page, rows));
	}

	@Action(value = "insertWeiXiuXiangMu")
	public void insertItem() {
		item.setTxtWeiXiuXiangMuGuid(IDGen.getUUID());
		int rowAffected = weiXiuXiangMuService.insertItem(item);
		String jsonStr = getJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateWeiXiuXiangMu")
	public void updateItem() {
		int rowAffected = weiXiuXiangMuService.updateItem(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteWeiXiuXiangMu")
	public void deleteItem() {
		String id = item.getTxtWeiXiuXiangMuGuid();
		int rowAffected = weiXiuXiangMuService.deleteItem(id);
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
	public WeiXiuXiangMu getModel() {
		return item;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

}
