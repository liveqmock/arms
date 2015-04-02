package com.chiefmech.arms.action.webSetup;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.SessionUtil;
import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.entity.TaoKaItem;
import com.chiefmech.arms.entity.TaoKaSort;
import com.chiefmech.arms.service.TaoKaService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/webSetup")
@Controller()
@Scope("prototype")
public class TaoKaManageAction extends BaseActionSupport
		implements
			ModelDriven<TaoKaItem> {

	@Resource()
	private TaoKaService taoKaService;

	private String rowJsonData;
	private TaoKaItem taoKaItem = new TaoKaItem();

	@Action(value = "taoKaManage", results = {@Result(name = "input", location = "taoKaManage.jsp")})
	public String taoKaManage() {
		return INPUT;
	}

	@Action(value = "queryTaoKaSort")
	public void queryTaoKaSort() {
		this.transmitJson(taoKaService.getTaoKaSortEasyUiJSon());
	}

	@Action(value = "saveTaoKaSort")
	public void saveTaoKaSort() {
		JSONObject jsonObject = JSONObject.fromObject(rowJsonData);
		TaoKaSort item = (TaoKaSort) JSONObject.toBean(jsonObject,
				TaoKaSort.class);

		int rowsAffected;
		String action;
		if (StringUtils.isBlank(item.getTxtGuid())) {
			item.setTxtGuid(IDGen.getUUID());
			item.setTxtShopCode(SessionUtil.getShopInfo().getShopCode());
			rowsAffected = taoKaService.insertTaoKaSort(item);
			action = "插入";
		} else {
			rowsAffected = taoKaService.updateTaoKaSort(item);
			action = "更新";
		}

		this.transmitJson(getCrudJsonResponse(rowsAffected, action));
	}

	@Action(value = "deleteTaoKaSort")
	public void deleteTaoKaSort() {
		int rowAffected = taoKaService.deleteTaoKaSort(taoKaItem.getTxtGuid());
		String jsonStr = getCrudJsonResponse(rowAffected, "删除");

		this.transmitJson(jsonStr);
	}

	@Action(value = "queryTaoKaItem")
	public void queryTaoKaItem() {
		this.transmitJson(taoKaService.getTaoKaItemEasyUiJSon());
	}

	@Action(value = "saveTaoKaItem")
	public void saveTaoKaItem() {
		int rowsAffected;
		String action;
		if (StringUtils.isBlank(taoKaItem.getTxtGuid())) {
			taoKaItem.setTxtGuid(IDGen.getUUID());
			rowsAffected = taoKaService.insertTaoKaItem(taoKaItem);
			action = "插入";
		} else {
			rowsAffected = taoKaService.updateTaoKaItem(taoKaItem);
			action = "更新";
		}

		this.transmitJson(getCrudJsonResponse(rowsAffected, action));
	}

	@Action(value = "deleteTaoKaItem")
	public void deleteTaoKaItem() {
		int rowAffected = taoKaService.deleteTaoKaItem(taoKaItem.getTxtGuid());
		String jsonStr = getCrudJsonResponse(rowAffected, "删除");

		this.transmitJson(jsonStr);
	}

	public void setRowJsonData(String rowJsonData) {
		this.rowJsonData = rowJsonData;
	}

	@Override
	public TaoKaItem getModel() {
		return taoKaItem;
	}

}
