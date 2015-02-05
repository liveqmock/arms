package com.chiefmech.arms.action.storeOtherManage;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.KuCun;
import com.chiefmech.arms.service.KuCunService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/storeOtherManage")
@Controller()
@Scope("prototype")
public class JiShiKuCunManageAction extends BaseActionSupport
		implements
			ModelDriven<KuCun> {

	@Resource()
	private KuCunService kuCunService;

	private KuCun item = new KuCun();
	private int page = 1;
	private int rows = 10;
	private String rowJsonData;

	@Action(value = "jiShiKuCunManage", results = {@Result(name = "input", location = "jiShiKuCunManage.jsp")})
	public String storeOtherSetManage() {
		return INPUT;
	}
	@Action(value = "queryJiShiKuCun")
	public void queryJiShiKuCun() {
		this.transmitJson(kuCunService.getKuCunEasyUiJSon(item, page, rows));
	}

	@Action(value = "updateJiShiKuCun")
	public void updateJiShiKuCun() {
		JSONObject jsonObject = JSONObject.fromObject(rowJsonData);
		item = (KuCun) JSONObject.toBean(jsonObject, KuCun.class);

		int rowAffected = kuCunService.updateJiShiKuCun(item);
		String jsonStr = getCrudJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Override
	public KuCun getModel() {
		return item;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	public String getRowJsonData() {
		return rowJsonData;
	}

	public void setRowJsonData(String rowJsonData) {
		this.rowJsonData = rowJsonData;
	}
}