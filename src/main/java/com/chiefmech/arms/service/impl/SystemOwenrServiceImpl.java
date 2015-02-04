package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.SystemOwnerDao;
import com.chiefmech.arms.entity.SystemOwner;
import com.chiefmech.arms.service.SystemOwnerService;

@Service("systemOwnerService")
public class SystemOwenrServiceImpl implements SystemOwnerService {
	@Resource()
	private SystemOwnerDao systemOwnerDao;

	@Override
	public int insertItem(SystemOwner item) {
		return systemOwnerDao.insertItem(item);
	}

	@Override
	public int updateItem(SystemOwner item) {
		return systemOwnerDao.updateItem(item);
	}

	@Override
	public int deleteItem(String id) {
		return systemOwnerDao.deleteItem(id);
	}

	@Override
	public String getSystemOwnerEasyUiJSon(SystemOwner query, int page, int rows) {
		List<SystemOwner> lst = systemOwnerDao.getSystemOwnerList(query, page, rows);
		int total = systemOwnerDao.getSystemOwnerListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public List<SystemOwner> selectItem() {
		return systemOwnerDao.selectItem();
	}

	@Override
	public SystemOwner findSystemOwnerById(String id) {
		return systemOwnerDao.findSystemOwnerById(id);
	}
}
