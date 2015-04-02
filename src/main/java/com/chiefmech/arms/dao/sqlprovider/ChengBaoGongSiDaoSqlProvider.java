package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.common.util.SessionUtil;
import com.chiefmech.arms.entity.ChengBaoGongSi;
import com.chiefmech.arms.entity.query.Criteria;
import com.chiefmech.arms.entity.query.SearchBean;
import com.chiefmech.arms.entity.query.Criteria.Action;

public class ChengBaoGongSiDaoSqlProvider {
	public String getChengBaoGongSiList(Map<String, Object> param) {
		final int page = (Integer) param.get("page");
		final int rows = (Integer) param.get("rows");

		SearchBean searchBean = getCountSearchBean(param);
		searchBean.addLimitInfo(page, rows);

		return String.format("select * from chengbaogongsi %s %s",
				searchBean.getWhereSql(), searchBean.getLimitSql());
	}

	public String getChengBaoGongSiListCount(Map<String, Object> param) {
		SearchBean searchBean = getCountSearchBean(param);
		return String.format("select count(*) from chengbaogongsi %s",
				searchBean.getWhereSql());
	}

	private SearchBean getCountSearchBean(Map<String, Object> param) {
		final ChengBaoGongSi item = (ChengBaoGongSi) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE, "chengBaoGongSiName",
						item.getChengBaoGongSiName()));
				this.addField(new Criteria(Action.STR_EQUAL, "txtShopCode",
						SessionUtil.getShopInfo().getShopCode()));
			}
		};
		return searchBean;
	}
}
