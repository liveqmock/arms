package com.chiefmech.arms.action.saleAfterManage;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.GongDanWeiXiuXiangMu;
import com.chiefmech.arms.entity.WeiXiuXiangMu;
import com.chiefmech.arms.service.GongDanService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterManage")
@Controller()
@Scope("prototype")
public class GongDanZhiZuoAddWeiXiuXiangMuAction extends BaseActionSupport
		implements
			ModelDriven<WeiXiuXiangMu> {

	@Resource()
	private GongDanService gongDanService;

	private WeiXiuXiangMu item = new WeiXiuXiangMu();
	private String saleAfterGuid;
	private String txtWeiXiuXiangMuId;
	private String easyUiJSonData;

	@Action(value = "saleAfterGongDanZhiZuoAddWeiXiuXiangMu", results = {@Result(name = "input", location = "saleAfter_gongDanZhiZuoAddWeiXiuXiangMu.jsp")})
	public String saleAfterGongDanZhiZuoAddWeiXiuXiangMu() {
		easyUiJSonData = gongDanService.getWeiXiuXiangMuEasyUiJSon(item);
		return INPUT;
	}

	@Action(value = "queryWeiXiuXiangMu")
	public void queryWeiXiuXiangMu() {
		this.transmitJson(gongDanService.getWeiXiuXiangMuEasyUiJSon(item));
	}

	@Action(value = "AddGongDanWeiXiuXiangMu")
	public void AddGongDanWeiXiuXiangMu() {
		String statusCode = "failed";

		GongDanWeiXiuXiangMu gongDanWeiXiuXiangMu = new GongDanWeiXiuXiangMu(
				saleAfterGuid, item);
		int rowsAffected = gongDanService
				.insertGongDanWeiXiuXiangMu(gongDanWeiXiuXiangMu);
		if (rowsAffected == 1) {
			statusCode = "success";
		}

		this.transmitJson(String.format("{\"statusCode\":\"%s\"}", statusCode));
	}

	@Action(value = "deleteGongDanWeiXiuXiangMu")
	public void deleteGongDanWeiXiuXiangMu() {
		String statusCode = "failed";
		int rowsAffected = gongDanService
				.deleteGongDanWeiXiuXiangMu(txtWeiXiuXiangMuId);
		if (rowsAffected == 1) {
			statusCode = "ok";
		}

		this.transmitJson(statusCode);
	}

	public String getSaleAfterGuid() {
		return saleAfterGuid;
	}

	public void setSaleAfterGuid(String saleAfterGuid) {
		this.saleAfterGuid = saleAfterGuid;
	}

	@Override
	public WeiXiuXiangMu getModel() {
		return item;
	}

	public WeiXiuXiangMu getQuery() {
		return item;
	}

	public void setTxtWeiXiuXiangMuId(String txtWeiXiuXiangMuId) {
		this.txtWeiXiuXiangMuId = txtWeiXiuXiangMuId;
	}

	public String getEasyUiJSonData() {
		return easyUiJSonData;
	}

}
