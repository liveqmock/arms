package com.chiefmech.arms.test.Test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.chiefmech.arms.entity.JiShiKuCun;
import com.chiefmech.arms.entity.RuKuDan;
import com.chiefmech.arms.entity.query.RuKuDanSearchBean;
import com.chiefmech.arms.entity.query.ShopOperLogSearchBean;
import com.chiefmech.arms.entity.query.WeiXiuChuTuiKuSearchBean;
import com.chiefmech.arms.entity.view.ZheKouView;
import com.chiefmech.arms.service.JiShiKuCunService;
import com.chiefmech.arms.service.RuKuDanService;
import com.chiefmech.arms.service.ShopOperLogService;
import com.chiefmech.arms.service.StoreService;
import com.chiefmech.arms.service.WeiXiuChuTuiKuService;
import com.chiefmech.arms.service.ZheKouViewService;

public class test {
	public static void main(String[] args) {
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		ZheKouViewService us=(ZheKouViewService)context.getBean("zheKouViewService");
		ZheKouView query=new ZheKouView();
		
		int page=1;
		int rows=10;
		String json=us.getZheKouViewEasyUiJSon(query, page, rows);
		/*	String json=us.getWeiXiuChuTuiKuEasyUiJSon(query);
		System.out.print(json);
		WeiXiuChuTuiKuSearchBean query=new WeiXiuChuTuiKuSearchBean();
		query.setStart(1);
		query.setRows(10);
		query.setTxtBillNo("W");
		query.setTxtLianXiRen("鄢利军");
		query.setTxtChePaiHao("鄂");
		query.setTxtRuChangDateStart("2015-01-04");
		query.setTxtRuChangDateEnd("2015-01-09");
	String json=us.getWeiXiuChuTuiKuEasyUiJSon(query);
		RuKuDanSearchBean query=new RuKuDanSearchBean();
	query.setTxtRuKuDate("2015-01-01");
	query.setTxtRuKuDateEnd("2015-02-10");
query.setStart(1);
query.setRows(10);
query.setTxtSuppName("飞");
		JiShiKuCun query=new JiShiKuCun();
		int page=1;
		int rows=10;
		query.setTxtShopName("胶");
	String json=us.getJiShiKuCunEasyUiJSon(query, page, rows);*/
		System.out.print(json);
	}
}

