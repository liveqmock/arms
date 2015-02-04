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
import com.chiefmech.arms.entity.query.RuKuDanSearchBean;

@Repository("ruKuDanDao")
public interface RuKuDanDao {

	@SelectProvider(type = RuKuDanDaoSqlProvider.class, method = "getRuKuDanList")
	public List<RuKuDan> getRuKuDanList(@Param("item") RuKuDanSearchBean query);

	@SelectProvider(type = RuKuDanDaoSqlProvider.class, method = "getRuKuDanListCount")
	public int getRuKuDanListCount(@Param("item") RuKuDanSearchBean query);

	@Select("select concat(date_format(now(),'%Y%m%d'),LPAD(ifnull(max(right(txtBillNo,3)+1),1),3,'0')) newTxtBillNo from rukudan where txtBillNo like date_format(now(),'___%Y%m%d%%')")
	public String getNewBillNo();

	@Insert("insert into rukudan(txtGuid,txtBillNo,txtRuKuDate,txtSuppName,txtJingShouRen,ddlRuKuSort,ddlCangKu,ddlFaPiaoType,txtFaPiaoHao,txtRemarks) values(#{txtGuid},#{txtBillNo},#{txtRuKuDate},#{txtSuppName},#{txtJingShouRen},#{ddlRuKuSort},#{ddlCangKu},#{ddlFaPiaoType},#{txtFaPiaoHao},#{txtRemarks})")
	public int insertRuKuDan(RuKuDan item);

	@Update("update rukudan set txtBillNo=#{txtBillNo},txtRuKuDate=#{txtRuKuDate},txtSuppName=#{txtSuppName},txtJingShouRen=#{txtJingShouRen},ddlRuKuSort=#{ddlRuKuSort},ddlCangKu=#{ddlCangKu},ddlFaPiaoType=#{ddlFaPiaoType},txtFaPiaoHao=#{txtFaPiaoHao},txtRemarks=#{txtRemarks} where txtGuid=#{txtGuid}")
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
}
