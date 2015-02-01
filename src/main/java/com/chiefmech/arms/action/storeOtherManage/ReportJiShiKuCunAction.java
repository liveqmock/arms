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
import com.chiefmech.arms.entity.JiShiKuCun;
import com.chiefmech.arms.entity.Store;
import com.chiefmech.arms.service.JiShiKuCunService;
import com.chiefmech.arms.service.StoreService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/storeOtherManage")
@Controller()
@Scope("prototype")
public class ReportJiShiKuCunAction extends BaseActionSupport implements
		ModelDriven<JiShiKuCun> {

	@Resource()
	private JiShiKuCunService jiShiKuCunService;
	
    @Resource()
	private StoreService storeService; 
	
	private JiShiKuCun query = new JiShiKuCun();
	private List<Store> storeLst;
	private int page;
	private int rows;

	@Action(value = "reportJiShiKuCun", results = { @Result(name = "input", location = "storeOtherReportJiShiKuCun.jsp") })
	public String reportJiShiKuCun() {
		storeLst=storeService.selectItem();
		return INPUT;
	}

	@Action(value = "queryJiShiKuCun")
	public void queryJiShiKuCun() {
		this.transmitJson(jiShiKuCunService.getJiShiKuCunEasyUiJSon(query,
				page, rows));
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	@Override
	public JiShiKuCun getModel() {
		return query;
	}

	public List<Store> getStoreLst() {
		return storeLst;
	}

	public void setStoreLst(List<Store> storeLst) {
		this.storeLst = storeLst;
	}
}
