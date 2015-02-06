package com.chiefmech.arms.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.CommonDataDao;
import com.chiefmech.arms.entity.option.OptionBean;
import com.chiefmech.arms.service.CommonDataService;

@Service("commonDataService")
public class CommonDataServiceImpl implements CommonDataService {
	@Resource()
	private CommonDataDao commonDataDao;

	@Override
	public List<OptionBean> getOptionBean(String target) {
		return getOptionBean(target);
	}

	@Override
	public List<OptionBean> getOptionBean(String target,
			Map<String, String> param) {
		List<OptionBean> lst = null;
		if ("GongYingShang".equals(target)) {
			lst = commonDataDao.getGongYingShangOptionBean();
		} else if ("ChangKu".equals(target)) {
			lst = commonDataDao.getChangKuOptionBean();
		} else if ("WeiXiuZu".equals(target)) {
			lst = commonDataDao.getWeiXiuZuOptionBean(param.get("SuoShuJiGou"));
		} else if ("JiGou".equals(target)) {
			lst = commonDataDao.getJiGouOptionBean();
		}
		return lst;
	}
}
