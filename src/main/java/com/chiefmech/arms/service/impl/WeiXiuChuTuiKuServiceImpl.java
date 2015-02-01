package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.WeiXiuChuTuiKuDao;
import com.chiefmech.arms.entity.WeiXiuChuTuiKu;
import com.chiefmech.arms.entity.query.WeiXiuChuTuiKuSearchBean;
import com.chiefmech.arms.service.WeiXiuChuTuiKuService;

@Service("weiXiuChuTuiKuService")
public class WeiXiuChuTuiKuServiceImpl implements WeiXiuChuTuiKuService {
	@Resource()
	private WeiXiuChuTuiKuDao weiXiuChuTuiKuDao;

	@Override
	public String getWeiXiuChuTuiKuEasyUiJSon(WeiXiuChuTuiKuSearchBean query) {
		List<WeiXiuChuTuiKu> lst = weiXiuChuTuiKuDao
				.getWeiXiuChuTuiKuListForEasyUi(query);
		int total = weiXiuChuTuiKuDao.getWeiXiuChuTuiKuCountForEasyUi(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}
}
