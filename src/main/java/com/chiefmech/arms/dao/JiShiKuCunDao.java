package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.SelectProvider;
import org.springframework.stereotype.Repository;
import com.chiefmech.arms.dao.sqlprovider.JiShiKuCunDaoSqlProvider;
import com.chiefmech.arms.entity.JiShiKuCun;




@Repository("jiShiKuCunDao")
public interface JiShiKuCunDao {
	
	@SelectProvider(type = JiShiKuCunDaoSqlProvider.class, method = "getJiShiKuCunList")
	public List<JiShiKuCun> getJiShiKuCunList(
			@Param("item") JiShiKuCun query,@Param("page") int page, @Param("rows") int rows);

	@SelectProvider(type = JiShiKuCunDaoSqlProvider.class, method = "getJiShiKuCunListCount")
	public int getJiShiKuCunListCount(@Param("item") JiShiKuCun query);

}
