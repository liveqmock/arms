package com.chiefmech.arms.service;

import java.util.List;
import java.util.Map;

import com.chiefmech.arms.entity.option.OptionBean;

public interface CommonDataService {

	public List<OptionBean> getOptionBean(String target);

	public List<OptionBean> getOptionBean(String target,
			Map<String, String> param);
}
