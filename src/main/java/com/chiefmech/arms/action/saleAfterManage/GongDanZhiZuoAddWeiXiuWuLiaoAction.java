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
import com.chiefmech.arms.entity.WeiXiuWuLiao;
import com.chiefmech.arms.service.GongDanService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterManage")
@Controller()
@Scope("prototype")
public class GongDanZhiZuoAddWeiXiuWuLiaoAction extends BaseActionSupport
		implements ModelDriven<WeiXiuWuLiao> {

	@Resource()
	private GongDanService gongDanService;

	private WeiXiuWuLiao item = new WeiXiuWuLiao();
	private int page = 1;
	private int rows = 10;
	private String saleAfterGuid;
	private String easyUiJSonData;

	@Action(value = "saleAfterGongDanZhiZuoAddWeiXiuWuLiao", results = { @Result(name = "input", location = "saleAfter_gongDanZhiZuoAddWeiXiuWuLiao.jsp") })
	public String saleAfterGongDanZhiZuoAddWeiXiuWuLiao() {
		return INPUT;
	}

	@Action(value = "queryWeiXiuWuLiao")
	public void queryWeiXiuWuLiao() {
		this.transmitJson(gongDanService.getWeiXiuWuLiaoEasyUiJSon(item, page,
				rows));
	}

	@Action(value = "addGongDanWeiXiuWuLiao")
	public void addGongDanWeiXiuWuLiao() {
		JSONArray jsonArray = JSONArray.fromObject(easyUiJSonData);
		List<WeiXiuWuLiao> weiXiuWuLiaoLst = (List<WeiXiuWuLiao>) JSONArray
				.toList(jsonArray, WeiXiuWuLiao.class);
		int rowAffected = gongDanService.insertGongDanWeiXiuWuLiao(
				saleAfterGuid, weiXiuWuLiaoLst);
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
	public WeiXiuWuLiao getModel() {
		return item;
	}

	public WeiXiuWuLiao getQuery() {
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
