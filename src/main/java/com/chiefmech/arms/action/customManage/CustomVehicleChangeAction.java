package com.chiefmech.arms.action.customManage;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.CheZhuLianXiRen;
import com.chiefmech.arms.entity.view.VKeHuCheLiang;
import com.chiefmech.arms.service.CheZhuLianXiRenService;
import com.chiefmech.arms.service.CustomVehicleService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/customManage")
@Controller()
@Scope("prototype")
public class CustomVehicleChangeAction extends BaseActionSupport
		implements
			ModelDriven<VKeHuCheLiang> {

	@Resource()
	private CheZhuLianXiRenService cheZhuLianXiRenService;
	@Resource()
	private CustomVehicleService customVehicleService;

	private CheZhuLianXiRen customer = new CheZhuLianXiRen();
	private List<VKeHuCheLiang> customVehicleLst;
	private VKeHuCheLiang query = new VKeHuCheLiang();
	private String custId;

	@Action(value = "customVehicleChange", results = {@Result(name = "input", location = "customVehicleChange.jsp")})
	public String customVehicleChange() {
		customer = cheZhuLianXiRenService.findCheZhuLianXiRenById(custId);
		customVehicleLst = cheZhuLianXiRenService.queryVKeHuCheLiang(query);
		return INPUT;
	}

	@Action(value = "changeCarOwner")
	public void changeCarOwner() {
		String newCustId = query.getTxtCustId();
		String vehicleId = query.getTxtVehicleId();
		int rowsAffected = customVehicleService.changeCarOwner(newCustId,
				vehicleId);

		String statusCode = "failed";
		if (rowsAffected == 1) {
			statusCode = "success";
		}

		this.transmitJson(String.format("{\"statusCode\":\"%s\"}", statusCode));
	}

	@Override
	public VKeHuCheLiang getModel() {
		return query;
	}

	public void setCustId(String custId) {
		this.custId = custId;
	}

	public CheZhuLianXiRen getCustomer() {
		return customer;
	}

	public List<VKeHuCheLiang> getCustomVehicleLst() {
		return customVehicleLst;
	}

	public VKeHuCheLiang getQuery() {
		return query;
	}

}
