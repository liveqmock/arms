package com.chiefmech.arms.action.data;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/data")
@Controller()
@Scope("prototype")
public class CommonDataAction extends BaseActionSupport {

	@Action(value = "weiXiuGongDuanOption")
	public void weiXiuGongDuan() {
		this.transmitJson(getJsonData("data/weiXiuGongDuan.json"));
	}

	@Action(value = "zhangTaoOption")
	public void zhangTao() {
		this.transmitJson(getJsonData("data/zhangTao.json"));
	}

	@Action(value = "weiXiuBanZuOption")
	public void weiXiuBanZu() {
		this.transmitJson(getJsonData("data/weiXiuBanZu.json"));
	}

	@Action(value = "weiXiuZhuXiuRenOption")
	public void weiXiuZhuXiuRen() {
		this.transmitJson(getJsonData("data/weiXiuZhuXiuRen.json"));
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
