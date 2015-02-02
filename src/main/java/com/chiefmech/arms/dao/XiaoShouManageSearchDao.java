package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.SelectProvider;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.XiaoShouManageSearchDaoSqlProvider;
import com.chiefmech.arms.entity.ShangPinXiaoShouDan;
import com.chiefmech.arms.entity.query.XiaoShouManageSearchBean;

@Repository("XiaoShouManageSearchDao")
public interface XiaoShouManageSearchDao {

	@SelectProvider(type = XiaoShouManageSearchDaoSqlProvider.class, method = "getXiaoShouManageSearchList")
	public List<ShangPinXiaoShouDan> getXiaoShouManageSearchList(
			@Param("item") XiaoShouManageSearchBean query);

	@SelectProvider(type = XiaoShouManageSearchDaoSqlProvider.class, method = "getXiaoShouManageSearchListCount")
	public int getXiaoShouManageSearchListCount(@Param("item") XiaoShouManageSearchBean query);

}
