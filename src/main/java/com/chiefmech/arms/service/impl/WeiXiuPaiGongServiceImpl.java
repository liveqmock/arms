package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;
import org.springframework.stereotype.Service;
import com.chiefmech.arms.dao.WeiXiuPaiGongDao;
import com.chiefmech.arms.entity.WeiXiuZhu;
import com.chiefmech.arms.service.WeiXiuZhuService;

@Service("weiXiuPaiGongService")
public class WeiXiuPaiGongServiceImpl implements WeiXiuZhuService {
	@Resource()
	private WeiXiuPaiGongDao weiXiuPaiGongDao;

	@Override
	public String getWeiXiuPaiGongEasyUiJSon(WeiXiuZhu query, int page,
			int rows) {
		List<WeiXiuZhu> lst = weiXiuPaiGongDao.getWeiXiuPaiGongList(query,
				page, rows);
		int total = weiXiuPaiGongDao.getWeiXiuPaiGongListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public int insertItem(WeiXiuZhu item) {
		return weiXiuPaiGongDao.insertItem(item);
	}

	@Override
	public int updateItem(WeiXiuZhu item) {
		return weiXiuPaiGongDao.updateItem(item);
	}

	@Override
	public int deleteItem(String id) {
		return weiXiuPaiGongDao.deleteItem(id);
	}

	@Override
	public List<WeiXiuZhu> selectItem() {
		return weiXiuPaiGongDao.selectItem();
	}

}
