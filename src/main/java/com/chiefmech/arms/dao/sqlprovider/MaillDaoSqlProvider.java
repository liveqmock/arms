package com.chiefmech.arms.dao.sqlprovider;

import java.util.Map;

import com.chiefmech.arms.entity.query.MaillSearchBean;
import com.chiefmech.arms.entity.query.SearchBean;

public class MaillDaoSqlProvider {
	String sql = " where senderId=#{userId}";

	public String getMaillList(Map<String, Object> param) {
		SearchBean query = (MaillSearchBean) param.get("item");
		if (query.getWhereSql().equals("") || query.getWhereSql() == null) {
			return String.format("select * from maill  %s   %s ", sql,
					query.getLimitSql());
		} else {
			return String.format(
					"select * from maill %s and  senderId=#{userId}  %s ",
					query.getWhereSql(), query.getLimitSql());
		}

	}

	public String getMaillListCount(Map<String, Object> param) {
		SearchBean query = (MaillSearchBean) param.get("item");
		if (query.getWhereSql().equals("") || query.getWhereSql() == null) {
			return String.format("select count(*) from maill  %s ", sql);
		} else {
			return String.format(
					"select count(*) from maill  %s and  senderId=#{userId} ",
					query.getWhereSql());
		}
	}

	public String getCallCenterList(Map<String, Object> param) {
		SearchBean query = (MaillSearchBean) param.get("item");
		return String
				.format("select * from maill where (hidToUserId=#{userId} || hidCCUserId=#{userId}) && txtReadDate is  null   %s ",
						query.getLimitSql());

	}

	public String getCallCenterListCount(Map<String, Object> param) {
		SearchBean query = (MaillSearchBean) param.get("item");
		return String
				.format("select count(*) from maill where (hidToUserId=#{userId} || hidCCUserId=#{userId}) && txtReadDate is  null  %s ",
						query.getWhereSql());
	}

	public String getReceiveCallList(Map<String, Object> param) {
		SearchBean query = (MaillSearchBean) param.get("item");
		if (query.getWhereSql().equals("") || query.getWhereSql() == null) {
			return String
					.format("select * from maill where (hidToUserId=#{userId} || hidCCUserId=#{userId}) && txtReadDate is not null   %s ",
							query.getLimitSql());
		} else {
			return String
					.format("select * from maill %s and (hidToUserId=#{userId} || hidCCUserId=#{userId}) && txtReadDate is not null   %s ",
							query.getWhereSql(), query.getLimitSql());
		}
	}

	public String getReceiveCallListCount(Map<String, Object> param) {
		String sql = "  (hidToUserId=#{userId} || hidCCUserId=#{userId}) && txtReadDate is not null";
		SearchBean query = (MaillSearchBean) param.get("item");
		if (query.getWhereSql().equals("") || query.getWhereSql() == null) {
			return String.format("select count(*) from maill where %s ", sql);
		} else {
			return String.format("select count(*) from maill  %s and  %s ",
					query.getWhereSql(), sql);
		}
	}
}
