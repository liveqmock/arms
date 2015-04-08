package com.chiefmech.arms.action.tool;

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
	private String clsbdh;
	private String djzsbh;
	private String hphm;
	private String captcha;

	@Action(value = "getNewCaptcha")
	public void getNewCaptcha() {
		byte[] picBytes = HttpUtil.getHttpEntityByteArray(HttpUtil
				.doGet("http://210.76.69.58/wfcx/captcha/_queryCph.jsp?random="
						+ System.currentTimeMillis()));
		transmitImage(picBytes, "JPEG");
	}

	@Action(value = "queryTrafficViolationResult")
	public void queryTrafficViolationResult() {
		String url = "http://210.76.69.58/wfcx/_queryCph.jsp?clsbdh=" + clsbdh
				+ "&djzsbh=" + djzsbh + "&hphm=" + hphm + "&hpzl=02&captcha="
				+ captcha + "&random=" + System.currentTimeMillis();
		String result = HttpUtil.getHttpEntityString(HttpUtil.doGet(url));
		this.transmitPlainText(result);
	}

	public String getClsbdh() {
		return clsbdh;
	}

	public void setClsbdh(String clsbdh) {
		this.clsbdh = clsbdh;
	}

	public String getDjzsbh() {
		return djzsbh;
	}

	public void setDjzsbh(String djzsbh) {
		this.djzsbh = djzsbh;
	}

	public String getHphm() {
		return hphm;
	}

	public void setHphm(String hphm) {
		this.hphm = hphm;
	}

	public String getCaptcha() {
		return captcha;
	}

	public void setCaptcha(String captcha) {
		this.captcha = captcha;
	}

}
