package com.chiefmech.arms.action.tool;

import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.HttpUtil;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/tool")
@Controller()
@Scope("prototype")
public class TrafficViolationQuery extends BaseActionSupport {

	private String checkCode;
	private String engineNoLast4;
	private String numLast4;
	private String number;

	@Action(value = "getNewCaptcha")
	public void getNewCaptcha() {
		String url = "http://www.24pay.net/ValidateCode.htm?type=";
		byte[] picBytes = HttpUtil.getHttpEntityByteArray(HttpUtil.doGet(url
				+ System.currentTimeMillis()));
		transmitImage(picBytes, "JPEG");
	}

	@Action(value = "queryTrafficViolationResult")
	public void queryTrafficViolationResult() {
		String url = "http://www.24pay.net/tp/query.htm";
		Map<String, String> maps = new HashMap<String, String>();
		maps.put("blockId", "");
		maps.put("checkKey", String.valueOf(System.currentTimeMillis()));
		maps.put("infoArgument", "simple:,,,,A,");
		maps.put("queryKey", "20140109210513");
		maps.put("sid", "");
		maps.put("vehicle.color", "B");
		maps.put("vehicle.type", "02");
		maps.put("checkCode", checkCode);
		maps.put("vehicle.engineNoLast4", engineNoLast4);
		maps.put("vehicle.numLast4", numLast4);
		maps.put("vehicle.number", number);

		String result = HttpUtil
				.getHttpEntityString(HttpUtil.doPost(url, maps));
		this.transmitPlainText(result);
	}
	public String getCheckCode() {
		return checkCode;
	}

	public void setCheckCode(String checkCode) {
		this.checkCode = checkCode;
	}

	public String getEngineNoLast4() {
		return engineNoLast4;
	}

	public void setEngineNoLast4(String engineNoLast4) {
		this.engineNoLast4 = engineNoLast4;
	}

	public String getNumLast4() {
		return numLast4;
	}

	public void setNumLast4(String numLast4) {
		this.numLast4 = numLast4;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

}
