package com.chiefmech.arms.action.saleAfterManage;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
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
	private int page = 1;
	private int rows = 10;
	private String saleAfterGuid;
	private String easyUiJSonData;

	@Action(value = "saleAfterGongDanZhiZuoAddWeiXiuXiangMu", results = {@Result(name = "input", location = "saleAfter_gongDanZhiZuoAddWeiXiuXiangMu.jsp")})
	public String saleAfterGongDanZhiZuoAddWeiXiuXiangMu() {
		easyUiJSonData = gongDanService.getWeiXiuXiangMuEasyUiJSon(item, page,
				rows);
		return INPUT;
	}

	@Action(value = "queryWeiXiuXiangMu")
	public void queryWeiXiuXiangMu() {
		this.transmitJson(gongDanService.getWeiXiuXiangMuEasyUiJSon(item, page,
				rows));
	}

	@Action(value = "addGongDanWeiXiuXiangMu")
	public void addGongDanWeiXiuXiangMu() {
		JSONArray jsonArray = JSONArray.fromObject(easyUiJSonData);
		List<WeiXiuXiangMu> weiXiuXiangMuLst = (List<WeiXiuXiangMu>) JSONArray
				.toList(jsonArray, WeiXiuXiangMu.class);
		int rowAffected = gongDanService.insertGongDanWeiXiuXiangMu(
				saleAfterGuid, weiXiuXiangMuLst);
		String jsonStr = getCrudJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
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

	public String getEasyUiJSonData() {
		return easyUiJSonData;
	}

	public void setEasyUiJSonData(String easyUiJSonData) {
		this.easyUiJSonData = easyUiJSonData;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

}
