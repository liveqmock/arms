package com.chiefmech.arms.action.saleAfterManage;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.entity.GongDanWeiXiuXiangMu;
import com.chiefmech.arms.service.GongDanService;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterManage")
@Controller()
@Scope("prototype")
public class SaleAfterGongDanZhiZuoAction extends BaseActionSupport {

	@Resource()
	private GongDanService gongDanService;

	private String saleAfterWeiXiuGuid;
	private String txtWeiXiuXiangMuId;
	private String easyUiJSonData;

	@Action(value = "saleAfterGongDanZhiZuo", results = {@Result(name = "input", location = "saleAfter_gongDanZhiZuo.jsp")})
	public String saleAfterWeiXiuJieDai() {
		return INPUT;
	}

	@Action(value = "queryGongDanWeiXiuXiangMu")
	public void queryGongDanWeiXiuXiangMu() {
		this.transmitJson(easyUiJSonData = gongDanService
				.getWeiXiuXiangMuEasyUiJSonByGongDanId(saleAfterWeiXiuGuid));
	}

	@Action(value = "deleteGongDanWeiXiuXiangMu")
	public void deleteGongDanWeiXiuXiangMu() {
		int rowAffected = gongDanService
				.deleteGongDanWeiXiuXiangMu(txtWeiXiuXiangMuId);
		String jsonStr = getCrudJsonResponse(rowAffected, "删除");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateGongDanWeiXiuXiangMu")
	public void updateGongDanWeiXiuXiangMu() {
		JSONObject jsonObject = JSONObject.fromObject(easyUiJSonData);
		GongDanWeiXiuXiangMu gongDanWeiXiuXiangMu = (GongDanWeiXiuXiangMu) JSONObject
				.toBean(jsonObject, GongDanWeiXiuXiangMu.class);
		int rowAffected = gongDanService
				.updateGongDanWeiXiuXiangMuWhenZhiZuo(gongDanWeiXiuXiangMu);
		String jsonStr = getCrudJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	public void setTxtWeiXiuXiangMuId(String txtWeiXiuXiangMuId) {
		this.txtWeiXiuXiangMuId = txtWeiXiuXiangMuId;
	}

	public String getSaleAfterWeiXiuGuid() {
		return saleAfterWeiXiuGuid;
	}

	public void setSaleAfterWeiXiuGuid(String saleAfterWeiXiuGuid) {
		this.saleAfterWeiXiuGuid = saleAfterWeiXiuGuid;
	}

	public String getEasyUiJSonData() {
		return easyUiJSonData;
	}

}
