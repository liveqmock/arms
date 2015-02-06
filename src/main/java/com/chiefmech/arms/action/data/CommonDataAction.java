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
}
