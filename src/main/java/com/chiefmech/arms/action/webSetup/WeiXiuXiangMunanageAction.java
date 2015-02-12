package com.chiefmech.arms.action.webSetup;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.entity.WeiXiuXiangMu;
import com.chiefmech.arms.service.GongDanService;
import com.chiefmech.arms.service.WeiXiuXiangMuService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/webSetup")
@Controller()
@Scope("prototype")
public class WeiXiuXiangMunanageAction extends BaseActionSupport implements
		ModelDriven<WeiXiuXiangMu> {

	@Resource()
	private GongDanService gongDanService;
	@Resource()
	private WeiXiuXiangMuService weiXiuXiangMuService;

	private WeiXiuXiangMu item = new WeiXiuXiangMu();
	private String saleAfterGuid;
	private String easyUiJSonData;
	private String action;
	private int page = 1;
	private int rows = 10;

	@Action(value = "weiXiuXiangMuManage", results = { @Result(name = "input", location = "weiXiuXiangMuManage.jsp") })
	public String saleAfterWeiXiuXiangMuSet() {
		return INPUT;
	}

	@Action(value = "weiXiuXiangMuSearch")
	public void weiXiuXiangMuSearch() {
		if ("pickXiangMu".equals(action)) {
			item.setDdlDianPu(this.getUser().getJigouName());
		}
		this.transmitJson(weiXiuXiangMuService.getWeiXiuXiangMuEasyUiJSon(
				saleAfterGuid, item, page, rows));
	}

	@Action(value = "insertWeiXiuXiangMu")
	public void insertItem() {
		item.setTxtGuid(IDGen.getUUID());
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
		String id = item.getTxtGuid();
		int rowAffected = weiXiuXiangMuService.deleteItem(id);
		String jsonStr = getJsonResponse(rowAffected, "删除");

		this.transmitJson(jsonStr);
	}

	@Action(value = "addGongDanWeiXiuXiangMu")
	public void addGongDanWeiXiuXiangMu() {
		JSONArray jsonArray = JSONArray.fromObject(easyUiJSonData);
		List<WeiXiuXiangMu> weiXiuXiangMuLst = (List<WeiXiuXiangMu>) JSONArray
				.toList(jsonArray, WeiXiuXiangMu.class);
		int rowAffected = gongDanService.insertGongDanWeiXiuXiangMu(
				saleAfterGuid, weiXiuXiangMuLst);
		String jsonStr = getCrudJsonResponse(rowAffected, "新增");

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

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public String getSaleAfterGuid() {
		return saleAfterGuid;
	}

	public void setSaleAfterGuid(String saleAfterGuid) {
		this.saleAfterGuid = saleAfterGuid;
	}

	public String getEasyUiJSonData() {
		return easyUiJSonData;
	}

	public void setEasyUiJSonData(String easyUiJSonData) {
		this.easyUiJSonData = easyUiJSonData;
	}

}
