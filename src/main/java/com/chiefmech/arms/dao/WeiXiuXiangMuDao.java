package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.SelectProvider;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.WeiXiuXiangMuDaoSqlProvider;
import com.chiefmech.arms.entity.WeiXiuXiangMu;

@Repository("weiXiuXiangMuDao")
public interface WeiXiuXiangMuDao {

	@SelectProvider(type = WeiXiuXiangMuDaoSqlProvider.class, method = "getWeiXiuXiangMuList")
	public List<WeiXiuXiangMu> getWeiXiuXiangMuList(
			@Param("item") WeiXiuXiangMu query);

}
