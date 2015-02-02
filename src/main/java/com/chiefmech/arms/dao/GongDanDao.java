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

	@Insert("insert into gongdan(txtGongDanId,txtCustId,txtVehicleId,txtChePaiHao,txtLiCheng,txtYouLiang,txtGouCheDate,txtVin,txtFaDongJiHao,txtChangJiaPinPai,txtCheXiName,txtChenShenYanSe,txtAT,txtCheXingDaiMa,txtCustSort,txtCheZhuName,txtCheZhuTel,txtCheZhuMob,txtHuiYuanDengJi,txtLianXiRenName,txtLianXiRenTel,txtLianXiRenMob,txtHuiYuanHao,txtLianXiRenAdd,txtBillNo,txtXieYiBillNo,txtRuChangDate,txtYuChuChangDate,txtFuWuUserId,ddlWeiXiuSort,chkShouBao,chkMianJian,chkXinCheJianCha,chkFanXiu,chkBaoXian,chkShiFouMaiDan,txtBaoXianDangAnHao,radBaoXianIsBenDian,txtBaoXianDate,ddlBaoXianLiPeiComp,txtTiShiInfo,txtJiaoXiuReason,txtGuZhangReason,txtWeiXiuCuoShi,txtYuYueId,txtGongDanStatus) values(#{txtGongDanId},#{txtCustId},#{txtVehicleId},#{txtChePaiHao},#{txtLiCheng},#{txtYouLiang},#{txtGouCheDate},#{txtVin},#{txtFaDongJiHao},#{txtChangJiaPinPai},#{txtCheXiName},#{txtChenShenYanSe},#{txtAT},#{txtCheXingDaiMa},#{txtCustSort},#{txtCheZhuName},#{txtCheZhuTel},#{txtCheZhuMob},#{txtHuiYuanDengJi},#{txtLianXiRenName},#{txtLianXiRenTel},#{txtLianXiRenMob},#{txtHuiYuanHao},#{txtLianXiRenAdd},#{txtBillNo},#{txtXieYiBillNo},#{txtRuChangDate},#{txtYuChuChangDate},#{txtFuWuUserId},#{ddlWeiXiuSort},#{chkShouBao},#{chkMianJian},#{chkXinCheJianCha},#{chkFanXiu},#{chkBaoXian},#{chkShiFouMaiDan},#{txtBaoXianDangAnHao},#{radBaoXianIsBenDian},#{txtBaoXianDate},#{ddlBaoXianLiPeiComp},#{txtTiShiInfo},#{txtJiaoXiuReason},#{txtGuZhangReason},#{txtWeiXiuCuoShi},#{txtYuYueId},#{txtGongDanStatus})")
	public int insertWeiXiuJieDai(GongDan item);

	@Update("update gongdan set txtCustId=#{txtCustId},txtVehicleId=#{txtVehicleId},txtChePaiHao=#{txtChePaiHao},txtLiCheng=#{txtLiCheng},txtYouLiang=#{txtYouLiang},txtGouCheDate=#{txtGouCheDate},txtVin=#{txtVin},txtFaDongJiHao=#{txtFaDongJiHao},txtChangJiaPinPai=#{txtChangJiaPinPai},txtCheXiName=#{txtCheXiName},txtChenShenYanSe=#{txtChenShenYanSe},txtAT=#{txtAT},txtCheXingDaiMa=#{txtCheXingDaiMa},txtCustSort=#{txtCustSort},txtCheZhuName=#{txtCheZhuName},txtCheZhuTel=#{txtCheZhuTel},txtCheZhuMob=#{txtCheZhuMob},txtHuiYuanDengJi=#{txtHuiYuanDengJi},txtLianXiRenName=#{txtLianXiRenName},txtLianXiRenTel=#{txtLianXiRenTel},txtLianXiRenMob=#{txtLianXiRenMob},txtHuiYuanHao=#{txtHuiYuanHao},txtLianXiRenAdd=#{txtLianXiRenAdd},txtBillNo=#{txtBillNo},txtXieYiBillNo=#{txtXieYiBillNo},txtRuChangDate=#{txtRuChangDate},txtYuChuChangDate=#{txtYuChuChangDate},txtFuWuUserId=#{txtFuWuUserId},ddlWeiXiuSort=#{ddlWeiXiuSort},chkShouBao=#{chkShouBao},chkMianJian=#{chkMianJian},chkXinCheJianCha=#{chkXinCheJianCha},chkFanXiu=#{chkFanXiu},chkBaoXian=#{chkBaoXian},chkShiFouMaiDan=#{chkShiFouMaiDan},txtBaoXianDangAnHao=#{txtBaoXianDangAnHao},radBaoXianIsBenDian=#{radBaoXianIsBenDian},txtBaoXianDate=#{txtBaoXianDate},ddlBaoXianLiPeiComp=#{ddlBaoXianLiPeiComp},txtTiShiInfo=#{txtTiShiInfo},txtJiaoXiuReason=#{txtJiaoXiuReason},txtGuZhangReason=#{txtGuZhangReason},txtWeiXiuCuoShi=#{txtWeiXiuCuoShi},txtYuYueId=#{txtYuYueId},txtGongDanStatus=#{txtGongDanStatus} where txtGongDanId=#{txtGongDanId}")
	public int updateWeiXiuJieDai(GongDan item);

	@Select("select concat(date_format(now(),'JDD%Y%m%d'),LPAD(ifnull(max(right(txtBillNo,3)+1),1),3,'0')) newTxtBillNo from gongdan where txtBillNo like date_format(now(),'JDD%Y%m%d%%')")
	public String getNewBillNo();

	@SelectProvider(type = GongDanDaoSqlProvider.class, method = "getGongDanListForEasyUi")
	public List<GongDan> getGongDanListForEasyUi(
			@Param("item") SaleAfterGongDanSearchBean query);

	@SelectProvider(type = GongDanDaoSqlProvider.class, method = "getGongDanCountForEasyUi")
	public int getGongDanCountForEasyUi(
			@Param("item") SaleAfterGongDanSearchBean query);

	@Insert("insert into gongdanxiangmu(txtWeiXiuXiangMuId,txtBillNo,txtXiangMuId,txtGongDuanName,txtGongShi,txtGongShiFei,txtWeiXiuNeiRong,ddlZhangTao) values(#{txtWeiXiuXiangMuId},#{txtBillNo},#{txtXiangMuId},#{txtGongDuanName},#{txtGongShi},#{txtGongShiFei},#{txtWeiXiuNeiRong},#{ddlZhangTao})")
	public int insertGongDanWeiXiuXiangMu(GongDanWeiXiuXiangMu item);

	@Update("update gongdanxiangmu set txtGongDuanName=#{txtGongDuanName},txtGongShi=#{txtGongShi},txtGongShiFei=#{txtGongShiFei},ddlZhangTao=#{ddlZhangTao} where txtWeiXiuXiangMuId=#{txtWeiXiuXiangMuId}")
	public int updateGongDanWeiXiuXiangMuWhenZhiZuo(GongDanWeiXiuXiangMu item);

	@Update("update gongdanxiangmu set txtBanZu=#{txtBanZu},txtZhuXiuRen=#{txtZhuXiuRen} where txtWeiXiuXiangMuId=#{txtWeiXiuXiangMuId}")
	public int updateGongDanWeiXiuXiangMuWhenPaiGong(GongDanWeiXiuXiangMu item);

	@Update("update gongdanxiangmu set txtWanJianStatus=#{txtWanJianStatus},txtWanJianRen=#{txtWanJianRen},txtWanJianShiJian=#{txtWanJianShiJian} where txtWeiXiuXiangMuId=#{txtWeiXiuXiangMuId}")
	public int updateGongDanWeiXiuXiangMuWhenWanJian(GongDanWeiXiuXiangMu item);

	@Delete("delete from gongdanxiangmu where txtWeiXiuXiangMuId=#{txtWeiXiuXiangMuId}")
	public int deleteGongDanWeiXiuXiangMu(String txtWeiXiuXiangMuId);

	@Select("select * from gongdanxiangmu where txtBillNo=#{txtGongDanId}")
	public List<GongDanWeiXiuXiangMu> getGongDanWeiXiuXiangMuListByGongDanId(
			String txtGongDanId);

	@Select("select '合计' txtGongDuanName, sum(txtGongShi) txtGongShi, sum(txtGongShiFei) txtGongShiFei from gongdanxiangmu where txtBillNo=#{txtGongDanId}")
	public List<GongDanWeiXiuXiangMuFooter> getGongDanWeiXiuXiangMuFooterListByGongDanId(
			String txtGongDanId);

	@Update("update gongdanwuliao set txtRegQty=#{txtRegQty},txtTakeQty=#{txtTakeQty},txtReturnQty=#{txtReturnQty},ddlZhangTao=#{ddlZhangTao} where txtWuLiaoGuid=#{txtWuLiaoGuid}")
	public int updateGongDanWeiXiuWuLiaoWhenZhiZuo(GongDanWeiXiuWuLiao item);

	@Delete("delete from gongdanwuliao where txtWuLiaoGuid=#{txtWuLiaoGuid}")
	public int deleteGongDanWeiXiuWuLiao(String txtWeiXiuWuLiaoId);

	@Select("select * from gongdanwuliao where txtBillNo=#{txtGongDanId}")
	public List<GongDanWeiXiuWuLiao> getGongDanWeiXiuWuLiaoListByGongDanId(
			String txtGongDanId);

	@Select("select '合计' txtWuLiaoId, sum(txtRegQty) txtRegQty, sum(txtTakeQty) txtTakeQty, sum(txtReturnQty) txtReturnQty, sum(txtPrice*txtRegQty) txtPrice from gongdanwuliao where txtBillNo=#{txtGongDanId}")
	public List<GongDanWeiXiuWuLiaoFooter> getGongDanWeiXiuWuLiaoFooterListByGongDanId(
			String txtGongDanId);

	@Insert("insert into gongdanwuliao(txtWuLiaoGuid,txtWuLiaoId,txtBillNo,txtWuLiaoName,txtPrice,ddlZhangTao) values(#{txtWuLiaoGuid},#{txtWuLiaoId},#{txtBillNo},#{txtWuLiaoName},#{txtPrice},#{ddlZhangTao})")
	public int insertGongDanWeiXiuWuLiao(GongDanWeiXiuWuLiao gongDanWeiXiuWuLiao);

}