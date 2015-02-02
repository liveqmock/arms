package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.SelectProvider;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.ExceptionManageSearchDaoSqlProvider;
import com.chiefmech.arms.entity.query.ExceptionManageSearchBean;


@Repository("ExceptionManageSearchDao")
public interface ExceptionManageSearchDao {

	@SelectProvider(type = ExceptionManageSearchDaoSqlProvider.class, method = "getExceptionManageSearchList")
	public List<ExceptionManageSearchBean> getExceptionManageSearchList(
			@Param("item") ExceptionManageSearchBean query);

	@SelectProvider(type = ExceptionManageSearchDaoSqlProvider.class, method = "getExceptionManageSearchListCount")
	public int getXiaoShouManageSearchListCount(@Param("item") ExceptionManageSearchBean query);

}
