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
import com.chiefmech.arms.entity.query.KuCunOperLogSearchBean;

@Repository("kuCunDao")
public interface KuCunDao {
	@Select("select * from kucun where txtShopCode=#{txtShopCode} and txtWuLiaoCode = #{txtWuLiaoCode}")
	public KuCun findExistKuCunByWuLiaoCode(
			@Param("txtShopCode") String txtShopCode,
			@Param("txtWuLiaoCode") String txtWuLiaoCode);

	@Insert("insert into kucun(txtKuCunGuid,txtShopCode,txtWuLiaoCode,txtWuLiaoName,txtQty,txtChengBenJia,txtSalePrice,txtSuppName,txtRemark) values(#{txtKuCunGuid},#{txtShopCode},#{txtWuLiaoCode},#{txtWuLiaoName},#{txtQty},#{txtChengBenJia},#{txtSalePrice},#{txtSuppName},#{txtRemark})")
	public int insertKuCun(KuCun item);

	@Update("update kucun set txtWuLiaoName=#{txtWuLiaoName},txtQty=#{txtQty},txtChengBenJia=#{txtChengBenJia},txtSalePrice=#{txtSalePrice},txtSuppName=#{txtSuppName},txtRemark=#{txtRemark} where txtKuCunGuid=#{txtKuCunGuid}")
	public int updateKuCun(KuCun item);

	@Update("update kucun set txtSalePrice=#{txtSalePrice} where txtShopCode=#{txtShopCode} and txtWuLiaoCode = #{txtWuLiaoCode}")
	public int updateKuCunSalePrice(KuCun item);

	@Insert("insert into kucunoperlog(txtLogGuid,txtShopCode,txtBillGuid,txtOperAction,txtLogDate,txtWuLiaoCode,txtWuLiaoName,txtQty,txtChengBenJia,txtSalePrice,txtSuppName,txtRemark,txtNewQty) values(#{txtLogGuid},#{txtShopCode},#{txtBillGuid},#{txtOperAction},#{txtLogDate},#{txtWuLiaoCode},#{txtWuLiaoName},#{txtQty},#{txtChengBenJia},#{txtSalePrice},#{txtSuppName},#{txtRemark},#{txtNewQty})")
	public int insertKuCunOperLog(KuCunOperLog item);

	@SelectProvider(type = KuCunDaoSqlProvider.class, method = "getKuCunList")
	public List<KuCun> getKuCunList(
			@Param("txtGongDanId") String saleAfterWeiXiuGuid,
			@Param("item") KuCun query, @Param("page") int page,
			@Param("rows") int rows);

	@SelectProvider(type = KuCunDaoSqlProvider.class, method = "getKuCunListCount")
	public int getKuCunListCount(
			@Param("txtGongDanId") String saleAfterWeiXiuGuid,
			@Param("item") KuCun query);

	@SelectProvider(type = KuCunDaoSqlProvider.class, method = "getKuCunOperLogList")
	public List<KuCunOperLog> getKuCunOperLogList(
			@Param("item") KuCunOperLogSearchBean query);

	@SelectProvider(type = KuCunDaoSqlProvider.class, method = "getKuCunOperLogListCount")
	public int getKuCunOperLogListCount(
			@Param("item") KuCunOperLogSearchBean query);
}
