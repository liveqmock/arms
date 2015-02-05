package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.KuCunDaoSqlProvider;
import com.chiefmech.arms.entity.KuCun;
import com.chiefmech.arms.entity.KuCunOperLog;
import com.chiefmech.arms.entity.Store;

@Repository("kuCunDao")
public interface KuCunDao {

	@Select("select count(*) from kucun where txtWuLiaoCode = #{txtWuLiaoCode} and ddlCangKu = #{ddlCangKu}")
	public boolean isKuCunExist(KuCun item);

	@Select("select * from kucun where txtWuLiaoCode = #{txtWuLiaoCode} and ddlCangKu = #{ddlCangKu}")
	public KuCun findExistKuCun(KuCun item);

	@Insert("insert into kucun(txtKuCunGuid,txtWuLiaoGuid,txtWuLiaoCode,txtWuLiaoName,txtQty,txtChengBenJia,txtSalePrice,ddlCangKu) values(#{txtKuCunGuid},#{txtWuLiaoGuid},#{txtWuLiaoCode},#{txtWuLiaoName},#{txtQty},#{txtChengBenJia},#{txtSalePrice},#{ddlCangKu})")
	public int insertKuCun(KuCun item);

	@Update("update kucun set txtQty=#{txtQty},txtChengBenJia=#{txtChengBenJia} where txtKuCunGuid=#{txtKuCunGuid}")
	public int updateKuCun(KuCun item);

	@Insert("insert into kucunoperlog(txtLogGuid,txtBillNo,txtBillSort,txtLogDate,txtKuCunGuid,txtWuLiaoGuid,txtWuLiaoCode,txtWuLiaoName,txtQty,txtChengBenJia,txtSalePrice,ddlCangKu) values(#{txtLogGuid},#{txtBillNo},#{txtBillSort},#{txtLogDate},#{txtKuCunGuid},#{txtWuLiaoGuid},#{txtWuLiaoCode},#{txtWuLiaoName},#{txtQty},#{txtChengBenJia},#{txtSalePrice},#{ddlCangKu})")
	public int insertKuCunOperLog(KuCunOperLog item);

	@Update("update kucun set txtSalePrice=#{txtSalePrice} where txtKuCunGuid=#{txtKuCunGuid}")
	public int updateJiShiKuCun(KuCun item);

	@SelectProvider(type = KuCunDaoSqlProvider.class, method = "getKuCunList")
	public List<KuCun> getKuCunList(@Param("item") KuCun query,
			@Param("page") int page, @Param("rows") int rows);

	@SelectProvider(type = KuCunDaoSqlProvider.class, method = "getKuCunListCount")
	public int getKuCunListCount(@Param("item") KuCun query);
}
