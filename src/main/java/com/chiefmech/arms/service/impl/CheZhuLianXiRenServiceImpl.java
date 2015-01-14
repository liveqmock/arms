package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.CheZhuLianXiRenDao;
import com.chiefmech.arms.entity.CheZhuLianXiRen;
import com.chiefmech.arms.entity.view.VKeHuCheLiang;
import com.chiefmech.arms.service.CheZhuLianXiRenService;

@Service("cheZhuLianXiRenService")
public class CheZhuLianXiRenServiceImpl implements CheZhuLianXiRenService {
	@Resource()
	private CheZhuLianXiRenDao lianXiRenDao;

	@Override
	public int insertCheZhuLianXiRen(CheZhuLianXiRen item) {
		return lianXiRenDao.insertCheZhuLianXiRen(item);
	}

	@Override
	public int updateCheZhuLianXiRen(CheZhuLianXiRen item) {
		return lianXiRenDao.updateCheZhuLianXiRen(item);
	}

	@Override
	public CheZhuLianXiRen findCheZhuLianXiRenById(String txtCustId) {
		return lianXiRenDao.findCheZhuLianXiRenById(txtCustId);
	}

	@Override
	public List<VKeHuCheLiang> queryVKeHuCheLiang(VKeHuCheLiang query) {
		return lianXiRenDao.queryVKeHuCheLiang(query);
	}

}
