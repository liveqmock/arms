package com.chiefmech.arms.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.LianXiRenDao;
import com.chiefmech.arms.entity.LianXiRenXinXi;
import com.chiefmech.arms.service.LianXiRenService;

@Service("lianXiRenService")
public class LianXiRenServiceImpl implements LianXiRenService {
	@Resource()
	private LianXiRenDao lianXiRenDao;

	@Override
	public int insertLianXiRen(LianXiRenXinXi lianXiRen) {
		return lianXiRenDao.insertLianXiRen(lianXiRen);
	}

}
