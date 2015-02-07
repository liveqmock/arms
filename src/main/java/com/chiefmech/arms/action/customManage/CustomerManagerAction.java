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
import com.chiefmech.arms.entity.CheLiangInfo;
import com.chiefmech.arms.entity.CustomerInfo;
import com.chiefmech.arms.service.CustomerInfoService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/customManage")
@Controller()
@Scope("prototype")
public class CustomerManagerAction extends BaseActionSupport implements
		ModelDriven<CustomerInfo> {

	@Resource()
	private CustomerInfoService customerInfoService;

	private CustomerInfo item = new CustomerInfo();
	private List<CheLiangInfo> cheLiangInfoLst;
	private String customerId;

	@Action(value = "customerInfo", results = { @Result(name = "input", location = "customerInfo.jsp") })
	public String customerInfo() {
		if (StringUtils.isNotBlank(customerId)) {
			item = customerInfoService.findCustomerInfoById(customerId);
			cheLiangInfoLst = customerInfoService
					.queryCheLiangInfoByCustomerId(customerId);
		} else {
			item.setDdlCustSort("普通客户");
			item.setTxtCaiLiaoZheKou(1);
			item.setTxtGongShiZheKou(1);
		}

		return INPUT;
	}

	@Action(value = "saveCustomerInfo")
	public void saveCustomerInfo() {
		int rowsAffected;
		String info;
		if (StringUtils.isBlank(item.getTxtCustId())) {
			item.setTxtCustId(IDGen.getUUID());
			rowsAffected = customerInfoService.insertCustomerInfo(item);
			info = item.getTxtCustId();
		} else {
			rowsAffected = customerInfoService.updateCustomerInfo(item);
			info = "保存";
		}
		this.transmitJson(getCrudJsonResponse(rowsAffected, info));
	}

	@Override
	public CustomerInfo getModel() {
		return item;
	}

	public CustomerInfo getItem() {
		return item;
	}

	public String getJsonData() {
		return JSONObject.fromObject(item).toString();
	}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public List<CheLiangInfo> getCheLiangInfoLst() {
		return cheLiangInfoLst;
	}

}
