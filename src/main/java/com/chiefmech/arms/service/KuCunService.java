package com.chiefmech.arms.service;

import com.chiefmech.arms.entity.KuCun;
import com.chiefmech.arms.entity.KuCunOperLog;
import com.chiefmech.arms.entity.query.KuCunOperLogSearchBean;

public interface KuCunService {

	public int updateKuCun(KuCunOperLog operLog);

	public String getKuCunEasyUiJSon(KuCun item, int page, int rows);

	public int updateJiShiKuCun(KuCun item);

	public String getKuCunOperLogEasyUiJSon(KuCunOperLogSearchBean query);

}
