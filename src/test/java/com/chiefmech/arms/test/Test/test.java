package com.chiefmech.arms.test.Test;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.commons.io.FileUtils;

import com.chiefmech.arms.common.util.IDGen;

public class test {
	public static void main(String[] args) {
		try {
			List<String> lines = FileUtils.readLines(new File("D:/data.txt"));
			for (int i = 0; i < lines.size(); i++) {
				String line = lines.get(i);
				String gongDuan = line.split("	")[0];
				String xiangmu = line.split("	")[1];
				System.out
						.println(String
								.format("insert into weixiuxiangmu(txtGuid,txtName,txtNeiRong,txtFeiYong,ddlGongDuan,txtRemark,txtShopCode) values('%s','%s','%s',%s,'%s','%s','%s');",
										IDGen.getUUID(), xiangmu, xiangmu, 0,
										gongDuan, "", "001"));
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
