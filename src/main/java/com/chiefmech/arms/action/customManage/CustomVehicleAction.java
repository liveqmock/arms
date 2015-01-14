package com.chiefmech.arms.action.customManage;

import java.util.UUID;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.CustomVehicle;
import com.chiefmech.arms.service.CustomVehicleService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/customManage")
@Controller()
@Scope("prototype")
public class CustomVehicleAction extends BaseActionSupport
		implements
			ModelDriven<CustomVehicle> {

	@Resource()
	private CustomVehicleService customVehicleService;

	private CustomVehicle item = new CustomVehicle();

	@Action(value = "customNewVehicleAdd", results = {@Result(name = "input", location = "customNewVehicleAdd.jsp")})
	public String customNewVehicleAdd() {
		return INPUT;
	}

	@Action(value = "saveCustomNewVehicle")
	public void saveCustomNewVehicle() {
		String statusCode = "failed";
		String info = "保存信息失败";

		int rowsAffected;
		if (StringUtils.isBlank(item.getTxtVehicleId())) {
			item.setTxtVehicleId(UUID.randomUUID().toString().toUpperCase());
			rowsAffected = customVehicleService.insertCustomVehicle(item);
		} else {
			rowsAffected = customVehicleService.updateCustomVehicle(item);
		}
		if (rowsAffected == 1) {
			statusCode = "success";
			info = item.getTxtVehicleId();
		}

		this.transmitJson(String.format(
				"{\"statusCode\":\"%s\", \"info\":\"%s\"}", statusCode, info));
	}

	@Override
	public CustomVehicle getModel() {
		return item;
	}

}
