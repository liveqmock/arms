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
import com.chiefmech.arms.entity.KuCunOperLog;
import com.chiefmech.arms.service.KuCunService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/storeOtherManage")
@Controller()
@Scope("prototype")
public class KuCunManageAction extends BaseActionSupport
		implements
			ModelDriven<KuCun> {

	@Resource()
	private KuCunService kuCunService;

	private KuCun item = new KuCun();
	private int page = 1;
	private int rows = 20;
	private String rowJsonData;
	private String saleAfterWeiXiuGuid;
	private String action;
	private String easyUiJSonData;

	@Action(value = "kuCunManage", results = {@Result(name = "input", location = "kuCunManage.jsp")})
	public String storeOtherSetManage() {
		return INPUT;
	}
	@Action(value = "queryKuCun")
	public void queryJiShiKuCun() {
		this.transmitJson(kuCunService.getKuCunEasyUiJSon(saleAfterWeiXiuGuid,
				item, page, rows));
	}

	@Action(value = "updateJiShiKuCun")
	public void updateJiShiKuCun() {
		JSONObject jsonObject = JSONObject.fromObject(rowJsonData);
		item = (KuCun) JSONObject.toBean(jsonObject, KuCun.class);

		KuCunOperLog operLog = new KuCunOperLog(item, "修改销售价");
		int rowAffected = kuCunService.updateKuCun(operLog);
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

	public String getEasyUiJSonData() {
		return easyUiJSonData;
	}

	public void setEasyUiJSonData(String easyUiJSonData) {
		this.easyUiJSonData = easyUiJSonData;
	}

	public String getSaleAfterWeiXiuGuid() {
		return saleAfterWeiXiuGuid;
	}
	public void setSaleAfterWeiXiuGuid(String saleAfterWeiXiuGuid) {
		this.saleAfterWeiXiuGuid = saleAfterWeiXiuGuid;
	}
	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

}