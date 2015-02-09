package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.GongDanDaoSqlProvider;
import com.chiefmech.arms.entity.GongDan;
import com.chiefmech.arms.entity.GongDanWeiXiuWuLiao;
import com.chiefmech.arms.entity.GongDanWeiXiuXiangMu;
import com.chiefmech.arms.entity.footer.GongDanWeiXiuWuLiaoFooter;
import com.chiefmech.arms.entity.footer.GongDanWeiXiuXiangMuFooter;
import com.chiefmech.arms.entity.query.SaleAfterGongDanSearchBean;

@Repository("gongDanDao")
public interface GongDanDao {
	@Select("select * from gongdan where txtGongDanId=#{txtGongDanId}")
	public GongDan findGongDanByWeiXiuGuid(String txtGongDanId);

	@Insert("insert into gongdan(txtGongDanId,txtCustId,txtCheLiangId,txtGongDanStatus,txtChePaiHao,txtLiCheng,txtYouLiang,txtVin,txtFaDongJiHao,txtChangJiaPinPai,txtCheXiName,txtCheXingDaiMa,txtCustSort,txtCheZhuName,txtCheZhuTel,txtHuiYuanDengJi,txtLianXiRenName,txtLianXiRenTel,txtLianXiRenAdd,txtBillNo,txtXieYiBillNo,txtRuChangDate,txtYuChuChangDate,txtFuWuGuWen,ddlWeiXiuSort,txtNewLiCheng,txtNewRuChangDate,txtTiShiInfo,txtJiaoXiuReason,txtGuZhangReason,txtWeiXiuCuoShi,txtYuYueId,txtJieSuanDate,txtChuChangDate,txtGongShiZheKou,txtCaiLiaoZheKou) values(#{txtGongDanId},#{txtCustId},#{txtCheLiangId},#{txtGongDanStatus},#{txtChePaiHao},#{txtLiCheng},#{txtYouLiang},#{txtVin},#{txtFaDongJiHao},#{txtChangJiaPinPai},#{txtCheXiName},#{txtCheXingDaiMa},#{txtCustSort},#{txtCheZhuName},#{txtCheZhuTel},#{txtHuiYuanDengJi},#{txtLianXiRenName},#{txtLianXiRenTel},#{txtLianXiRenAdd},#{txtBillNo},#{txtXieYiBillNo},#{txtRuChangDate},#{txtYuChuChangDate},#{txtFuWuGuWen},#{ddlWeiXiuSort},#{txtNewLiCheng},#{txtNewRuChangDate},#{txtTiShiInfo},#{txtJiaoXiuReason},#{txtGuZhangReason},#{txtWeiXiuCuoShi},#{txtYuYueId},#{txtJieSuanDate},#{txtChuChangDate},#{txtGongShiZheKou},#{txtCaiLiaoZheKou})")
	public int insertWeiXiuJieDai(GongDan item);

	@Update("update gongdan set txtBillNo=#{txtBillNo},ddlWeiXiuSort=#{ddlWeiXiuSort},txtRuChangDate=#{txtRuChangDate},txtYuChuChangDate=#{txtYuChuChangDate},txtLiCheng=#{txtLiCheng},txtYouLiang=#{txtYouLiang},txtNewLiCheng=#{txtNewLiCheng},txtNewRuChangDate=#{txtNewRuChangDate},txtXieYiBillNo=#{txtXieYiBillNo},txtTiShiInfo=#{txtTiShiInfo},txtJiaoXiuReason=#{txtJiaoXiuReason},txtGuZhangReason=#{txtGuZhangReason},txtWeiXiuCuoShi=#{txtWeiXiuCuoShi} where txtGongDanId=#{txtGongDanId}")
	public int updateWeiXiuJieDai(GongDan item);

	@Select("select concat(date_format(now(),'JDD%Y%m%d'),LPAD(ifnull(max(right(txtBillNo,3)+1),1),3,'0')) newTxtBillNo from gongdan where txtBillNo like date_format(now(),'JDD%Y%m%d%%')")
	public String getNewBillNo();

	@SelectProvider(type = GongDanDaoSqlProvider.class, method = "getGongDanListForEasyUi")
	public List<GongDan> getGongDanListForEasyUi(
			@Param("item") SaleAfterGongDanSearchBean query);

	@SelectProvider(type = GongDanDaoSqlProvider.class, method = "getGongDanCountForEasyUi")
	public int getGongDanCountForEasyUi(
			@Param("item") SaleAfterGongDanSearchBean query);

	@Insert("insert into gongdanxiangmu(txtWeiXiuXiangMuId,txtGongDanGuid,txtXiangMuCode,txtXiangMuName,txtFeiYong,txtGongDuanName,txtWeiXiuNeiRong,ddlZhangTao) values(#{txtWeiXiuXiangMuId},#{txtGongDanGuid},#{txtXiangMuCode},#{txtXiangMuName},#{txtFeiYong},#{txtGongDuanName},#{txtWeiXiuNeiRong},#{ddlZhangTao})")
	public int insertGongDanWeiXiuXiangMu(GongDanWeiXiuXiangMu item);

	@Update("update gongdanxiangmu set txtGongDuanName=#{txtGongDuanName},txtFeiYong=#{txtFeiYong},ddlZhangTao=#{ddlZhangTao} where txtWeiXiuXiangMuId=#{txtWeiXiuXiangMuId}")
	public int updateGongDanWeiXiuXiangMuWhenZhiZuo(GongDanWeiXiuXiangMu item);

