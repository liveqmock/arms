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
import com.chiefmech.arms.entity.GongDanCheLiangJianCe;
import com.chiefmech.arms.entity.GongDanWeiXiuWuLiao;
import com.chiefmech.arms.entity.GongDanWeiXiuXiangMu;
import com.chiefmech.arms.entity.JieSuanItem;
import com.chiefmech.arms.entity.footer.GongDanWeiXiuWuLiaoFooter;
import com.chiefmech.arms.entity.footer.GongDanWeiXiuXiangMuFooter;
import com.chiefmech.arms.entity.query.SaleAfterGongDanSearchBean;

@Repository("gongDanDao")
public interface GongDanDao {
	@Select("select gongdan.*,shop.shopName from gongdan left join shop on shop.shopCode=gongdan.txtShopCode where txtGongDanId=#{txtGongDanId}")
	public GongDan findGongDanByWeiXiuGuid(String txtGongDanId);

	@Insert("insert into gongdan(txtGongDanId,txtShopCode,txtCustId,txtCheLiangId,txtGongDanStatus,txtGongDanStatusChain,txtChePaiHao,txtLiCheng,txtVin,txtFaDongJiHao,txtChangJiaPinPai,txtCheXiName,txtCheXingDaiMa,txtCustSort,txtCheZhuName,txtCheZhuTel,txtHuiYuanDengJi,txtLianXiRenName,txtLianXiRenTel,txtLianXiRenAdd,txtBillNo,txtXieYiBillNo,txtRuChangDate,txtYuChuChangDate,txtFuWuGuWen,txtNewLiCheng,txtNewRuChangDate,txtJiaoXiuReason,txtYuYueId,txtJieSuanDate,txtChuChangDate,txtGongShiZheKou,txtCaiLiaoZheKou,txtCheLiangDengJiRiQi,txtCheLiangNianShenDaoQiRi,txtCheLiangBaoXianDaoQiRi,ddlChengBaoGongSi) values(#{txtGongDanId},#{txtShopCode},#{txtCustId},#{txtCheLiangId},#{txtGongDanStatus},concat('|',#{txtGongDanStatus}),#{txtChePaiHao},#{txtLiCheng},#{txtVin},#{txtFaDongJiHao},#{txtChangJiaPinPai},#{txtCheXiName},#{txtCheXingDaiMa},#{txtCustSort},#{txtCheZhuName},#{txtCheZhuTel},#{txtHuiYuanDengJi},#{txtLianXiRenName},#{txtLianXiRenTel},#{txtLianXiRenAdd},#{txtBillNo},#{txtXieYiBillNo},#{txtRuChangDate},#{txtYuChuChangDate},#{txtFuWuGuWen},#{txtNewLiCheng},#{txtNewRuChangDate},#{txtJiaoXiuReason},#{txtYuYueId},#{txtJieSuanDate},#{txtChuChangDate},#{txtGongShiZheKou},#{txtCaiLiaoZheKou},#{txtCheLiangDengJiRiQi},#{txtCheLiangNianShenDaoQiRi},#{txtCheLiangBaoXianDaoQiRi},#{ddlChengBaoGongSi})")
	public int insertWeiXiuJieDai(GongDan item);

	@Update("update gongdan set txtBillNo=#{txtBillNo},txtRuChangDate=#{txtRuChangDate},txtYuChuChangDate=#{txtYuChuChangDate},txtLiCheng=#{txtLiCheng},txtNewLiCheng=#{txtNewLiCheng},txtNewRuChangDate=#{txtNewRuChangDate},txtXieYiBillNo=#{txtXieYiBillNo},txtJiaoXiuReason=#{txtJiaoXiuReason} where txtGongDanId=#{txtGongDanId}")
	public int updateWeiXiuJieDai(GongDan item);

	@Update("update gongdan set ddlReviewStatus=#{ddlReviewStatus},txtReviewRemark=#{txtReviewRemark} where txtGongDanId=#{txtGongDanId}")
	public int updateGongDanReviewStatus(GongDan item);

	@Update("update gongdan set txtDeleteFlag='1' where txtGongDanId=#{txtGongDanId}")
	public int deleteGongDan(String txtGongDanId);

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

	@Update("update gongdanxiangmu set txtGongDuanName=#{txtGongDuanName},txtWeiXiuNeiRong=#{txtWeiXiuNeiRong},txtFeiYong=#{txtFeiYong},ddlZhangTao=#{ddlZhangTao},ddlSuoSuXiangMu=#{ddlSuoSuXiangMu},txtRemark=#{txtRemark} where txtWeiXiuXiangMuId=#{txtWeiXiuXiangMuId}")
	public int updateGongDanWeiXiuXiangMuWhenAddXiangMu(
			GongDanWeiXiuXiangMu item);

