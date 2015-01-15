package com.chiefmech.arms.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.GongDanDao;
import com.chiefmech.arms.entity.GongDan;
import com.chiefmech.arms.service.GongDanService;

@Service("gongDanService")
public class GongDanServiceImpl implements GongDanService {
	@Resource()
	private GongDanDao gongDanDao;

	@Override
	public GongDan findGongDanByWeiXiuGuid(String txtGongDanId) {
		return gongDanDao.findGongDanByWeiXiuGuid(txtGongDanId);
	}

	@Override
	public int insertWeiXiuJieDai(GongDan item) {
		return gongDanDao.insertWeiXiuJieDai(item);
	}

	@Override
	public int updateWeiXiuJieDai(GongDan item) {
		return gongDanDao.updateWeiXiuJieDai(item);
	}

	@Override
	public String getNewBillNo() {
		return gongDanDao.getNewBillNo();
	}

}
