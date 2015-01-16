package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.GongDanDaoSqlProvider;
import com.chiefmech.arms.entity.GongDan;
import com.chiefmech.arms.entity.GongDanWeiXiuXiangMu;
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

	@Insert("insert into gongdanxiangmu(txtWeiXiuXiangMuId,txtBillNo,txtXiangMuId,txtGongDuanName,txtGongShi,txtGongShiFei,txtWeiXiuNeiRong) values(#{txtWeiXiuXiangMuId},#{txtBillNo},#{txtXiangMuId},#{txtGongDuanName},#{txtGongShi},#{txtGongShiFei},#{txtWeiXiuNeiRong})")
	public int insertGongDanWeiXiuXiangMu(GongDanWeiXiuXiangMu item);

	@Select("select * from gongdanxiangmu where txtBillNo=#{txtGongDanId}")
	public List<GongDanWeiXiuXiangMu> getGongDanWeiXiuXiangMuListByGongDanId(
			String txtGongDanId);
}