	@Update("update gongdanxiangmu set txtBanZu=#{txtBanZu},txtZhuXiuRen=#{txtZhuXiuRen} where txtWeiXiuXiangMuId=#{txtWeiXiuXiangMuId}")
	public int updateGongDanWeiXiuXiangMuWhenPaiGong(GongDanWeiXiuXiangMu item);

	@Update("update gongdanxiangmu set txtWanJianStatus=#{txtWanJianStatus},txtWanJianRen=#{txtWanJianRen},txtWanJianShiJian=#{txtWanJianShiJian} where txtWeiXiuXiangMuId=#{txtWeiXiuXiangMuId}")
	public int updateGongDanWeiXiuXiangMuWhenWanJian(GongDanWeiXiuXiangMu item);

	@Update("update gongdanxiangmu set txtWanJianStatus='完检',txtWanJianRen=#{txtWanJianRen},txtWanJianShiJian=#{txtWanJianShiJian} where txtGongDanGuid=#{txtGongDanId}")
	public int wanJianAllGongDanWeiXiuXiangMu(
			@Param("txtGongDanId") String txtGongDanId,
			@Param("txtWanJianRen") String txtWanJianRen,
			@Param("txtWanJianShiJian") String txtWanJianShiJian);

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

	@Update("update gongdanwuliao set txtQty=#{txtQty},ddlSuoSuGongDuan=#{ddlSuoSuGongDuan},ddlZhangTao=#{ddlZhangTao},txtRemark=#{txtRemark} where txtWuLiaoGuid=#{txtWuLiaoGuid}")
	public int updateGongDanWeiXiuWuLiaoWhenAddWuLiao(GongDanWeiXiuWuLiao item);

	@Delete("delete from gongdanwuliao where txtWuLiaoGuid=#{txtWuLiaoGuid}")
	public int deleteGongDanWeiXiuWuLiao(String txtWeiXiuWuLiaoId);

	@Select("select * from gongdanwuliao where txtWuLiaoGuid=#{txtWuLiaoGuid}")
	public GongDanWeiXiuWuLiao getGongDanWeiXiuWuLiaoByWuLiaoId(
			String txtWeiXiuWuLiaoId);

	@Select("select * from gongdanwuliao where txtGongDanGuid=#{txtGongDanGuid}")
	public List<GongDanWeiXiuWuLiao> getGongDanWeiXiuWuLiaoListByGongDanId(
			String txtGongDanGuid);

	@Select("select '合计' txtWuLiaoCode, sum(txtQty) txtQty, sum(txtSalePrice*txtQty) txtPaid from gongdanwuliao where txtGongDanGuid=#{txtGongDanId}")
	public List<GongDanWeiXiuWuLiaoFooter> getGongDanWeiXiuWuLiaoFooterListByGongDanId(
			String txtGongDanId);

	@Select("select ifnull(sum(txtSalePrice*txtQty),0) CaiLiaoFei from gongdanwuliao where txtGongDanGuid=#{txtGongDanId}")
	public float getCaiLiaoFeiZheQianByGongDanId(String txtGongDanId);

	@Insert("insert into gongdanwuliao(txtWuLiaoGuid,txtShopCode,txtWuLiaoCode,txtGongDanGuid,txtWuLiaoName,txtSuppName,txtQty,txtChengBenJia,txtSalePrice,ddlZhangTao,ddlStatus,txtRemark,txtLaiYuan) values(#{txtWuLiaoGuid},#{txtShopCode},#{txtWuLiaoCode},#{txtGongDanGuid},#{txtWuLiaoName},#{txtSuppName},#{txtQty},#{txtChengBenJia},#{txtSalePrice},#{ddlZhangTao},#{ddlStatus},#{txtRemark},#{txtLaiYuan})")
	public int insertGongDanWeiXiuWuLiao(GongDanWeiXiuWuLiao gongDanWeiXiuWuLiao);

	@Update("update gongdan set txtGongDanStatus=#{txtGongDanStatus},txtGongDanStatusChain=concat(txtGongDanStatusChain,'|',#{txtGongDanStatus}) where txtGongDanId=#{txtGongDanId}")
	public int updateGongDanStatus(@Param("txtGongDanId") String txtGongDanId,
			@Param("txtGongDanStatus") String txtGongDanStatus);

