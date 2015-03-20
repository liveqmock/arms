package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.JianChaXiangMuDao;
import com.chiefmech.arms.entity.JianChaXiangMu;
import com.chiefmech.arms.service.JianChaXiangMuService;

@Service("jianChaXiangMuService")
public class JianChaXiangMuServiceImpl implements JianChaXiangMuService {

	@Resource()
	private JianChaXiangMuDao jianChaXiangMuDao;

	@Override
	public int insertItem(JianChaXiangMu item) {
		return jianChaXiangMuDao.insertItem(item);
	}

	@Override
	public int updateItem(JianChaXiangMu item) {
		return jianChaXiangMuDao.updateItem(item);
	}

	@Override
	public int deleteItem(String id) {
		return jianChaXiangMuDao.deleteItem(id);
	}

	@Override
	public String getJianChaXiangMuEasyUiJSon(JianChaXiangMu item, int page,
			int rows) {
		List<JianChaXiangMu> lst = jianChaXiangMuDao.getJianChaXiangMuList(item, page, rows);
		int total = jianChaXiangMuDao.getJianChaXiangMuListCount(item);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public List<JianChaXiangMu> selectItem() {
		return jianChaXiangMuDao.selectItem();
	}
	
}
