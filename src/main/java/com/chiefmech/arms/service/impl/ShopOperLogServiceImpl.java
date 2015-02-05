package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.ShopOperLogDao;
import com.chiefmech.arms.entity.ShopOperLog;
import com.chiefmech.arms.entity.query.KuCunOperLogSearchBean;
import com.chiefmech.arms.service.ShopOperLogService;

@Service("shopOperLogService")
public class ShopOperLogServiceImpl implements ShopOperLogService {

	@Resource()
	private ShopOperLogDao shopOperLogDao;

	@Override
	public String getShopOperLogEasyUiJSon(KuCunOperLogSearchBean query) {
		List<ShopOperLog> lst = shopOperLogDao
				.getShopOperLogListForEasyUi(query);
		int total = shopOperLogDao.getShopOperLogCountForEasyUi(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

}
