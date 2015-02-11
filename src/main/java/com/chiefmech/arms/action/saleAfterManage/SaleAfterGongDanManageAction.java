package com.chiefmech.arms.action.saleAfterManage;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
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

	@Action(value = "saleAfterGongDanManage", results = {@Result(name = "input", location = "saleAfter_GongDanManage.jsp")})
	public String saleAfterGongDanManage() {
		easyUiJSonData = gongDanService.getSaleAfterGongDanEasyUiJSon(query);
		return INPUT;
	}

	@Action(value = "saleAfterGongDanSearch")
	public void saleAfterGongDanSearch() {
		this.transmitJson(gongDanService.getSaleAfterGongDanEasyUiJSon(query));
	}

	@Override
	public SaleAfterGongDanSearchBean getModel() {
		query.setDdlDianPu(this.getUser().getJigouName());
		return query;
	}

	public String getEasyUiJSonData() {
		return easyUiJSonData;
	}

	public void setTabId(int tabId) {
		this.tabId = tabId;
	}

	public int getTabId() {
		return tabId;
	}

}
