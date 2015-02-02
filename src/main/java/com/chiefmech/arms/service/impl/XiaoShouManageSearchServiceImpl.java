package com.chiefmech.arms.service.impl;

import java.util.List;
import javax.annotation.Resource;
import net.sf.json.JSONArray;
import org.springframework.stereotype.Service;
import com.chiefmech.arms.dao.XiaoShouManageSearchDao;
import com.chiefmech.arms.entity.ShangPinXiaoShouDan;
import com.chiefmech.arms.entity.query.XiaoShouManageSearchBean;
import com.chiefmech.arms.service.XiaoShouManageSearchService;

@Service("xiaoShouManageSearchService")
public class XiaoShouManageSearchServiceImpl implements XiaoShouManageSearchService {

	@Resource()
	private XiaoShouManageSearchDao xiaoShouManageSearchDao;

	@Override
	public String getXiaoShouManageSearchEasyUiJSon(XiaoShouManageSearchBean query) {

	List<ShangPinXiaoShouDan> lst = xiaoShouManageSearchDao.getXiaoShouManageSearchList(query);
	int total = xiaoShouManageSearchDao.getXiaoShouManageSearchListCount(query);

	String lstJson = JSONArray.fromObject(lst).toString();
	String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
			lstJson);
	return jsonStr;
	}

}
