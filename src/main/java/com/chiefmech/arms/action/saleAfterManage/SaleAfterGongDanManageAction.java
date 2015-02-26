package com.chiefmech.arms.action.saleAfterManage;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Actions;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.GongDan;
import com.chiefmech.arms.entity.query.SaleAfterGongDanSearchBean;
import com.chiefmech.arms.service.GongDanService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterManage")
@Controller()
@Scope("prototype")
public class SaleAfterGongDanManageAction extends BaseActionSupport
		implements
			ModelDriven<SaleAfterGongDanSearchBean> {

	@Resource()
	private GongDanService gongDanService;

	private SaleAfterGongDanSearchBean query = new SaleAfterGongDanSearchBean();
	private String easyUiJSonData;
	private int tabId = 1;

	@Actions({
			@Action(value = "saleAfterGongDanManage", results = {@Result(name = "input", location = "saleAfter_GongDanManage.jsp")}),
			@Action(value = "clientReviewManage", results = {@Result(name = "input", location = "saleAfter_GongDanManage.jsp")})})
	public String saleAfterGongDanManage() {
		if ("clientReviewManage".equals(this.getActionName())) {
			query.setTxtGongDanStatus("交车");
		}
		easyUiJSonData = gongDanService.getSaleAfterGongDanEasyUiJSon(query);
		return INPUT;
	}

	@Actions({
	@Action(value = "saleAfterGongDanSearch"),
	@Action(value = "clientReviewSearch")})
	public void saleAfterGongDanSearch() {
		if ("clientReviewSearch".equals(this.getActionName())) {
			query.setTxtGongDanStatus("交车");
		}
		this.transmitJson(gongDanService.getSaleAfterGongDanEasyUiJSon(query));
	}

	@Action(value = "updateGongDanReviewStatus")
	public void updateGongDanReviewStatus() {
		JSONObject jsonObject = JSONObject.fromObject(easyUiJSonData);
		GongDan item = (GongDan) JSONObject.toBean(
				jsonObject, GongDan.class);
		int rowAffected = gongDanService.updateGongDanReviewStatus(item);
		String jsonStr = getCrudJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Override
	public SaleAfterGongDanSearchBean getModel() {
		return query;
	}

	public String getEasyUiJSonData() {
		return easyUiJSonData;
	}

	public void setEasyUiJSonData(String easyUiJSonData) {
		this.easyUiJSonData = easyUiJSonData;
	}

	public void setTabId(int tabId) {
		this.tabId = tabId;
	}

	public int getTabId() {
		return tabId;
	}

}
