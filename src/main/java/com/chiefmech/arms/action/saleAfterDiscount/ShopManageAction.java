package com.chiefmech.arms.action.saleAfterDiscount;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.Shop;
import com.chiefmech.arms.service.ShopService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterDiscount")
@Controller()
@Scope("prototype")
public class ShopManageAction extends BaseActionSupport
		implements
			ModelDriven<Shop> {
	@Resource()
	private ShopService shopService;
	private Shop item = new Shop();
	private int page = 1;
	private int rows = 10;

	@Action(value = "shopManage", results = {@Result(name = "input", location = "shopManage.jsp")})
	public String shopManage() {
		return INPUT;
	}

	@Action(value = "queryShop")
	public void queryUnit() {
		this.transmitJson(shopService.getShopEasyUiJSon(item, page, rows));
	}

	@Action(value = "insertShop")
	public void insertItem() {
		int rowAffected = shopService.insertItem(item);
		String jsonStr = getJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateShop")
	public void updateItem() {
		int rowAffected = shopService.updateItem(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteShop")
	public void deleteItem() {
		String id = item.getShopGuid();
		int rowAffected = shopService.deleteItem(id);
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
	public Shop getModel() {
		return item;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

}
