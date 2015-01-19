package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.WeiXiuXiangMuDao;
import com.chiefmech.arms.entity.WeiXiuXiangMu;
import com.chiefmech.arms.service.WeiXiuXiangMuService;

@Service("weiXiuXiangMuService")
public class WeiXiuXiangMuServiceImpl implements WeiXiuXiangMuService {
	@Resource()
	private WeiXiuXiangMuDao weiXiuXiangMuDao;

	@Override
	public int insertItem(WeiXiuXiangMu item) {
		return weiXiuXiangMuDao.insertItem(item);
	}

	@Override
	public int updateItem(WeiXiuXiangMu item) {
		return weiXiuXiangMuDao.updateItem(item);
	}

	@Override
	public int deleteItem(String id) {
		return weiXiuXiangMuDao.deleteItem(id);
	}

	@Override
	public String getWeiXiuXiangMuEasyUiJSon(WeiXiuXiangMu query, int page,
			int rows) {
		List<WeiXiuXiangMu> lst = weiXiuXiangMuDao.getWeiXiuXiangMuList(query,
				page, rows);
		int total = weiXiuXiangMuDao.getWeiXiuXiangMuListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}
}
