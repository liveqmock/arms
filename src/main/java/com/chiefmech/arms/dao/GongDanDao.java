package com.chiefmech.arms.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.entity.GongDan;

@Repository("gongDanDao")
public interface GongDanDao {
	@Insert("insert into gongdan(txtGongDanId,txtBillNo,txtXieYiBillNo,txtRuChangDate,txtYuChuChangDate,txtFuWuUserId,ddlWeiXiuSort,chkShouBao,chkMianJian,chkXinCheJianCha,chkFanXiu,chkBaoXian,chkShiFouMaiDan,txtBaoXianDangAnHao,radBaoXianIsBenDian,txtBaoXianDate,ddlBaoXianLiPeiComp,txtTiShiInfo,txtJiaoXiuReason,txtGuZhangReason,txtWeiXiuCuoShi,txtCustId,txtVehicleId,txtYuYueId,txtSongCheJian,txtChePaiHao,txtLiCheng,txtYouLiang,txtGouCheDate,txtVin,txtFaDongJiHao,txtChangJiaPinPai,txtCheXiName,txtChenShenYanSe,txtAT,txtCheXingDaiMa,txtCustSort,txtCheZhuName,txtCheZhuTel,txtCheZhuMob,txtHuiYuanDengJi,txtLianXiRenName,txtLianXiRenTel,txtLianXiRenMob,txtHuiYuanHao,txtLianXiRenAdd) values(#{txtGongDanId},#{txtBillNo},#{txtXieYiBillNo},#{txtRuChangDate},#{txtYuChuChangDate},#{txtFuWuUserId},#{ddlWeiXiuSort},#{chkShouBao},#{chkMianJian},#{chkXinCheJianCha},#{chkFanXiu},#{chkBaoXian},#{chkShiFouMaiDan},#{txtBaoXianDangAnHao},#{radBaoXianIsBenDian},#{txtBaoXianDate},#{ddlBaoXianLiPeiComp},#{txtTiShiInfo},#{txtJiaoXiuReason},#{txtGuZhangReason},#{txtWeiXiuCuoShi},#{txtCustId},#{txtVehicleId},#{txtYuYueId},#{txtSongCheJian},#{txtChePaiHao},#{txtLiCheng},#{txtYouLiang},#{txtGouCheDate},#{txtVin},#{txtFaDongJiHao},#{txtChangJiaPinPai},#{txtCheXiName},#{txtChenShenYanSe},#{txtAT},#{txtCheXingDaiMa},#{txtCustSort},#{txtCheZhuName},#{txtCheZhuTel},#{txtCheZhuMob},#{txtHuiYuanDengJi},#{txtLianXiRenName},#{txtLianXiRenTel},#{txtLianXiRenMob},#{txtHuiYuanHao},#{txtLianXiRenAdd})")
	public int insertGongDan(GongDan item);

	@Update("update gongdan set txtBillNo=#{txtBillNo},txtXieYiBillNo=#{txtXieYiBillNo},txtRuChangDate=#{txtRuChangDate},txtYuChuChangDate=#{txtYuChuChangDate},txtFuWuUserId=#{txtFuWuUserId},ddlWeiXiuSort=#{ddlWeiXiuSort},chkShouBao=#{chkShouBao},chkMianJian=#{chkMianJian},chkXinCheJianCha=#{chkXinCheJianCha},chkFanXiu=#{chkFanXiu},chkBaoXian=#{chkBaoXian},chkShiFouMaiDan=#{chkShiFouMaiDan},txtBaoXianDangAnHao=#{txtBaoXianDangAnHao},radBaoXianIsBenDian=#{radBaoXianIsBenDian},txtBaoXianDate=#{txtBaoXianDate},ddlBaoXianLiPeiComp=#{ddlBaoXianLiPeiComp},txtTiShiInfo=#{txtTiShiInfo},txtJiaoXiuReason=#{txtJiaoXiuReason},txtGuZhangReason=#{txtGuZhangReason},txtWeiXiuCuoShi=#{txtWeiXiuCuoShi},txtCustId=#{txtCustId},txtVehicleId=#{txtVehicleId},txtYuYueId=#{txtYuYueId},txtSongCheJian=#{txtSongCheJian},txtChePaiHao=#{txtChePaiHao},txtLiCheng=#{txtLiCheng},txtYouLiang=#{txtYouLiang},txtGouCheDate=#{txtGouCheDate},txtVin=#{txtVin},txtFaDongJiHao=#{txtFaDongJiHao},txtChangJiaPinPai=#{txtChangJiaPinPai},txtCheXiName=#{txtCheXiName},txtChenShenYanSe=#{txtChenShenYanSe},txtAT=#{txtAT},txtCheXingDaiMa=#{txtCheXingDaiMa},txtCustSort=#{txtCustSort},txtCheZhuName=#{txtCheZhuName},txtCheZhuTel=#{txtCheZhuTel},txtCheZhuMob=#{txtCheZhuMob},txtHuiYuanDengJi=#{txtHuiYuanDengJi},txtLianXiRenName=#{txtLianXiRenName},txtLianXiRenTel=#{txtLianXiRenTel},txtLianXiRenMob=#{txtLianXiRenMob},txtHuiYuanHao=#{txtHuiYuanHao},txtLianXiRenAdd=#{txtLianXiRenAdd} where txtGongDanId=#{txtGongDanId}")
	public int updateGongDan(GongDan item);

	@Select("select * from gongdan where txtGongDanId=#{txtGongDanId}")
	public GongDan findGongDanByWeiXiuGuid(String txtGongDanId);
}
