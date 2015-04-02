package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.common.util.SessionUtil;
import com.chiefmech.arms.entity.Shop;
import com.chiefmech.arms.entity.query.Criteria;
import com.chiefmech.arms.entity.query.Criteria.Action;
import com.chiefmech.arms.entity.query.SaleAfterCustomSearchBean;
import com.chiefmech.arms.entity.query.SearchBean;
import com.chiefmech.arms.entity.view.VKeHuCheLiang;

public class CheZhuLianXiRenDaoSqlProvider {
	public String queryVKeHuCheLiang(Map<String, Object> param) {
		final VKeHuCheLiang item = (VKeHuCheLiang) param.get("item");

		SearchBean searchBean = new SearchBean() {
			@Override
			public void initSearchFields() {
				this.addField(new Criteria(Action.LIKE, "txtCheLiangChePaiHao",
						item.getTxtCheLiangChePaiHao()));
				this.addField(new Criteria(Action.LIKE, "ddlCheLiangCheXi",
						item.getDdlCheLiangCheXi()));
				this.addField(new Criteria(Action.STR_EQUAL,
						"txtCheLiangCheJiaHao", item.getTxtCheLiangCheJiaHao()));
				this.addField(new Criteria(Action.LIKE, "txtCheZhuName", item
						.getTxtCheZhuName()));
				this.addField(new Criteria(Action.LIKE, "txtCheZhuTel", item
						.getTxtCheZhuTel()));

			}
		};

		return String.format("select * from v_kehu_cheliang %s limit 0,10",
				searchBean.getWhereSql());
	}

	public String getVKeHuCheLiangListForEasyUi(Map<String, Object> param) {
		SaleAfterCustomSearchBean query = (SaleAfterCustomSearchBean) param
				.get("item");
		return String.format(
				"select * from v_kehu_cheliang %s order by txtCheZhuName %s",
				query.getWhereSql(), query.getLimitSql());
	}

	public String getVKeHuCheLiangCountForEasyUi(Map<String, Object> param) {
		SaleAfterCustomSearchBean query = (SaleAfterCustomSearchBean) param
				.get("item");
		return String.format("select count(*) from v_kehu_cheliang %s",
				query.getWhereSql());
	}
}
