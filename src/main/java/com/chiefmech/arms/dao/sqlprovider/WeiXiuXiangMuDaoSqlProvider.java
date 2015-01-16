package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.entity.WeiXiuXiangMu;
import com.chiefmech.arms.entity.query.Criteria;
import com.chiefmech.arms.entity.query.SearchBean;
import com.chiefmech.arms.entity.query.Criteria.Action;

public class WeiXiuXiangMuDaoSqlProvider {

	public String getWeiXiuXiangMuList(Map<String, Object> param) {
		final WeiXiuXiangMu item = (WeiXiuXiangMu) param.get("item");
		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE,
						"txtWeiXiuXiangMuBianHao", item
								.getTxtWeiXiuXiangMuBianHao()));
				this.addField(new Criteria(Action.LIKE, "ddlSuoShuGongDuan",
						item.getDdlSuoShuGongDuan()));
				this.addField(new Criteria(Action.LIKE, "txtWeiXiuNeiRong",
						item.getTxtWeiXiuNeiRong()));
			}
		};

		return String.format("select * from weixiuxiangmu %s",
				searchBean.getWhereSql());
	}
}
