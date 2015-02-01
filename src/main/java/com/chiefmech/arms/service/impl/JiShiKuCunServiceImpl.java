package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.JiShiKuCunDao;
import com.chiefmech.arms.entity.JiShiKuCun;
import com.chiefmech.arms.service.JiShiKuCunService;

@Service("jiShiKuCunService")
public class JiShiKuCunServiceImpl implements JiShiKuCunService  {
	
	@Resource()
	private JiShiKuCunDao jiShiKuCunDao;

	@Override
	public String getJiShiKuCunEasyUiJSon(JiShiKuCun query,int page,int rows) {
		List<JiShiKuCun> lst = jiShiKuCunDao
				.getJiShiKuCunList(query,page,rows);
		int total = jiShiKuCunDao.getJiShiKuCunListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

}
