package com.chiefmech.arms.action.storeOtherManage;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.query.ExceptionManageSearchBean;
import com.chiefmech.arms.service.ExceptionManageQueryService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/storeOtherManage")
@Controller()
@Scope("prototype")
public class ExceptionManageQueryAction extends BaseActionSupport
implements ModelDriven<ExceptionManageSearchBean>{
	
	@Resource()
	private ExceptionManageQueryService exceptionManageQueryService;
	
	private ExceptionManageSearchBean query = new ExceptionManageSearchBean();
	
	@Action(value = "ExceptionManage", results = { @Result(name = "input", location = "exceptionManage.jsp") })
	public String exceptionManage() {
		return INPUT;
	}
	
	@Action(value = "ExceptionManageQuery")
	public void queryExceptionManage() {
		this.transmitJson(exceptionManageQueryService.getExceptionManageQueryEasyUiJSon(query));
	}
	
	@Override
	public ExceptionManageSearchBean getModel() {
		return query;
	}

}
