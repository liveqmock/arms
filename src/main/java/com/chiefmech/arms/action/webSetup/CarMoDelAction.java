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
import com.chiefmech.arms.entity.view.CarModelView;
import com.chiefmech.arms.service.CarModelService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/webSetup")
@Controller()
@Scope("prototype")
public class CarModelAction extends BaseActionSupport implements
		ModelDriven<CarModelView> {
	
	@Resource()
	private CarModelService carModelService;
	
	private CarModelView item = new CarModelView();
	private int page = 1;
	private int rows = 10;

	@Action(value = "carModel", results = { @Result(name = "input", location = "carmodel.jsp") })
	public String carMoDel() {
		return INPUT;
	}

	@Action(value = "queryCarModel")
	public void queryCarModel() {
		this.transmitJson(carModelService.getCarMoDelEasyUiJSon(item, page,
				rows));
	}

	@Action(value = "CarModelSearch")
	public void CarModelSearch() {
		this.transmitJson(carModelService.getCarMoDelEasyUiJSon(item, page,
				rows));
	}

	@Action(value = "insertCarModel")
	public void insertItem() {
		item.setModelId(IDGen.getUUID());		
		int rowAffected = carModelService.insertItem(item);
		String jsonStr = getJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateCarModel")
	public void updateCarModelItem() {
		int rowAffected = carModelService.updateItem(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteCarModel")
	public void deleteCarModelItem() {
		String id = item.getModelCode();
		int rowAffected = carModelService.deleteItem(id);
		String jsonStr = getJsonResponse(rowAffected, "删除");

		this.transmitJson(jsonStr);
	}
	@Action(value = "insertCarBrand")
	public void insertCarBrand() {
		item.setBrandId(IDGen.getUUID());
		int rowAffected = carModelService.insertItemCarBrand(item);
		String jsonStr = getJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateCarBrand")
	public void updateCarBrand() {
		int rowAffected = carModelService.updateItemCarBrand(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");		

		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteCarBrand")
	public void deleteCarBrand() {
		String id = item.getBrandId();
		int rowAffected = carModelService.deleteItemCarBrand(id);
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
	public CarModelView getModel() {
		return item;
	}

}
