package com.chiefmech.arms.entity.query;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

public abstract class SearchBean {
	private static Logger logger = Logger.getLogger(SearchBean.class.getName());

	private List<Criteria> lst = new ArrayList<Criteria>();
	private int pageNum;
	private int pageRows;
	private boolean isFieldsIntialized = false;

	protected void addField(Criteria bean) {
		lst.add(bean);
	}

	public void addLimitInfo(int pageNum, int pageRows) {
		this.pageNum = pageNum;
		this.pageRows = pageRows;
	}

	private void initFields() {
		if (!isFieldsIntialized) {
			isFieldsIntialized = true;
			initSearchFields();
		}
	}

	public abstract void initSearchFields();

	public String getWhereSql() {
		initFields();

		String where = "";

		String tmp;
		for (Criteria bean : lst) {
			tmp = bean.toString();
			if (where.length() > 0 && tmp.length() > 0) {
				where += " and ";
			}
			where += tmp;
		}

		if (where.length() > 0) {
			where = "where " + where;
		}
		logger.debug("getWhereSql:" + where);
		return where;
	}

	public String getLimitSql() {
		initFields();

		String sql = "";
		if (this.pageRows > 0) {
			int offset = (this.pageNum - 1) * this.pageRows;
			sql = String.format("limit %s,%s", offset, this.pageRows);
		}
		logger.debug("getLimitSql:" + sql);
		return sql;
	}

}
