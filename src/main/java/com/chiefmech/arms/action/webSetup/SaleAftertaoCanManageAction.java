package com.chiefmech.arms.action.webSetup;
import com.chiefmech.arms.entity.TaoCan;
import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.service.TaoCanService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/webSetup")
@Controller()
@Scope("prototype")
public class SaleAftertaoCanManageAction extends BaseActionSupport implements ModelDriven<TaoCan>{
	@Resource()
	private TaoCanService taoCanService;
	private TaoCan item=new TaoCan();
	private int page = 1;
	private int rows = 5;

	@Action(value = "saleAfterTaoCanManage", results = { @Result(name = "input", location = "saleAfter_taoCanManage.jsp")})
	public String saleafterTaoCanManage() {
		return INPUT;
	}

	@Action(value = "queryTaoCan")
	public void queryTaoCanManage() {
		this.transmitJson(taoCanService.getTaoCanEasyUiJSon(item,
				page, rows));
	}

	@Action(value = "TaoCanSearch")
	public void weiXiuXiangMuSearch() {
		this.transmitJson(taoCanService.getTaoCanEasyUiJSon(item,
				page, rows));
	}

	@Action(value = "insertTaoCan")
	public void insertItem() {
		item.setTaoCanId(IDGen.getUUID());
		int rowAffected = taoCanService.insertItem(item);
		String jsonStr = getJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateTaoCan")
	public void updateItem() {
		int rowAffected = taoCanService.updateItem(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteTaoCan")
	public void deleteItem() {
		String id = item.getTaoCanId();
		int rowAffected = taoCanService.deleteItem(id);
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
	public TaoCan getModel() {
		return item;
	}

}
