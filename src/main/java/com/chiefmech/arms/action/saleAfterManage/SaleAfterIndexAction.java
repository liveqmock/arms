package com.chiefmech.arms.action.saleAfterManage;

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
import com.chiefmech.arms.entity.GongDan;
import com.chiefmech.arms.entity.view.VKeHuCheLiang;
import com.chiefmech.arms.service.CheZhuLianXiRenService;
import com.chiefmech.arms.service.GongDanService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterManage")
@Controller()
@Scope("prototype")
public class SaleAfterIndexAction extends BaseActionSupport
		implements
			ModelDriven<GongDan> {

	@Resource()
	private GongDanService gongDanService;
	@Resource()
	private CheZhuLianXiRenService cheZhuLianXiRenService;

	private GongDan gongDan = new GongDan();
	private String saleAfterWeiXiuGuid;
	private String vehicleId;
	private VKeHuCheLiang customer;

	@Action(value = "saleAfterIndex", results = {@Result(name = "input", location = "saleAfter_Index.jsp")})
	public String saleAfterIndex() {
		customer = cheZhuLianXiRenService
				.findVKeHuCheLiangByVehicleId(vehicleId);
		return INPUT;
	}

	@Action(value = "saleAfterWeiXiuJieDai", results = {@Result(name = "input", location = "saleAfter_weiXiuJieDai.jsp")})
	public String saleAfterWeiXiuJieDai() {
		if (StringUtils.isNoneBlank(saleAfterWeiXiuGuid)) {
			gongDan = gongDanService
					.findGongDanByWeiXiuGuid(saleAfterWeiXiuGuid);
		} else {
			customer = cheZhuLianXiRenService
					.findVKeHuCheLiangByVehicleId(vehicleId);
			gongDan = new GongDan(customer);
		}
		return INPUT;
	}

	public VKeHuCheLiang getCustomer() {
		return customer;
	}

	public void setVehicleId(String vehicleId) {
		this.vehicleId = vehicleId;
	}

	public void setSaleAfterWeiXiuGuid(String saleAfterWeiXiuGuid) {
		this.saleAfterWeiXiuGuid = saleAfterWeiXiuGuid;
	}

	@Override
	public GongDan getModel() {
		return gongDan;
	}

	public String getJsonData() {
		return JSONObject.fromObject(gongDan).toString();
	}

}
