package com.chiefmech.arms.action.webSetup;
import java.util.List;

import com.chiefmech.arms.entity.CheZhuLianXiRen;
import com.chiefmech.arms.entity.HuiYuan;
import javax.annotation.Resource;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.service.CheZhuLianXiRenService;
import com.chiefmech.arms.service.HuiYuanService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/webSetup")
@Controller()
@Scope("prototype")
public class HuiYuanManageAction extends BaseActionSupport implements ModelDriven<HuiYuan>{
	@Resource()
	private HuiYuanService huiYuanService;
	
	@Resource()
	private CheZhuLianXiRenService cheZhuLianXiRenService;
	
	private HuiYuan item=new HuiYuan();
	private int page = 1;
	private int rows = 5;
	private List<CheZhuLianXiRen> CheZhuLianXiRenList;
	
	@Action(value = "huiYuanManage", results = { @Result(name = "input", location = "huiYuanManage.jsp")})
	public String huiYuanManage() {
		CheZhuLianXiRenList = cheZhuLianXiRenService.selectItem();
		return INPUT;
	}

	@Action(value = "queryHuiYuan")
	public void queryHuiYuanManage() {
		this.transmitJson(huiYuanService.getHuiYuanEasyUiJSon(item,
				page, rows));
	}

	@Action(value = "huiYuanSearch")
	public void huiYuanSearch() {
		this.transmitJson(huiYuanService.getHuiYuanEasyUiJSon(item,
				page, rows));
	}

	@Action(value = "insertHuiYuan")
	public void insertItem() {
		item.setTxtHuiYuanId(IDGen.getUUID());
		int rowAffected = huiYuanService.insertItem(item);
		String jsonStr = getJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateHuiYuan")
	public void updateItem() {
		int rowAffected = huiYuanService.updateItem(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteHuiYuan")
	public void deleteItem() {
		String id = item.getTxtHuiYuanId();
		int rowAffected = huiYuanService.deleteItem(id);
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
	public HuiYuan getModel() {
		return item;
	}

	public List<CheZhuLianXiRen> getCheZhuLianXiRenList() {
		return CheZhuLianXiRenList;
	}

	public void setCheZhuLianXiRenList(List<CheZhuLianXiRen> cheZhuLianXiRenList) {
		CheZhuLianXiRenList = cheZhuLianXiRenList;
	}
	
}
