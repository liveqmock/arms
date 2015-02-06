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
import com.chiefmech.arms.entity.CheZhuLianXiRen;
import com.chiefmech.arms.entity.CustomVehicle;
import com.chiefmech.arms.entity.VehiCleType;
import com.chiefmech.arms.service.CheZhuLianXiRenService;
import com.chiefmech.arms.service.CustomVehicleService;
import com.chiefmech.arms.service.VehiCleTypeService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/customManage")
@Controller()
@Scope("prototype")
public class CheZhuLianXiRenAction extends BaseActionSupport implements
		ModelDriven<CheZhuLianXiRen> {

	@Resource()
	private CheZhuLianXiRenService cheZhuLianXiRenService;
	@Resource()
	private CustomVehicleService customVehicleService;
	@Resource()
	private VehiCleTypeService vehiCleTypeService;

	private List<VehiCleType> VehiCleTypeList;
	private CheZhuLianXiRen item = new CheZhuLianXiRen();
	private List<CustomVehicle> customVehicleLst;
	private CustomVehicle cv;
	private String custId;
	private String vehicleId;
	private int showSort = 1;

	@Action(value = "customNewAdd", results = { @Result(name = "input", location = "customNewAdd.jsp") })
	public String customNewAdd() {
		if (custId != null) {
			item = cheZhuLianXiRenService.findCheZhuLianXiRenById(custId);
			cv=customVehicleService.queryCustomVehicleByVehicleId(vehicleId);
			customVehicleLst = customVehicleService
					.queryCustomVehicleByCustId(custId);
		} else {
			item.setTxtCaiLiaoZheKou(1);
			item.setTxtGongShiZheKou(1);
		}
		
		VehiCleTypeList=vehiCleTypeService.findVehiCleType();
		return INPUT;
	}

	@Action(value = "insertLianXiRenXinXi")
	public void insertLianXiRenXinXi() {
		String statusCode = "failed";
		String info = "保存信息失败";
		int rowsAffected;
		if (StringUtils.isBlank(item.getTxtCustId())) {
			item.setTxtCustId(IDGen.getUUID());
			rowsAffected = cheZhuLianXiRenService.insertCheZhuLianXiRen(item);
			if (rowsAffected == 1) {
				statusCode = "success";
				info = item.getTxtCustId();
			}
		} else {
			rowsAffected = cheZhuLianXiRenService.updateCheZhuLianXiRen(item);
			if (rowsAffected == 1) {
				statusCode = "update";
				info = item.getTxtCustId();
			}
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

	public List<CustomVehicle> getCustomVehicleLst() {
		return customVehicleLst;
	}

	public String getCustId() {
		return custId;
	}

	public String getJsonData() {
		return JSONObject.fromObject(item).toString();	
	}
	
	public String getJsonData2() {
		return JSONObject.fromObject(cv).toString();
	}

	public void setCustId(String custId) {
		this.custId = custId;
	}

	public int getShowSort() {
		return showSort;
	}

	public void setShowSort(int showSort) {
		this.showSort = showSort;
	}

	public void setCustomVehicleLst(List<CustomVehicle> customVehicleLst) {
		this.customVehicleLst = customVehicleLst;
	}

	public List<VehiCleType> getVehiCleTypeList() {
		return VehiCleTypeList;
	}

	public void setVehiCleTypeList(List<VehiCleType> vehiCleTypeList) {
		VehiCleTypeList = vehiCleTypeList;
	}

	public String getVehicleId() {
		return vehicleId;
	}

	public void setVehicleId(String vehicleId) {
		this.vehicleId = vehicleId;
	}

	public CustomVehicle getCv() {
		return cv;
	}

	public void setCv(CustomVehicle cv) {
		this.cv = cv;
	}

}
