package com.chiefmech.arms.test.Test;

import com.chiefmech.arms.common.util.HttpUtil;

public class test {
	public static void main(String[] args) {
		HttpUtil.getHttpEntityByteArray(HttpUtil
				.doGet("http://210.76.69.58/wfcx/captcha/_queryCph.jsp?random="
						+ System.currentTimeMillis()));
		String msg = HttpUtil
				.getHttpEntityString(HttpUtil
						.doGet("http://210.76.69.58/wfcx/_queryCph.jsp?captcha=0844&clsbdh=123456&djzsbh=2334551&hphm=12345&hpzl=02&time="
								+ System.currentTimeMillis(), 60));
		System.out.println(msg);
	}
}
