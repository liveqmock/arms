package com.chiefmech.arms.action.saleAfterManage;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.GongDan;
import com.chiefmech.arms.entity.view.VKeHuCheLiang;
import com.chiefmech.arms.service.CheZhuLianXiRenService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterManage")
@Controller()
@Scope("prototype")
public class WeiXiuJieDaiDaoHangAction extends BaseActionSupport {

	@Resource()
	private CheZhuLianXiRenService cheZhuLianXiRenService;

	private String vehicleId;
	private VKeHuCheLiang customer;

	@Action(value = "saleAfterWeiXiuJieDaiDaoHang", results = {@Result(name = "input", location = "saleAfterWeiXiuJieDaiDaoHang.jsp")})
	public String saleAfterWeiXiuJieDaiDaoHang() {
		customer = cheZhuLianXiRenService
				.findVKeHuCheLiangByVehicleId(vehicleId);
		return INPUT;
	}

	public VKeHuCheLiang getCustomer() {
		return customer;
	}

	public void setVehicleId(String vehicleId) {
		this.vehicleId = vehicleId;
	}

}
