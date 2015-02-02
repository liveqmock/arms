package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.MaillDao;
import com.chiefmech.arms.entity.Maill;
import com.chiefmech.arms.entity.query.MaillSearchBean;
import com.chiefmech.arms.service.MaillService;

@Service("maillService")
public class MaillServiceImpl implements MaillService {

	@Resource()
	private MaillDao maillDao;

	@Override
	public int insertItem(Maill item) {
		return maillDao.insertItem(item);
	}

	@Override
	public int updateItem(Maill item) {
		return maillDao.updateItem(item);
	}

	@Override
	public int deleteItem(String id) {
		return maillDao.deleteItem(id);
	}

	@Override
	public String getMaillEasyUiJSon(MaillSearchBean query,String userId) {
		List<Maill> lst = maillDao.getMaillList(query,userId);
		int total = maillDao.getMaillListCount(query,userId);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public String getCallCenterEasyUiJson(MaillSearchBean query, String userId) {
		List<Maill> lst = maillDao.getCallCenterList(query, userId);
		int total = maillDao.getCallCenterListCount(query,userId);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public String getReceiveCallEasyUiJson(MaillSearchBean query, String userId) {
		List<Maill> lst = maillDao.getReceiveCallList(query, userId);
		int total = maillDao.getReceiveCallListCount(query,userId);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}
}
