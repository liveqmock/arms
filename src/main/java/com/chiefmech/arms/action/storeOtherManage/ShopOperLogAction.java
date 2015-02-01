package com.chiefmech.arms.action.storeOtherManage;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.Store;
import com.chiefmech.arms.entity.query.ShopOperLogSearchBean;
import com.chiefmech.arms.service.ShopOperLogService;
import com.chiefmech.arms.service.StoreService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/storeOtherManage")
@Controller()
@Scope("prototype")
public class ShopOperLogAction extends BaseActionSupport implements
		ModelDriven<ShopOperLogSearchBean> {

	@Resource()
	private ShopOperLogService shopOperLogService;

	@Resource()
	private StoreService storeService;

	private ShopOperLogSearchBean query = new ShopOperLogSearchBean();
	private List<Store> storeLst;

	@Action(value = "shopOperLog", results = { @Result(name = "input", location = "storeOtherReportOperLog.jsp") })
	public String shopOperLog() {
		storeLst = storeService.selectItem();
		return INPUT;
	}

	@Action(value = "queryShopOperLog")
	public void queryShopOperLog() {
		this.transmitJson(shopOperLogService.getShopOperLogEasyUiJSon(query));
	}

	public List<Store> getStoreLst() {
		return storeLst;
	}

	public void setStoreLst(List<Store> storeLst) {
		this.storeLst = storeLst;
	}

	@Override
	public ShopOperLogSearchBean getModel() {
		return query;
	}

}
