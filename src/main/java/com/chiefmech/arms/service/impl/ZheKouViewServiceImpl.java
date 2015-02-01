package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;
import com.chiefmech.arms.dao.ZheKouViewDao;
import com.chiefmech.arms.entity.ZheKou;
import com.chiefmech.arms.entity.view.ZheKouView;
import com.chiefmech.arms.service.ZheKouViewService;

@Service("zheKouViewService")
public class ZheKouViewServiceImpl implements ZheKouViewService {
	@Resource()
	private ZheKouViewDao zheKouViewDao;

	@Override
	public int insertItem(ZheKou item) {
		return zheKouViewDao.insertItem(item);
	}

	@Override
	public int updateItem(ZheKou item) {
		return zheKouViewDao.updateItem(item);
	}

	@Override
	public int deleteItem(String id) {
		return zheKouViewDao.deleteItem(id);
	}

	@Override
	public String getZheKouViewEasyUiJSon(ZheKouView query, int page, int rows) {
		List<ZheKouView> lst = zheKouViewDao.getZheKouViewList(query, page, rows);
		int total = zheKouViewDao.getZheKouViewListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

}
