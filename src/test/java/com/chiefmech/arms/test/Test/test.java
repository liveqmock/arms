package com.chiefmech.arms.test.Test;

import com.chiefmech.arms.common.util.IDGen;

public class test {
	public static void main(String[] args) {
		for (int i = 0; i < 30; i++) {
			System.out
					.println(String.format(
							"insert into taoka(txtguid)values('%s');",
							IDGen.getUUID()));
		}
	}
}
