package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;
import org.springframework.stereotype.Service;
import com.chiefmech.arms.dao.WeiXiuPaiGongDao;
import com.chiefmech.arms.entity.WeiXiuPaiGong;
import com.chiefmech.arms.service.WeiXiuPaiGongService;

@Service("weiXiuPaiGongService")
public class WeiXiuPaiGongServiceImpl implements WeiXiuPaiGongService {
	@Resource()
	private WeiXiuPaiGongDao weiXiuPaiGongDao;

	@Override
	public String getWeiXiuPaiGongEasyUiJSon(WeiXiuPaiGong query, int page,
			int rows) {
		List<WeiXiuPaiGong> lst = weiXiuPaiGongDao.getWeiXiuPaiGongList(query,
				page, rows);
		int total = weiXiuPaiGongDao.getWeiXiuPaiGongListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public int insertItem(WeiXiuPaiGong item) {
		return weiXiuPaiGongDao.insertItem(item);
	}

	@Override
	public int updateItem(WeiXiuPaiGong item) {
		return weiXiuPaiGongDao.updateItem(item);
	}

	@Override
	public int deleteItem(String id) {
		return weiXiuPaiGongDao.deleteItem(id);
	}

	@Override
	public List<WeiXiuPaiGong> selectItem() {
		return weiXiuPaiGongDao.selectItem();
	}

}
