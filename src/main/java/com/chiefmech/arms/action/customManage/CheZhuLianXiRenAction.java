package com.chiefmech.arms.action.customManage;

import java.util.UUID;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.CheZhuLianXiRen;
import com.chiefmech.arms.service.CheZhuLianXiRenService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/customManage")
@Controller()
@Scope("prototype")
public class CheZhuLianXiRenAction extends BaseActionSupport
		implements
			ModelDriven<CheZhuLianXiRen> {

	@Resource()
	private CheZhuLianXiRenService cheZhuLianXiRenService;

	private CheZhuLianXiRen item = new CheZhuLianXiRen();

	@Action(value = "customNewAdd", results = {@Result(name = "input", location = "customNewAdd.jsp")})
	public String userPersonalChange() {
		return INPUT;
	}

	@Action(value = "insertLianXiRenXinXi")
	public void insertLianXiRenXinXi() {
		String statusCode = "failed";
		String info = "保存信息失败";

		int rowsAffected;
		if (StringUtils.isBlank(item.getTxtCustId())) {
			item.setTxtCustId(UUID.randomUUID().toString().toUpperCase());
			rowsAffected = cheZhuLianXiRenService.insertCheZhuLianXiRen(item);
		} else {
			rowsAffected = cheZhuLianXiRenService.updateCheZhuLianXiRen(item);
		}
		if (rowsAffected == 1) {
			statusCode = "success";
			info = item.getTxtCustId();
		}

		this.transmitJson(String.format(
				"{\"statusCode\":\"%s\", \"info\":\"%s\"}", statusCode, info));
	}

	@Override
	public CheZhuLianXiRen getModel() {
		return item;
	}

	public CheZhuLianXiRen getItem() {
		return item;
	}

	public String getJsonData() {
		return JSONObject.fromObject(item).toString();
	}

}
