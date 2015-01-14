package com.chiefmech.arms.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.entity.CustomVehicle;

@Repository("customVehicleDao")
public interface CustomVehicleDao {
	@Insert("insert into customvehicle(txtCustId,txtVehicleId,ddlCheLiangZhiZaoShang,ddlCheLiangCheXi,txtCheLiangCheXingDaiMa,ddlCheShenColor,txtCheLiangChePaiHao,txtCheLiangCheJiaHao,txtCheLiangFaDongJiHao,txtCheLiangBianSuXiangHao,txtBaoXianDate,txtZhiZaoDate,txtGouCheDate,ddlNeiZhuangYanSe,txtShangJianDanHao,txtHeGeZhengHao,txtJinKouZhengHao,txtCheLiangGuiGe,ddlCheLiangSort,txtCheLiangNextExaDate) values(#{txtCustId},#{txtVehicleId},#{ddlCheLiangZhiZaoShang},#{ddlCheLiangCheXi},#{txtCheLiangCheXingDaiMa},#{ddlCheShenColor},#{txtCheLiangChePaiHao},#{txtCheLiangCheJiaHao},#{txtCheLiangFaDongJiHao},#{txtCheLiangBianSuXiangHao},#{txtBaoXianDate},#{txtZhiZaoDate},#{txtGouCheDate},#{ddlNeiZhuangYanSe},#{txtShangJianDanHao},#{txtHeGeZhengHao},#{txtJinKouZhengHao},#{txtCheLiangGuiGe},#{ddlCheLiangSort},#{txtCheLiangNextExaDate})")
	public int insertCustomVehicle(CustomVehicle item);

	@Update("update customvehicle set txtCustId=#{txtCustId},ddlCheLiangZhiZaoShang=#{ddlCheLiangZhiZaoShang},ddlCheLiangCheXi=#{ddlCheLiangCheXi},txtCheLiangCheXingDaiMa=#{txtCheLiangCheXingDaiMa},ddlCheShenColor=#{ddlCheShenColor},txtCheLiangChePaiHao=#{txtCheLiangChePaiHao},txtCheLiangCheJiaHao=#{txtCheLiangCheJiaHao},txtCheLiangFaDongJiHao=#{txtCheLiangFaDongJiHao},txtCheLiangBianSuXiangHao=#{txtCheLiangBianSuXiangHao},txtBaoXianDate=#{txtBaoXianDate},txtZhiZaoDate=#{txtZhiZaoDate},txtGouCheDate=#{txtGouCheDate},ddlNeiZhuangYanSe=#{ddlNeiZhuangYanSe},txtShangJianDanHao=#{txtShangJianDanHao},txtHeGeZhengHao=#{txtHeGeZhengHao},txtJinKouZhengHao=#{txtJinKouZhengHao},txtCheLiangGuiGe=#{txtCheLiangGuiGe},ddlCheLiangSort=#{ddlCheLiangSort},txtCheLiangNextExaDate=#{txtCheLiangNextExaDate} where txtVehicleId=#{txtVehicleId}")
	public int updateCustomVehicle(CustomVehicle item);

}
