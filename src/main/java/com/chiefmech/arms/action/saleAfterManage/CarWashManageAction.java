package com.chiefmech.arms.action.saleAfterManage;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.DateUtil;
import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.entity.CarWash;
import com.chiefmech.arms.service.CarWashService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterManage")
@Controller()
@Scope("prototype")
public class CarWashManageAction extends BaseActionSupport
		implements
			ModelDriven<CarWash> {

	@Resource()
	private CarWashService carWashService;

	private CarWash item = new CarWash();
	private String action;
	private String carWashGuid;
	private int page = 1;
	private int rows = 10;

	@Action(value = "carWashManage", results = {@Result(name = "input", location = "carWashManage.jsp")})
	public String saleAfterCustomSearch() {
		return INPUT;
	}

	@Action(value = "carWashInfo", results = {@Result(name = "input", location = "carWashInfo.jsp")})
	public String carWashInfo() {
		if (StringUtils.isBlank(carWashGuid)) {
			item.setTxtStatus("洗车接待");
		} else {
			item = carWashService.findItemById(carWashGuid);
		}
		return INPUT;
	}

	@Action(value = "queryCarWash")
	public void queryCarWash() {
		this.transmitJson(carWashService.getCarWashEasyUiJSon(item, page, rows));
	}

	@Action(value = "insertCarWash")
	public void insertItem() {
		item.setTxtGuid(IDGen.getUUID());
		item.setTxtRuChangDate(DateUtil.getCurrentDate());
		item.setTxtStatus("洗车接待");
		int rowAffected = carWashService.insertItem(item);
		String msg = (rowAffected == 1)
				? String.valueOf(item.getTxtGuid())
				: "新增数据失败";
		String jsonStr = getJsonResponse(rowAffected, msg);
		this.transmitJson(jsonStr);
	}

	@Action(value = "updateCarWash")
	public void updateItem() {
		int rowAffected = carWashService.updateItem(item);
		String jsonStr = getJsonResponse(rowAffected, "更新数据失败");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateCarWashStatus")
	public void updateCarWashStatus() {
		int rowAffected = carWashService.updateCarWashStatus(item);
		String jsonStr = getJsonResponse(rowAffected, "更新数据失败");

		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteCarWash")
	public void deleteCarWash() {
		String userId = item.getTxtGuid();
		int rowAffected = carWashService.deleteItem(userId);
		String jsonStr = getJsonResponse(rowAffected, "删除数据失败");
		this.transmitJson(jsonStr);
	}

	private String getJsonResponse(int rowAffected, String action) {
		String jsonStr = String.format(
				"{\"status\":\"ok\",\"txtGuid\":\"%s\"}", action);
		if (rowAffected != 1) {
			jsonStr = String.format("{\"errorMsg\":\"%s\"}", action);
		}

		return jsonStr;
	}

	@Override
	public CarWash getModel() {
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

	public String getCarWashStatus() {
		return item.getTxtStatus();
	}

	public String getCarWashGuid() {
		return carWashGuid;
	}

	public void setCarWashGuid(String carWashGuid) {
		this.carWashGuid = carWashGuid;
	}

	public String getJsonData() {
		return JSONObject.fromObject(item).toString();
	}
}
