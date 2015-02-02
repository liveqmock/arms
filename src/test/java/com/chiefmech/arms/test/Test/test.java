package com.chiefmech.arms.test.Test;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.chiefmech.arms.common.util.Constants;
import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.entity.JiShiKuCun;
import com.chiefmech.arms.entity.Maill;
import com.chiefmech.arms.entity.RuKuDan;
import com.chiefmech.arms.entity.User;
import com.chiefmech.arms.entity.query.RuKuDanSearchBean;
import com.chiefmech.arms.entity.query.ShopOperLogSearchBean;
import com.chiefmech.arms.entity.query.WeiXiuChuTuiKuSearchBean;
import com.chiefmech.arms.entity.view.ZheKouView;
import com.chiefmech.arms.service.JiShiKuCunService;
import com.chiefmech.arms.service.MaillService;
import com.chiefmech.arms.service.RuKuDanService;
import com.chiefmech.arms.service.ShopOperLogService;
import com.chiefmech.arms.service.StoreService;
import com.chiefmech.arms.service.WeiXiuChuTuiKuService;
import com.chiefmech.arms.service.ZheKouViewService;

public class test {
	public static void main(String[] args) {

		ApplicationContext context = new ClassPathXmlApplicationContext(
				"applicationContext.xml");
		MaillService us = (MaillService) context.getBean("maillService");
		Maill item = new Maill();
		item.setHidCCUserId("5c519165-4f57-4edc-b05f-80bbe40d7df0,92c36efe-f2b0-4f11-962d-7134058b8179,bd69461a-f527-4c6d-be54-f1c54a6cfdc6,c7ce4da6-7a20-4858-9626-be3835c58be4,");
		item.setHidCCUserName("陈浩,冷勇强,周艳,沈总,");
		item.setHidToUserId("1,22897e49-c92e-4c20-b8a6-da676bc2851b,41a53bd3-b6e8-477a-96e3-c5755139a3d7,");
		item.setHidToUserName("小院,邹新现,彭世明,");
		item.setTxtRemarks("fsafsafsafsa");
		String[] hideCCUserId = item.getHidCCUserId().split(",");
		String[] hideCCUserName = item.getHidCCUserName().split(",");
		String[] hideToUserId = item.getHidToUserId().split(",");
		String[] hideToUserName = item.getHidToUserName().split(",");
		int id;
		if (hideToUserId.length > hideCCUserId.length) {
			id=hideCCUserId.length;
			for (int i = 0; i < hideToUserId.length; i++) {
				id-=1;
				item.setMaillId(IDGen.getUUID());
				item.setSenderId("2");
				item.setSenderName("小乐");
				String time = new SimpleDateFormat("yyyy-MM-dd")
						.format(Calendar.getInstance().getTime());
				item.setHidToUserId(hideToUserId[i]);
				item.setHidToUserName(hideToUserName[i]);
				if(id>=0){
					item.setHidCCUserId(hideCCUserId[i]);
					item.setHidCCUserName(hideCCUserName[i]);
				}
				item.setTxtSendDate(time);
				us.insertItem(item);
			}
		} else {
			 id=hideToUserId.length;
			for (int i = 0; i < hideCCUserId.length; i++) {
				 id-=1;
				item.setMaillId(IDGen.getUUID());
				item.setSenderId("2");
				item.setSenderName("小乐");
				String time = new SimpleDateFormat("yyyy-MM-dd")
						.format(Calendar.getInstance().getTime());
				item.setHidCCUserId(hideCCUserId[i]);
				item.setHidCCUserName(hideCCUserName[i]);
				
			if(id>=0){
				item.setHidToUserId(hideToUserId[i]);
				item.setHidToUserName(hideToUserName[i]);
			}				
				item.setTxtSendDate(time);
				us.insertItem(item);
			}
		}

	}
}
