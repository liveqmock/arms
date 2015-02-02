package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.ExceptionManageSearchDao;
import com.chiefmech.arms.entity.query.ExceptionManageSearchBean;
import com.chiefmech.arms.service.ExceptionManageQueryService;


@Service("exceptionManageSearchService")
public class ExceptionManageSearchServiceImpl implements ExceptionManageQueryService {

	@Resource()
	private ExceptionManageSearchDao exceptionManageSearchDao;

	@Override
	public String getExceptionManageQueryEasyUiJSon(ExceptionManageSearchBean query) {
		List<ExceptionManageSearchBean> lst = exceptionManageSearchDao.getExceptionManageSearchList(query);
		int total = exceptionManageSearchDao.getXiaoShouManageSearchListCount(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

}
