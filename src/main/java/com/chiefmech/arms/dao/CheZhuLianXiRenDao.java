package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.CheZhuLianXiRenDaoSqlProvider;
import com.chiefmech.arms.entity.CheZhuLianXiRen;
import com.chiefmech.arms.entity.view.VKeHuCheLiang;

@Repository("cheZhuLianXiRenDaoDao")
public interface CheZhuLianXiRenDao {
	@Insert("insert into chezhulianxiren(txtCustId,ddlCustSort,txtCheZhuName,ddlCheZhuTelSort,txtCheZhuTel,txtCheZhuTelNeiXian,txtCheZhuZhuZhaiTel,txtCheZhuChuanZhen,txtCheZhuMob,ddlCheZhuQiYeSort,ddlCheZhuChengWei,ddlSex,ddlCheZhuHunYinZhuangKuang,txtCheZhuZiNvQty,ddlCheZhuCardSort,txtCheZhuCardNo,txtCheZhuShengRi,ddlCheZhuP,ddlCheZhuC,ddlCheZhuA,txtCheZhuAdd,ddlCheZhuSuoShuHangYe,ddlCheZhuGuanXiSort,ddlCheZhuJiaTingSort,ddlCheZhuZhiYeSort,txtCheZhuLaiYuan,ddlCheZhuNianLing,ddlCheZhuShouRu,txtCheZhuAiHao,ddlCheZhuXueLi,txtCheZhuEMail,txtCheZheGouCheQty,txtCheZhuGongZuoDanWei,txtLianXiRenName,ddlLianXiRenSex,txtLianXiRenTel,txtLianXiRenMob,ddlLianXiRenChengWei,ddlLianXiRenShenFen,ddlLianXiRenZhiWei,ddlLianXiCardSort,txtLianXiRenCardNo,txtLianXiRenBirthday,ddlLianXiRenP,ddlLianXiRenC,ddlLianXiRenA,txtLianXiRenAdd,ddlLianXiRenJiaZhaoSort,txtLianXiRenJiaZhaoDate,txtLianXiRenFirstJiaZhaoDate,txtLianXiRenJiaZhaoArea,txtLianXiRenTeZheng,txtLianXiRenEMail,txtLianXiRenGongZuoDanWei,txtCheLiangJieDaiTiXing) values(#{txtCustId},#{ddlCustSort},#{txtCheZhuName},#{ddlCheZhuTelSort},#{txtCheZhuTel},#{txtCheZhuTelNeiXian},#{txtCheZhuZhuZhaiTel},#{txtCheZhuChuanZhen},#{txtCheZhuMob},#{ddlCheZhuQiYeSort},#{ddlCheZhuChengWei},#{ddlSex},#{ddlCheZhuHunYinZhuangKuang},#{txtCheZhuZiNvQty},#{ddlCheZhuCardSort},#{txtCheZhuCardNo},#{txtCheZhuShengRi},#{ddlCheZhuP},#{ddlCheZhuC},#{ddlCheZhuA},#{txtCheZhuAdd},#{ddlCheZhuSuoShuHangYe},#{ddlCheZhuGuanXiSort},#{ddlCheZhuJiaTingSort},#{ddlCheZhuZhiYeSort},#{txtCheZhuLaiYuan},#{ddlCheZhuNianLing},#{ddlCheZhuShouRu},#{txtCheZhuAiHao},#{ddlCheZhuXueLi},#{txtCheZhuEMail},#{txtCheZheGouCheQty},#{txtCheZhuGongZuoDanWei},#{txtLianXiRenName},#{ddlLianXiRenSex},#{txtLianXiRenTel},#{txtLianXiRenMob},#{ddlLianXiRenChengWei},#{ddlLianXiRenShenFen},#{ddlLianXiRenZhiWei},#{ddlLianXiCardSort},#{txtLianXiRenCardNo},#{txtLianXiRenBirthday},#{ddlLianXiRenP},#{ddlLianXiRenC},#{ddlLianXiRenA},#{txtLianXiRenAdd},#{ddlLianXiRenJiaZhaoSort},#{txtLianXiRenJiaZhaoDate},#{txtLianXiRenFirstJiaZhaoDate},#{txtLianXiRenJiaZhaoArea},#{txtLianXiRenTeZheng},#{txtLianXiRenEMail},#{txtLianXiRenGongZuoDanWei},#{txtCheLiangJieDaiTiXing})")
	public int insertCheZhuLianXiRen(CheZhuLianXiRen item);

