package com.chiefmech.arms.action.webSetup;

import javax.annotation.Resource;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.CarBrand;
import com.chiefmech.arms.service.CarBrandService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/webSetup")
@Controller()
@Scope("prototype")
public class CarBrandAction extends BaseActionSupport implements
		ModelDriven<CarBrand> {

	@Resource()
	private CarBrandService carBrandService;

	private CarBrand item = new CarBrand();
	private int page = 1;
	private int rows = 10;

	@Action(value = "carbrand", results = { @Result(name = "input", location = "carbrand.jsp") })
	public String carbrand() {
		return INPUT;
	}

	@Action(value = "queryCarBrand")
	public void queryZhangTao() {
		this.transmitJson(carBrandService.getCarBrandEasyUiJSon(item, page,
				rows));
	}

	@Action(value = "CarBrandSearch")
	public void ZhangTaoSearch() {
		this.transmitJson(carBrandService.getCarBrandEasyUiJSon(item, page,
				rows));
	}

	@Action(value = "insertCarBrand")
	public void insertItem() {
		int rowAffected = carBrandService.insertItem(item);
		String jsonStr = getJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateCarBrand")
	public void updateItem() {
		int rowAffected = carBrandService.updateItem(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteCarBrand")
	public void deleteItem() {
		int id = item.getId();
		int rowAffected = carBrandService.deleteItem(id);
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
	public CarBrand getModel() {
		return item;
	}

}
