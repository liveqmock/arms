package com.chiefmech.arms.action.data;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.service.CommonDataService;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/data")
@Controller()
@Scope("prototype")
public class CommonDataAction extends BaseActionSupport {

	@Resource()
	private CommonDataService commonDataService;

	private String cheLiangBrandName;

	private String saleAfterWeiXiuGuid;

	@Action(value = "weiXiuGongDuanOption")
	public void weiXiuGongDuan() {
		this.transmitJson(getJsonData("data/weiXiuGongDuan.json"));
	}

	@Action(value = "zhangTaoOption")
	public void zhangTao() {
		this.transmitJson(getJsonData("data/zhangTao.json"));
	}

	@Action(value = "chuRuKuSortOption")
	public void chuRuKuSort() {
		this.transmitJson(getJsonData("data/chuRuKuSort.json"));
	}

	@Action(value = "weiXiuSortOption")
	public void weiXiuSort() {
		this.transmitJson(getJsonData("data/weiXiuSort.json"));
	}

	@Action(value = "cheLiangSortOption")
	public void cheLiangSort() {
		this.transmitJson(getJsonData("data/cheLiangSort.json"));
	}

	@Action(value = "customerSortOption")
	public void customerSort() {
		this.transmitJson(getJsonData("data/customerSort.json"));
	}

	@Action(value = "peiJianChangKuOption")
	public void peiJianChangKu() {
		this.transmitJson(JSONArray.fromObject(
				commonDataService.getOptionBean("ChangKu")).toString());
	}

	@Action(value = "gongYingShangOption")
	public void gongYingShang() {
		this.transmitJson(JSONArray.fromObject(
				commonDataService.getOptionBean("GongYingShang")).toString());
	}

	@Action(value = "weiXiuBanZuOption")
	public void weiXiuBanZu() {
		Map<String, String> param = new HashMap<String, String>();
		param.put("SuoShuJiGou", this.getUser().getJigouName());
		this.transmitJson(JSONArray.fromObject(
				commonDataService.getOptionBean("WeiXiuZu", param)).toString());
	}

	@Action(value = "jiGouOption")
	public void jiGou() {
		this.transmitJson(JSONArray.fromObject(
				commonDataService.getOptionBean("JiGou")).toString());
	}

	@Action(value = "cheLiangPingPaiOption")
	public void cheLiangPingPai() {
		this.transmitJson(JSONArray.fromObject(
				commonDataService.getOptionBean("CheLiangPingPai")).toString());
	}

	@Action(value = "cheLiangCheXiOption")
	public void cheLiangCheXi() {
		Map<String, String> param = new HashMap<String, String>();
		param.put("CheLiangBrandName", cheLiangBrandName);
		this.transmitJson(JSONArray.fromObject(
				commonDataService.getOptionBean("CheLiangCheXi", param))
				.toString());
	}

	@Action(value = "gongDanXiangMuOption")
	public void gongDanXiangMuOption() {
		Map<String, String> param = new HashMap<String, String>();
		param.put("saleAfterWeiXiuGuid", saleAfterWeiXiuGuid);
		this.transmitJson(JSONArray.fromObject(
				commonDataService.getOptionBean("GongDanXiangMu", param))
				.toString());
	}

	private String getJsonData(String path) {
		String jsonStr = "[]";
		try {
			File file = new File(this.getClass().getClassLoader()
					.getResource(path).getPath());
			jsonStr = FileUtils.readFileToString(file);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return jsonStr;
	}

	public void setCheLiangBrandName(String cheLiangBrandName) {
		this.cheLiangBrandName = cheLiangBrandName;
	}

	public void setSaleAfterWeiXiuGuid(String saleAfterWeiXiuGuid) {
		this.saleAfterWeiXiuGuid = saleAfterWeiXiuGuid;
	}

}
