package com.chiefmech.arms.common.util;


public class HuiYuanUtil {
	public static String getHuiYuanDengJi(int txtHuiYuanJiFen) {
		String txtHuiYuanDengJi;
		if (txtHuiYuanJiFen <= 0) {
			txtHuiYuanDengJi = "注册会员";
		} else if (txtHuiYuanJiFen < 2000) {
			txtHuiYuanDengJi = "铜牌用户";
		} else if (txtHuiYuanJiFen < 10000) {
			txtHuiYuanDengJi = "银牌用户";
		} else if (txtHuiYuanJiFen < 30000) {
			txtHuiYuanDengJi = "金牌用户";
		} else {
			txtHuiYuanDengJi = "钻石用户";
		}
		return txtHuiYuanDengJi;
	}
}
