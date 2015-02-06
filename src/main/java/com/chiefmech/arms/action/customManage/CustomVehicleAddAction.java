package com.chiefmech.arms.action.customManage;

import java.util.List;
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
import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.entity.CustomVehicle;
import com.chiefmech.arms.entity.VehiCleType;
import com.chiefmech.arms.service.CarService;
import com.chiefmech.arms.service.CustomVehicleService;
import com.chiefmech.arms.service.VehiCleTypeService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/customManage")
@Controller()
@Scope("prototype")
public class CustomVehicleAddAction extends BaseActionSupport implements
		ModelDriven<CustomVehicle> {

	@Resource()
	private CustomVehicleService customVehicleService;

	@Resource()
	private CarService carService;

	@Resource()
	private VehiCleTypeService vehiCleTypeService;

	private String brandName;
	private List<VehiCleType> VehiCleTypeList;
	private CustomVehicle item = new CustomVehicle();
	private String custId;
	private String vehicleId;
	private String txtCustId2;

	@Action(value = "customNewVehicleAdd", results = { @Result(name = "input", location = "customNewVehicleAdd.jsp") })
	public String customNewVehicleAdd() {
		VehiCleTypeList = vehiCleTypeService.findVehiCleType();
		if (vehicleId != null) {
			item = customVehicleService
					.queryCustomVehicleByVehicleId(vehicleId);
		} else {
			item.setTxtCustId(custId);
		}
		return INPUT;
	}

	@Action(value = "saveCustomNewVehicle")
	public void saveCustomNewVehicle() {
		String statusCode = "failed";
		String info = "保存信息失败";

		int rowsAffected;
		if (StringUtils.isBlank(item.getTxtVehicleId())) {
			item.setTxtVehicleId(IDGen.getUUID());
			item.setTxtCustId(txtCustId2);
			rowsAffected = customVehicleService.insertCustomVehicle(item);
			if (rowsAffected == 1) {
				statusCode = "success";
				info = item.getTxtVehicleId();
			}
		} else {
			item.setTxtCustId(txtCustId2);
			rowsAffected = customVehicleService.updateCustomVehicle(item);
			if (rowsAffected == 1) {
				statusCode = "update";
				info = item.getTxtVehicleId();
			}
		}
		this.transmitJson(String.format(
				"{\"statusCode\":\"%s\", \"info\":\"%s\"}", statusCode, info));
	}

	@Override
	public CustomVehicle getModel() {
		return item;
	}

	public String getJsonData() {
		return JSONObject.fromObject(item).toString();
	}

	public void setCustId(String custId) {
		this.custId = custId;
	}

	public String getBrandName() {
		return brandName;
	}

	public void setVehicleId(String vehicleId) {
		this.vehicleId = vehicleId;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

	public List<VehiCleType> getVehiCleTypeList() {
		return VehiCleTypeList;
	}

	public void setVehiCleTypeList(List<VehiCleType> vehiCleTypeList) {
		VehiCleTypeList = vehiCleTypeList;
	}

	public String getTxtCustId2() {
		return txtCustId2;
	}

	public void setTxtCustId2(String txtCustId2) {
		this.txtCustId2 = txtCustId2;
	}	
}
