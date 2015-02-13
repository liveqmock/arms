package com.chiefmech.arms.action.storeOtherManage;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.query.CaiGouWuLiaoSearchBean;
import com.chiefmech.arms.service.RuKuDanService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/storeOtherManage")
@Controller()
@Scope("prototype")
public class RuKuListManageAction extends BaseActionSupport
		implements
			ModelDriven<CaiGouWuLiaoSearchBean> {

	@Resource()
	private RuKuDanService ruKuDanService;

	private CaiGouWuLiaoSearchBean query = new CaiGouWuLiaoSearchBean();
	private String saleAfterWeiXiuGuid;
	private String ruKuDanGuid;
	private String action;

	@Action(value = "storeOtherInsertBillManage", results = {@Result(name = "input", location = "storeOtherInsertBillManage.jsp")})
	public String storeOtherInsertBillManage() {
		return INPUT;
	}

	@Action(value = "queryRuKuDanWuLiao")
	public void queryRuKuDanWuLiao() {
		query.setTxtRuKuDanGuid(ruKuDanGuid);
		if ("addWuLiao".equals(action)) {
			query.setDdlRuKuSort("临时采购");
			query.setTxtStatus("审核完毕");
		}
		this.transmitJson(ruKuDanService.getRuKuDanEasyUiJSon(query));
	}

	@Override
	public CaiGouWuLiaoSearchBean getModel() {
		query.setDdlDianPu(this.getUser().getJigouName());
		query.setSaleAfterWeiXiuGuid(saleAfterWeiXiuGuid);
		return query;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public String getSaleAfterWeiXiuGuid() {
		return saleAfterWeiXiuGuid;
	}

	public void setSaleAfterWeiXiuGuid(String saleAfterWeiXiuGuid) {
		this.saleAfterWeiXiuGuid = saleAfterWeiXiuGuid;
	}

	public String getRuKuDanGuid() {
		return ruKuDanGuid;
	}

	public void setRuKuDanGuid(String ruKuDanGuid) {
		this.ruKuDanGuid = ruKuDanGuid;
	}

}
