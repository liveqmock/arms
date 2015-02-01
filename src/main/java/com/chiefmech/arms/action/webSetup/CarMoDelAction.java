package com.chiefmech.arms.action.webSetup;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.CarBrand;
import com.chiefmech.arms.entity.view.CarMoDelView;
import com.chiefmech.arms.service.CarBrandService;
import com.chiefmech.arms.service.CarMoDelService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/webSetup")
@Controller()
@Scope("prototype")
public class CarMoDelAction extends BaseActionSupport implements
		ModelDriven<CarMoDelView> {
	
	@Resource()
	private CarMoDelService carMoDelService;
	
	@Resource()
	private CarBrandService carBrandService;
	
	private CarMoDelView item = new CarMoDelView();
	private List<CarBrand> CarBrandLst;
	private int page = 1;
	private int rows = 10;

	@Action(value = "carMoDel", results = { @Result(name = "input", location = "carmodel.jsp") })
	public String carMoDel() {
		CarBrandLst=carBrandService.findCarBrand();
		return INPUT;
	}

	@Action(value = "queryCarMoDel")
	public void queryZhangTao() {
		this.transmitJson(carMoDelService.getCarMoDelEasyUiJSon(item, page,
				rows));
	}

	@Action(value = "CarMoDelSearch")
	public void ZhangTaoSearch() {
		this.transmitJson(carMoDelService.getCarMoDelEasyUiJSon(item, page,
				rows));
	}

	@Action(value = "insertCarMoDel")
	public void insertItem() {
		int rowAffected = carMoDelService.insertItem(item);
		String jsonStr = getJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateCarMoDel")
	public void updateItem() {
		int rowAffected = carMoDelService.updateItem(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteCarMoDel")
	public void deleteItem() {
		int id = item.getId();
		int rowAffected = carMoDelService.deleteItem(id);
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
	
	public List<CarBrand> getCarBrandLst() {
		return CarBrandLst;
	}

	public void setCarBrandLst(List<CarBrand> carBrandLst) {
		CarBrandLst = carBrandLst;
	}

	@Override
	public CarMoDelView getModel() {
		return item;
	}

}
