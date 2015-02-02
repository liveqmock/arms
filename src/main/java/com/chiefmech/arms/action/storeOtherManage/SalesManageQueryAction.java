package com.chiefmech.arms.action.storeOtherManage;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.query.XiaoShouManageSearchBean;
import com.chiefmech.arms.service.XiaoShouManageSearchService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/storeOtherManage")
@Controller()
@Scope("prototype")
public class SalesManageQueryAction extends BaseActionSupport
implements ModelDriven<XiaoShouManageSearchBean>{
	
	@Resource()
	private XiaoShouManageSearchService xiaoShouManageSearchService;
	
	private XiaoShouManageSearchBean query = new XiaoShouManageSearchBean();
	
	@Action(value = "XiaoShouManage", results = { @Result(name = "input", location = "XiaoShouManage.jsp") })
	public String storeOtherInsertBillManage() {
		return INPUT;
	}
	
	@Action(value = "queryXiaoShouManageSearch")
	public void queryXiaoShouManageSearch() {
		this.transmitJson(xiaoShouManageSearchService.getXiaoShouManageSearchEasyUiJSon(query));
	}
	
	@Override
	public XiaoShouManageSearchBean getModel() {
		return query;
	}

}
