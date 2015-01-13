package com.chiefmech.arms.test.entity;

import junit.framework.TestCase;
import net.sf.json.JSONObject;

import com.chiefmech.arms.entity.CheZhuLianXiRen;

public class CheZhuLianXiRenTest extends TestCase {

	public void testJsonData() {
		CheZhuLianXiRen item = new CheZhuLianXiRen();
		System.out.println(JSONObject.fromObject(item).toString());
	}
}
