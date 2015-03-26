package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.common.util.ConfigUtil;
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
				getWhereSql(query), query.getLimitSql());
	}

	public String getVKeHuCheLiangCountForEasyUi(Map<String, Object> param) {
		SaleAfterCustomSearchBean query = (SaleAfterCustomSearchBean) param
				.get("item");
		return String.format("select count(*) from v_kehu_cheliang %s",
				getWhereSql(query));
	}

	private String getWhereSql(SaleAfterCustomSearchBean searchBean) {
		String where = searchBean.getWhereSql();
		String searchSql = "";

		Shop curShop = ConfigUtil.getInstance().getShopInfo();

		String queryField = searchBean.getQueryField();
		String queryValue = searchBean.getQueryValue();

		if (queryField != null) {
			// 完整车架号可跨店铺搜索
			if ("txtCheLiangCheJiaHao".equals(queryField)) {
				searchSql += String.format("%s = '%s'", queryField, queryValue);
			} else {
				// 跨店查询客户车辆信息
				searchSql += String.format("%s like '%%%s%%'", queryField,
						queryValue);

				if (!searchBean.isSearchAllShopCustomerAllowed()) {
					// 仅在当前店铺查询客户车辆信息
					// 1. 车辆信息在本店登记的 2. 车牌号在本店的工单里面出现过
					searchSql += String
							.format(" and ((txtRegisterShopCode='%s') or (txtCheLiangChePaiHao in (select txtChePaiHao from gongdan where txtShopCode='%s')))",
									curShop.getShopCode(),
									curShop.getShopCode());
				}
			}
		}

		if (searchSql.length() > 0) {
			where = where + " and " + searchSql;
		}

		return where;
	}
}
