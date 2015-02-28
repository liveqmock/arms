package com.chiefmech.arms.test.Test;

public class test {
	public static void main(String[] args) {
		String[] jianCeLst = {"检测发动机控制模块系统", "检查发动机机油液位", "检查发动机冷却系统",
				"检查发动机空气滤芯", "检查挡风玻璃清洁剂液位", "检查刮水器刮片", "检查车辆底部", "检查灯光系统",
				"检查制动系统", "检查动力转向系统", "检查发动机附件皮带", "检查空调系统", "检查冷却风扇",
				"检查反光镜、后视镜", "检查车轮", "检查蓄电池"};
		int size = jianCeLst.length;
		for (int i = 0; i < size; i++) {
			System.out.println(String.format(
					"update gongdanjiance set txtNeiRong='%s' where txtXuHao=%d;",
					jianCeLst[i], i));
		}
	}
}
