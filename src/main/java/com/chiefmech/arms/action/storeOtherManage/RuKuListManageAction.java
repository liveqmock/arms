package com.chiefmech.arms.action.storeOtherManage;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.query.RuKuDanSearchBean;
import com.chiefmech.arms.service.RuKuDanService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/storeOtherManage")
@Controller()
@Scope("prototype")
public class RuKuListManageAction extends BaseActionSupport
		implements
			ModelDriven<RuKuDanSearchBean> {

	@Resource()
	private RuKuDanService ruKuDanService;

	private RuKuDanSearchBean query = new RuKuDanSearchBean();
	private String action;

	@Action(value = "storeOtherInsertBillManage", results = {@Result(name = "input", location = "storeOtherInsertBillManage.jsp")})
	public String storeOtherInsertBillManage() {
		return INPUT;
	}

	@Action(value = "queryRuKuDanWuLiao")
	public void queryRuKuDanWuLiao() {
		this.transmitJson(ruKuDanService.getRuKuDanEasyUiJSon(query));
	}

	@Override
	public RuKuDanSearchBean getModel() {
		query.setDdlDianPu(this.getUser().getJigouName());
		return query;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

}
