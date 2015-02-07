package com.chiefmech.arms.action.customManage;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.entity.CheLiangInfo;
import com.chiefmech.arms.service.CustomerInfoService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/customManage")
@Controller()
@Scope("prototype")
public class CheLiangManageAction extends BaseActionSupport implements
		ModelDriven<CheLiangInfo> {

	@Resource()
	private CustomerInfoService customerInfoService;

	private CheLiangInfo item = new CheLiangInfo();

	@Action(value = "getCheLiangJsonData")
	public void getCheLiangJsonData() {
		this.transmitJson(customerInfoService.getCheLiangJsonData(item));
	}

	@Action(value = "insertCheLiangInfo")
	public void insertItem() {
		item.setTxtCheLiangId(IDGen.getUUID());
		int rowAffected = customerInfoService.insertCheLiangInfo(item);
		this.transmitJson(getCrudJsonResponse(rowAffected, "保存"));
	}

	@Action(value = "updateCheLiangInfo")
	public void updateItem() {
		int rowAffected = customerInfoService.updateCheLiangInfo(item);
		this.transmitJson(getCrudJsonResponse(rowAffected, "保存"));
	}

	@Action(value = "deleteCheLiangInfo")
	public void deleteItem() {
		int rowAffected = customerInfoService.deleteCheLiangInfo(item);
		this.transmitJson(getCrudJsonResponse(rowAffected, "删除"));
	}

	@Override
	public CheLiangInfo getModel() {
		return item;
	}

}