	@Update("update gongdanxiangmu set txtBanZu=#{txtBanZu},txtZhuXiuRen=#{txtZhuXiuRen} where txtWeiXiuXiangMuId=#{txtWeiXiuXiangMuId}")
	public int updateGongDanWeiXiuXiangMuWhenPaiGong(GongDanWeiXiuXiangMu item);

	@Update("update gongdanxiangmu set txtWanJianStatus=#{txtWanJianStatus},txtWanJianRen=#{txtWanJianRen},txtWanJianShiJian=#{txtWanJianShiJian} where txtWeiXiuXiangMuId=#{txtWeiXiuXiangMuId}")
	public int updateGongDanWeiXiuXiangMuWhenWanJian(GongDanWeiXiuXiangMu item);

	@Delete("delete from gongdanxiangmu where txtWeiXiuXiangMuId=#{txtWeiXiuXiangMuId}")
	public int deleteGongDanWeiXiuXiangMu(String txtWeiXiuXiangMuId);

	@Select("select * from gongdanxiangmu where txtGongDanGuid=#{txtGongDanGuid}")
	public List<GongDanWeiXiuXiangMu> getGongDanWeiXiuXiangMuListByGongDanId(
			String txtGongDanGuid);

	@Select("select '合计' txtGongDuanName, sum(txtFeiYong) txtFeiYong from gongdanxiangmu where txtGongDanGuid=#{txtGongDanId}")
	public List<GongDanWeiXiuXiangMuFooter> getGongDanWeiXiuXiangMuFooterListByGongDanId(
			String txtGongDanId);

	@Select("select ifnull(sum(txtFeiYong),0) txtFeiYong from gongdanxiangmu where txtGongDanGuid=#{txtGongDanId}")
	public float getGongShiFeiZheQianByGongDanId(String txtGongDanId);

	@Update("update gongdanwuliao set txtTakeQty=#{txtTakeQty},ddlZhangTao=#{ddlZhangTao} where txtWuLiaoGuid=#{txtWuLiaoGuid}")
	public int updateGongDanWeiXiuWuLiaoWhenZhiZuo(GongDanWeiXiuWuLiao item);

	@Delete("delete from gongdanwuliao where txtWuLiaoGuid=#{txtWuLiaoGuid}")
	public int deleteGongDanWeiXiuWuLiao(String txtWeiXiuWuLiaoId);

	@Select("select * from gongdanwuliao where txtGongDanGuid=#{txtGongDanGuid}")
	public List<GongDanWeiXiuWuLiao> getGongDanWeiXiuWuLiaoListByGongDanId(
			String txtGongDanGuid);

	@Select("select '合计' txtWuLiaoCode, sum(txtTakeQty) txtTakeQty, sum(txtPrice*txtTakeQty) txtPaid from gongdanwuliao where txtGongDanGuid=#{txtGongDanId}")
	public List<GongDanWeiXiuWuLiaoFooter> getGongDanWeiXiuWuLiaoFooterListByGongDanId(
			String txtGongDanId);

	@Select("select ifnull(sum(txtPrice*txtTakeQty),0) CaiLiaoFei from gongdanwuliao where txtGongDanGuid=#{txtGongDanId}")
	public float getCaiLiaoFeiZheQianByGongDanId(String txtGongDanId);

	@Insert("insert into gongdanwuliao(txtWuLiaoGuid,txtWuLiaoCode,txtGongDanGuid,txtWuLiaoName,ddlCangKu,txtPrice,ddlZhangTao) values(#{txtWuLiaoGuid},#{txtWuLiaoCode},#{txtGongDanGuid},#{txtWuLiaoName},#{ddlCangKu},#{txtPrice},#{ddlZhangTao})")
	public int insertGongDanWeiXiuWuLiao(GongDanWeiXiuWuLiao gongDanWeiXiuWuLiao);

	@Update("update gongdan set txtGongDanStatus=#{txtGongDanStatus} where txtGongDanId=#{txtGongDanId}")
	public int updateGongDanStatus(@Param("txtGongDanId") String txtGongDanId,
			@Param("txtGongDanStatus") String txtGongDanStatus);

	@Update("update gongdan set txtChuChangDate=#{txtChuChangDate} where txtGongDanId=#{txtGongDanId}")
	public int updateChuChangDate(@Param("txtGongDanId") String txtGongDanId,
			@Param("txtChuChangDate") String txtChuChangDate);

	@Select("select * from gongdan where txtCheLiangId=#{txtCheLiangId} order by txtChuChangDate desc")
	public List<GongDan> getGongDanListByCheLiangId(String txtCheLiangId);

	@Select("select * from gongdanxiangmu where txtGongDanGuid=#{txtGongDanGuid}")
	public List<GongDanWeiXiuXiangMu> findGongDanXiangMuLstByWeiXiuGuid(
			String txtGongDanGuid);

	@Select("select * from gongdanwuliao where txtGongDanGuid=#{txtGongDanGuid}")
	public List<GongDanWeiXiuWuLiao> findGongDanWuLiaoLstByWeiXiuGuid(
			String txtGongDanGuid);

	@Select("select zhuxiuRen from weixiuzu where weixiuzuName=#{weixiuzuName}")
	public String queryZhuXiuRen(String weixiuzuName);

}