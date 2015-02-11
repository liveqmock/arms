package com.chiefmech.arms.action.saleAfterManage;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.query.SaleAfterCustomSearchBean;
import com.chiefmech.arms.service.CustomerInfoService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterManage")
@Controller()
@Scope("prototype")
public class CustomSearchAction extends BaseActionSupport
		implements
			ModelDriven<SaleAfterCustomSearchBean> {

	@Resource()
	private CustomerInfoService cheZhuLianXiRenService;

	private SaleAfterCustomSearchBean query = new SaleAfterCustomSearchBean();

	@Action(value = "saleAfterCustomSearch", results = {@Result(name = "input", location = "saleAfter_CustomSearch.jsp")})
	public String saleAfterCustomSearch() {
		return INPUT;
	}

	@Action(value = "customerSearch")
	public void customerSearch() {
		this.transmitJson(cheZhuLianXiRenService
				.getVKeHuCheLiangEasyUiJSon(query));
	}

	@Override
	public SaleAfterCustomSearchBean getModel() {
		query.setDdlDianPu(this.getUser().getJigouName());
		return query;
	}

}
