package com.chiefmech.arms.action.customManage;

import java.util.UUID;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.LianXiRenXinXi;
import com.chiefmech.arms.service.LianXiRenService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/customManage")
@Controller()
@Scope("prototype")
public class LianXiRenAction extends BaseActionSupport implements
		ModelDriven<LianXiRenXinXi> {

	@Resource()
	private LianXiRenService lianXiRenService;

	private LianXiRenXinXi lianXiRen = new LianXiRenXinXi();

	@Action(value = "customNewAdd", results = { @Result(name = "input", location = "customNewAdd.jsp") })
	public String userPersonalChange() {
		return INPUT;
	}

	@Action(value = "insertLianXiRenXinXi")
	public void insertLianXiRenXinXi() {
		String statusCode = "failed";
		String info = "保存信息失败";

		lianXiRen.setTxtLianXiRenId(UUID.randomUUID().toString().toUpperCase());
		int rowsAffected = lianXiRenService.insertLianXiRen(lianXiRen);
		if (rowsAffected == 1) {
			statusCode = "success";
			info = lianXiRen.getTxtLianXiRenId();
		}

		this.transmitJson(String.format(
				"{\"statusCode\":\"%s\", \"info\":\"%s\"}", statusCode, info));
	}

	@Override
	public LianXiRenXinXi getModel() {
		return lianXiRen;
	}

}
