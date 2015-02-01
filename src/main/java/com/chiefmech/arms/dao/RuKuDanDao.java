package com.chiefmech.arms.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.SelectProvider;
import org.springframework.stereotype.Repository;
import com.chiefmech.arms.dao.sqlprovider.RuKuDanDaoSqlProvider;
import com.chiefmech.arms.entity.RuKuDan;
import com.chiefmech.arms.entity.query.RuKuDanSearchBean;

@Repository("ruKuDanDao")
public interface RuKuDanDao {

	@SelectProvider(type = RuKuDanDaoSqlProvider.class, method = "getRuKuDanList")
	public List<RuKuDan> getRuKuDanList(
			@Param("item") RuKuDanSearchBean query);

	@SelectProvider(type = RuKuDanDaoSqlProvider.class, method = "getRuKuDanListCount")
	public int getRuKuDanListCount(@Param("item") RuKuDanSearchBean query);

}
