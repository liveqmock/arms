package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.JiGouDao;
import com.chiefmech.arms.entity.JiGou;
import com.chiefmech.arms.service.JiGouService;

@Service("jiGouService")
public class JiGouServiceImpl implements JiGouService {
	@Resource()
	private JiGouDao jiGouDao;

	@Override
	public int insertItem(JiGou item) {
		return jiGouDao.insertItem(item);
	}

	@Override
	public int updateItem(JiGou item) {
		return jiGouDao.updateItem(item);
	}

	@Override
	public int deleteItem(int id) {
		return jiGouDao.deleteItem(id);
	}

	@Override
	public String getJiGouEasyUiJSon(JiGou query, int page, int rows) {
		List<JiGou> lst = jiGouDao.getJiGouList(query, page, rows);
		int total = jiGouDao.getJiGouListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public List<JiGou> selectItem() {
		return jiGouDao.selectItem();
	}

}
