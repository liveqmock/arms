package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.RuKuDanDaoSqlProvider;
import com.chiefmech.arms.entity.RuKuDan;
import com.chiefmech.arms.entity.RuKuDanWuLiao;
import com.chiefmech.arms.entity.query.CaiGouWuLiaoSearchBean;
import com.chiefmech.arms.entity.view.VCaiGouWuLiao;

@Repository("ruKuDanDao")
public interface RuKuDanDao {

	@SelectProvider(type = RuKuDanDaoSqlProvider.class, method = "getVCaiGouWuLiaoList")
	public List<VCaiGouWuLiao> getVCaiGouWuLiaoList(
			@Param("item") CaiGouWuLiaoSearchBean query);

	@SelectProvider(type = RuKuDanDaoSqlProvider.class, method = "getVCaiGouWuLiaoListCount")
	public int getVCaiGouWuLiaoListCount(
			@Param("item") CaiGouWuLiaoSearchBean query);

	@Select("select concat(date_format(now(),'%Y%m%d'),LPAD(ifnull(max(right(txtBillNo,3)+1),1),3,'0')) newTxtBillNo from rukudan where txtBillNo like date_format(now(),'____%Y%m%d%%')")
	public String getNewBillNo();

	@Insert("insert into rukudan(txtGuid,txtBillNo,txtRuKuDate,txtSuppName,txtJingShouRen,ddlRuKuSort,txtRemarks,txtStatus) values(#{txtGuid},#{txtBillNo},#{txtRuKuDate},#{txtSuppName},#{txtJingShouRen},#{ddlRuKuSort},#{txtRemarks},#{txtStatus})")
	public int insertRuKuDan(RuKuDan item);

	@Update("update rukudan set txtBillNo=#{txtBillNo},txtRuKuDate=#{txtRuKuDate},txtSuppName=#{txtSuppName},txtJingShouRen=#{txtJingShouRen},ddlRuKuSort=#{ddlRuKuSort},txtStatus=#{txtStatus},txtRemarks=#{txtRemarks} where txtGuid=#{txtGuid}")
	public int updateRuKuDan(RuKuDan item);

	@Select("select * from rukudan where txtGuid=#{txtGuid}")
	public RuKuDan findRuKuDanByGuid(String txtGuid);

	@Update("update rukudan set txtStatus=#{txtStatus},txtShenHeRen=#{txtShenHeRen},txtShenHeShiJian=#{txtShenHeShiJian} where txtGuid=#{txtGuid}")
	public int updateRuKuDanStatus(RuKuDan item);

	@Select("select * from rukudanwuliao where txtRuKuDanGuid=#{txtRuKuDanGuid}")
	public List<RuKuDanWuLiao> getRuKuDanWuLiaoList(String txtRuKuDanGuid);

	@Insert("insert into rukudanwuliao(txtWuLiaoGuid,txtRuKuDanGuid,txtWuLiaoCode,txtWuLiaoName,txtQty,txtPrice) values(#{txtWuLiaoGuid},#{txtRuKuDanGuid},#{txtWuLiaoCode},#{txtWuLiaoName},#{txtQty},#{txtPrice})")
	public int insertRuKuDanWuLiao(RuKuDanWuLiao item);

	@Update("update rukudanwuliao set txtRuKuDanGuid=#{txtRuKuDanGuid},txtWuLiaoCode=#{txtWuLiaoCode},txtWuLiaoName=#{txtWuLiaoName},txtQty=#{txtQty},txtPrice=#{txtPrice} where txtWuLiaoGuid=#{txtWuLiaoGuid}")
	public int updateRuKuDanWuLiao(RuKuDanWuLiao item);

	@Delete("delete from rukudanwuliao where txtWuLiaoGuid=#{txtWuLiaoGuid}")
	public int deleteRuKuDanWuLiao(String txtWuLiaoGuid);

	@Update("update rukudanwuliao set ddlStatus=#{ddlStatus} where txtRuKuDanGuid=#{txtRuKuDanGuid}")
	public void updateCaiGouWuLiaoStatus(
			@Param("txtRuKuDanGuid") String txtRuKuDanGuid,
			@Param("ddlStatus") String ddlStatus);
}
