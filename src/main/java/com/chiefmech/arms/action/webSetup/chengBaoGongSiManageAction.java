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
import com.chiefmech.arms.entity.ChengBaoGongSi;
import com.chiefmech.arms.service.ChengBaoGongSiService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/webSetup")
@Controller()
@Scope("prototype")
public class chengBaoGongSiManageAction extends BaseActionSupport implements
ModelDriven<ChengBaoGongSi>  {

	@Resource()
	private ChengBaoGongSiService chengBaoGongSiSerivce;
	
	private ChengBaoGongSi item=new ChengBaoGongSi();
	private int page = 1;
	private int rows = 18;
	
	@Action(value = "chengBaoGongSiManage", results = { @Result(name = "input", location = "chengBaoGongSiManage.jsp") })
	public String chengBaoGongSiManage() {
		return INPUT;
	}
	
	@Action(value = "queryChengBaoGongSi")
	public void queryweiXiuPaiGong() {
		this.transmitJson(chengBaoGongSiSerivce.getChengBaoGongSiEasyUiJSon(item,
				page, rows));
	}

	@Action(value = "insertChengBaoGongSi")
	public void insertItem() {
		item.setChengBaoGongSiId(IDGen.getUUID());
		int rowAffected = chengBaoGongSiSerivce.insertItem(item);
		String jsonStr = getJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateChengBaoGongSi")
	public void updateItem() {
		int rowAffected = chengBaoGongSiSerivce.updateItem(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteChengBaoGongSi")
	public void deleteItem() {
		String id = item.getChengBaoGongSiId();
		int rowAffected = chengBaoGongSiSerivce.deleteItem(id);
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

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getRows() {
		return rows;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	@Override
	public ChengBaoGongSi getModel() {
		return item;
	}
	
}
