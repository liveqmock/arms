package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.SelectProvider;
import org.springframework.stereotype.Repository;
import com.chiefmech.arms.dao.sqlprovider.WeiXiuChuTuiKuDaoSqlProvider;
import com.chiefmech.arms.entity.WeiXiuChuTuiKu;
import com.chiefmech.arms.entity.query.WeiXiuChuTuiKuSearchBean;

@Repository("weiXiuChuTuiKuDao")
public interface WeiXiuChuTuiKuDao {
	
	@SelectProvider(type = WeiXiuChuTuiKuDaoSqlProvider.class, method = "getWeiXiuChuTuiKuListForEasyUi")
	public List<WeiXiuChuTuiKu> getWeiXiuChuTuiKuListForEasyUi(
			@Param("item") WeiXiuChuTuiKuSearchBean query);

	@SelectProvider(type = WeiXiuChuTuiKuDaoSqlProvider.class, method = "getWeiXiuChuTuiKuCountForEasyUi")
	public int getWeiXiuChuTuiKuCountForEasyUi(
			@Param("item") WeiXiuChuTuiKuSearchBean query);
}
