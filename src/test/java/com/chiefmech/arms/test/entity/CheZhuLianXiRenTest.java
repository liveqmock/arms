package com.chiefmech.arms.test.entity;

import junit.framework.TestCase;
import net.sf.json.JSONObject;

import com.chiefmech.arms.entity.CustomerInfo;

public class CheZhuLianXiRenTest extends TestCase {

	public void testJsonData() {
		CustomerInfo item = new CustomerInfo();
		System.out.println(JSONObject.fromObject(item).toString());
	}
}
