package com.chiefmech.arms.service.impl;

import java.util.List;
import javax.annotation.Resource;
import net.sf.json.JSONArray;
import org.springframework.stereotype.Service;
import com.chiefmech.arms.dao.ZhangTaoDao;
import com.chiefmech.arms.entity.ZhangTao;
import com.chiefmech.arms.service.ZhangTaoService;

@Service("zhangTaoService")
public class ZhangTaoImpl implements ZhangTaoService {
	@Resource()
	private ZhangTaoDao zhangTaoDao;

	@Override
	public int insertItem(ZhangTao item) {
		return zhangTaoDao.insertItem(item);
	}

	@Override
	public int updateItem(ZhangTao item) {
		return zhangTaoDao.updateItem(item);
	}

	@Override
	public int deleteItem(String id) {
		return zhangTaoDao.deleteItem(id);
	}

	@Override
	public String getZhangTaoEasyUiJSon(ZhangTao query, int page, int rows) {
		List<ZhangTao> lst = zhangTaoDao.getZhangTaoList(query, page, rows);
		int total = zhangTaoDao.getZhangTaoListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public List<ZhangTao> findZhangTao() {
		return zhangTaoDao.findZhangTao();
	}

}
