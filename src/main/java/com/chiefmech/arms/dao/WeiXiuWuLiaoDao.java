package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.SelectProvider;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.WeiXiuWuLiaoDaoSqlProvider;
import com.chiefmech.arms.entity.WeiXiuWuLiao;

@Repository("weiXiuWuLiaoDao")
public interface WeiXiuWuLiaoDao {

	@SelectProvider(type = WeiXiuWuLiaoDaoSqlProvider.class, method = "getWeiXiuWuLiaoList")
	List<WeiXiuWuLiao> getWeiXiuWuLiaoList(@Param("item") WeiXiuWuLiao query,
			@Param("page") int page, @Param("rows") int rows);

	@SelectProvider(type = WeiXiuWuLiaoDaoSqlProvider.class, method = "getWeiXiuWuLiaoListCount")
	int getWeiXiuWuLiaoListCount(@Param("item") WeiXiuWuLiao item);

}