	@Update("update chezhulianxiren set ddlCustSort=#{ddlCustSort},txtCheZhuName=#{txtCheZhuName},ddlCheZhuTelSort=#{ddlCheZhuTelSort},txtCheZhuTel=#{txtCheZhuTel},txtCheZhuTelNeiXian=#{txtCheZhuTelNeiXian},txtCheZhuZhuZhaiTel=#{txtCheZhuZhuZhaiTel},txtCheZhuChuanZhen=#{txtCheZhuChuanZhen},txtCheZhuMob=#{txtCheZhuMob},ddlCheZhuQiYeSort=#{ddlCheZhuQiYeSort},ddlCheZhuChengWei=#{ddlCheZhuChengWei},ddlSex=#{ddlSex},ddlCheZhuHunYinZhuangKuang=#{ddlCheZhuHunYinZhuangKuang},txtCheZhuZiNvQty=#{txtCheZhuZiNvQty},ddlCheZhuCardSort=#{ddlCheZhuCardSort},txtCheZhuCardNo=#{txtCheZhuCardNo},txtCheZhuShengRi=#{txtCheZhuShengRi},ddlCheZhuP=#{ddlCheZhuP},ddlCheZhuC=#{ddlCheZhuC},ddlCheZhuA=#{ddlCheZhuA},txtCheZhuAdd=#{txtCheZhuAdd},ddlCheZhuSuoShuHangYe=#{ddlCheZhuSuoShuHangYe},ddlCheZhuGuanXiSort=#{ddlCheZhuGuanXiSort},ddlCheZhuJiaTingSort=#{ddlCheZhuJiaTingSort},ddlCheZhuZhiYeSort=#{ddlCheZhuZhiYeSort},txtCheZhuLaiYuan=#{txtCheZhuLaiYuan},ddlCheZhuNianLing=#{ddlCheZhuNianLing},ddlCheZhuShouRu=#{ddlCheZhuShouRu},txtCheZhuAiHao=#{txtCheZhuAiHao},ddlCheZhuXueLi=#{ddlCheZhuXueLi},txtCheZhuEMail=#{txtCheZhuEMail},txtCheZheGouCheQty=#{txtCheZheGouCheQty},txtCheZhuGongZuoDanWei=#{txtCheZhuGongZuoDanWei},txtLianXiRenName=#{txtLianXiRenName},ddlLianXiRenSex=#{ddlLianXiRenSex},txtLianXiRenTel=#{txtLianXiRenTel},txtLianXiRenMob=#{txtLianXiRenMob},ddlLianXiRenChengWei=#{ddlLianXiRenChengWei},ddlLianXiRenShenFen=#{ddlLianXiRenShenFen},ddlLianXiRenZhiWei=#{ddlLianXiRenZhiWei},ddlLianXiCardSort=#{ddlLianXiCardSort},txtLianXiRenCardNo=#{txtLianXiRenCardNo},txtLianXiRenBirthday=#{txtLianXiRenBirthday},ddlLianXiRenP=#{ddlLianXiRenP},ddlLianXiRenC=#{ddlLianXiRenC},ddlLianXiRenA=#{ddlLianXiRenA},txtLianXiRenAdd=#{txtLianXiRenAdd},ddlLianXiRenJiaZhaoSort=#{ddlLianXiRenJiaZhaoSort},txtLianXiRenJiaZhaoDate=#{txtLianXiRenJiaZhaoDate},txtLianXiRenFirstJiaZhaoDate=#{txtLianXiRenFirstJiaZhaoDate},txtLianXiRenJiaZhaoArea=#{txtLianXiRenJiaZhaoArea},txtLianXiRenTeZheng=#{txtLianXiRenTeZheng},txtLianXiRenEMail=#{txtLianXiRenEMail},txtLianXiRenGongZuoDanWei=#{txtLianXiRenGongZuoDanWei},txtCheLiangJieDaiTiXing=#{txtCheLiangJieDaiTiXing} where txtCustId=#{txtCustId}")
	public int updateCheZhuLianXiRen(CheZhuLianXiRen item);

	@Select("select * from chezhulianxiren where txtCustId=#{txtCustId}")
	public CheZhuLianXiRen findCheZhuLianXiRenById(String txtCustId);

	@SelectProvider(type = CheZhuLianXiRenDaoSqlProvider.class, method = "queryVKeHuCheLiang")
	public List<VKeHuCheLiang> queryVKeHuCheLiang(
			@Param("item") VKeHuCheLiang query);
}
