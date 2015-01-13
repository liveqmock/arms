package com.chiefmech.arms.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.CheZhuLianXiRenDao;
import com.chiefmech.arms.entity.CheZhuLianXiRen;
import com.chiefmech.arms.service.CheZhuLianXiRenService;

@Service("cheZhuLianXiRenService")
public class CheZhuLianXiRenServiceImpl implements CheZhuLianXiRenService {
	@Resource()
	private CheZhuLianXiRenDao lianXiRenDao;

	@Override
	public int insertCheZhuLianXiRen(CheZhuLianXiRen item) {
		return lianXiRenDao.insertCheZhuLianXiRen(item);
	}

}