	@Update("update gongdan set txtGongDanStatus=#{txtGongDanStatus},txtGongDanStatusChain=#{txtGongDanStatusChain} where txtGongDanId=#{txtGongDanId}")
	public int revertGongDanStatus(@Param("txtGongDanId") String txtGongDanId,
			@Param("txtGongDanStatus") String txtGongDanStatus,
			@Param("txtGongDanStatusChain") String txtGongDanStatusChain);

	@Select("select txtGongDanStatusChain from gongdan where txtGongDanId=#{txtGongDanId}")
	public String getGongDanStatusChain(
			@Param("txtGongDanId") String txtGongDanId);

	@Update("update gongdan set ddlZhiFuFangShi=#{ddlZhiFuFangShi},txtFinalPay=#{txtFinalPay} where txtGongDanId=#{txtGongDanId}")
	public int updateGongDanZhiFuFangShi(
			@Param("txtGongDanId") String txtGongDanId,
			@Param("ddlZhiFuFangShi") String ddlZhiFuFangShi,
			@Param("txtFinalPay") float txtFinalPay);

	@Update("update gongdan set txtChuChangDate=#{txtChuChangDate} where txtGongDanId=#{txtGongDanId}")
	public int updateChuChangDate(@Param("txtGongDanId") String txtGongDanId,
			@Param("txtChuChangDate") String txtChuChangDate);

	@Select("select gongdan.*,shop.shopName from gongdan left join shop on shop.shopCode=gongdan.txtShopCode where txtCheLiangId=#{txtCheLiangId} and txtDeleteFlag='0' and txtGongDanStatus='交车' order by txtChuChangDate desc")
	public List<GongDan> getGongDanListByCheLiangId(String txtCheLiangId);

	@Select("select * from gongdanxiangmu where txtGongDanGuid=#{txtGongDanGuid}")
	public List<GongDanWeiXiuXiangMu> findGongDanXiangMuLstByWeiXiuGuid(
			String txtGongDanGuid);

	@Select("select * from gongdanwuliao where txtGongDanGuid=#{txtGongDanGuid}")
	public List<GongDanWeiXiuWuLiao> findGongDanWuLiaoLstByWeiXiuGuid(
			String txtGongDanGuid);

	@Select("select * from gongdanjiance where txtGongDanGuid=#{txtGongDanGuid} order by txtXuHao asc")
	public List<GongDanCheLiangJianCe> getGongDanCheLiangJianCeListByGongDanId(
			String txtGongDanId);

	@Insert("insert into gongdanjiance(txtJianceGuid,txtGongDanGuid,txtXuHao,txtNeiRong,txtZhuangTai,txtRemark,txtJianChaXiangMuRemark) values(#{txtJianceGuid},#{txtGongDanGuid},#{txtXuHao},#{txtNeiRong},#{txtZhuangTai},#{txtRemark},#{txtJianChaXiangMuRemark})")
	public int insertCheLiangJianCe(GongDanCheLiangJianCe item);

	@Update("update gongdanjiance set txtZhuangTai=#{txtZhuangTai},txtRemark=#{txtRemark} where txtJianceGuid=#{txtJianceGuid}")
	public int updateCheLiangJianCe(GongDanCheLiangJianCe item);

	@Update("update gongdanwuliao set ddlStatus=#{ddlStatus} where txtWuLiaoGuid=#{txtWuLiaoGuid}")
	public int updateGongDanWuLiaoStatusWhenLingQuWuLiao(
			GongDanWeiXiuWuLiao item);

	@Update("update gongdanwuliao t1,rukudanwuliao t2 set t1.ddlStatus=#{ddlStatus}, t2.ddlStatus=#{ddlStatus} where t1.txtWuLiaoGuid=t2.txtWuLiaoGuid and t1.txtWuLiaoGuid=#{txtWuLiaoGuid}")
	public int updateGongDanWeiXiuWuLiaoWhenLingQuWuLiao(
			@Param("txtWuLiaoGuid") String txtWuLiaoGuid,
			@Param("ddlStatus") String ddlStatus);

	@Select("select ddlZhangTao zhangtao, ifnull(sum(txtFeiYong),0) gongshiFei from gongdanxiangmu where txtGongDanGuid=#{txtGongDanGuid} group by ddlZhangTao")
	public List<JieSuanItem> getGongShiFeiLst(String txtGongDanGuid);

	@Select("select ddlZhangTao zhangtao, ifnull(sum(txtSalePrice*txtQty),0) wuLiaoFei from gongdanwuliao where txtGongDanGuid=#{txtGongDanGuid} group by ddlZhangTao")
	public List<JieSuanItem> getWuLiaoFeiLst(String txtGongDanGuid);

}