package com.chiefmech.arms.service;

import com.chiefmech.arms.entity.KuCun;
import com.chiefmech.arms.entity.KuCunOperLog;

public interface KuCunService {

	public int updateKuCun(KuCunOperLog operLog);

	public String getKuCunEasyUiJSon(KuCun item, int page, int rows);

	public int updateJiShiKuCun(KuCun item);

}
