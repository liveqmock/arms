package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.SelectProvider;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.ShopOperLogDaoSqlProvider;
import com.chiefmech.arms.entity.ShopOperLog;
import com.chiefmech.arms.entity.query.ShopOperLogSearchBean;


@Repository("shopOperLogDao")
public interface ShopOperLogDao {
	
	@SelectProvider(type = ShopOperLogDaoSqlProvider.class, method = "getShopOperLogListForEasyUi")
	public List<ShopOperLog> getShopOperLogListForEasyUi(
			@Param("item") ShopOperLogSearchBean query);

	@SelectProvider(type = ShopOperLogDaoSqlProvider.class, method = "getShopOperLogCountForEasyUi")
	public int getShopOperLogCountForEasyUi(
			@Param("item") ShopOperLogSearchBean query);
}
