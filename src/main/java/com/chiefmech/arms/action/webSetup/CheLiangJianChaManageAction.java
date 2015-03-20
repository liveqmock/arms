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
import com.chiefmech.arms.entity.JianChaXiangMu;
import com.chiefmech.arms.service.JianChaXiangMuService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/webSetup")
@Controller()
@Scope("prototype")
public class CheLiangJianChaManageAction extends BaseActionSupport implements
		ModelDriven<JianChaXiangMu> {

	@Resource()
	private JianChaXiangMuService jianChaXiangMuService;
	
	private JianChaXiangMu item = new JianChaXiangMu();
	private int page = 1;
	private int rows = 18;
	
	@Action(value = "jianChaXiangMuManage", results = { @Result(name = "input", location = "cheLiangJianChaManage.jsp") })
	public String jianChaXiangMuManage() {
		return INPUT;
	}
	
	@Action(value = "queryJianChaXiangMu")
	public void queryJianChaXiangMu() {
		this.transmitJson(jianChaXiangMuService.getJianChaXiangMuEasyUiJSon(item, page,
				rows));
	}

	@Action(value = "JianChaXiangMuSearch")
	public void JianChaXiangMuSearch() {
		this.transmitJson(jianChaXiangMuService.getJianChaXiangMuEasyUiJSon(item, page,
				rows));
	}

	@Action(value = "insertJianChaXiangMu")
	public void insertItem() {
		item.setTxtJianChaGuId(IDGen.getUUID());
		int rowAffected = jianChaXiangMuService.insertItem(item);
		String jsonStr = getJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateJianChaXiangMu")
	public void updateItem() {
		int rowAffected = jianChaXiangMuService.updateItem(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteJianChaXiangMu")
	public void deleteItem() {
		String id = item.getTxtJianChaGuId();
		int rowAffected = jianChaXiangMuService.deleteItem(id);
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
	public JianChaXiangMu getModel() {
		return item;
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

}
