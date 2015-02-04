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
import com.chiefmech.arms.entity.query.SaleAfterCustomSearchBean;
import com.chiefmech.arms.entity.view.VKeHuCheLiang;

@Repository("cheZhuLianXiRenDaoDao")
public interface CheZhuLianXiRenDao {
	@Insert("insert into chezhulianxiren(txtCustId,ddlCustSort,txtCheZhuTel,txtCheZhuName,txtCheZhuMob,txtCheZhuShengRi,ddlCheZhuP,ddlCheZhuC,ddlCheZhuA,txtCheZhuAdd,txtLianXiRenName,txtLianXiRenTel,txtLianXiRenMob,ddlLianXiRenP,ddlLianXiRenC,ddlLianXiRenA,txtLianXiRenAdd,txtCheZhuJiaZhaoDate) values(#{txtCustId},#{ddlCustSort},#{txtCheZhuTel},#{txtCheZhuName},#{txtCheZhuMob},#{txtCheZhuShengRi},#{ddlCheZhuP},#{ddlCheZhuC},#{ddlCheZhuA},#{txtCheZhuAdd},#{txtLianXiRenName},#{txtLianXiRenTel},#{txtLianXiRenMob},#{ddlLianXiRenP},#{ddlLianXiRenC},#{ddlLianXiRenA},#{txtLianXiRenAdd},#{txtCheZhuJiaZhaoDate})")
	public int insertCheZhuLianXiRen(CheZhuLianXiRen item);

	@Update("update chezhulianxiren set ddlCustSort=#{ddlCustSort},txtCheZhuTel=#{txtCheZhuTel},txtCheZhuName=#{txtCheZhuName},txtCheZhuMob=#{txtCheZhuMob},txtCheZhuShengRi=#{txtCheZhuShengRi},ddlCheZhuP=#{ddlCheZhuP},ddlCheZhuC=#{ddlCheZhuC},ddlCheZhuA=#{ddlCheZhuA},txtCheZhuAdd=#{txtCheZhuAdd},txtLianXiRenName=#{txtLianXiRenName},txtLianXiRenTel=#{txtLianXiRenTel},txtLianXiRenMob=#{txtLianXiRenMob},ddlLianXiRenP=#{ddlLianXiRenP},ddlLianXiRenC=#{ddlLianXiRenC},ddlLianXiRenA=#{ddlLianXiRenA},txtLianXiRenAdd=#{txtLianXiRenAdd},txtCheZhuJiaZhaoDate=#{txtCheZhuJiaZhaoDate} where txtCustId=#{txtCustId}")
	public int updateCheZhuLianXiRen(CheZhuLianXiRen item);

	@Select("select * from chezhulianxiren where txtCustId=#{txtCustId}")
	public CheZhuLianXiRen findCheZhuLianXiRenById(String txtCustId);

	@SelectProvider(type = CheZhuLianXiRenDaoSqlProvider.class, method = "queryVKeHuCheLiang")
	public List<VKeHuCheLiang> queryVKeHuCheLiang(
			@Param("item") VKeHuCheLiang query);

	@SelectProvider(type = CheZhuLianXiRenDaoSqlProvider.class, method = "getVKeHuCheLiangListForEasyUi")
	public List<VKeHuCheLiang> getVKeHuCheLiangListForEasyUi(
			@Param("item") SaleAfterCustomSearchBean query);

	@SelectProvider(type = CheZhuLianXiRenDaoSqlProvider.class, method = "getVKeHuCheLiangCountForEasyUi")
	public int getVKeHuCheLiangCountForEasyUi(
			@Param("item") SaleAfterCustomSearchBean query);

	@Select("select * from v_kehu_cheliang where txtVehicleId=#{txtVehicleId}")
	public VKeHuCheLiang findVKeHuCheLiangByVehicleId(String txtVehicleId);
	
	@Select("select * from chezhulianxiren")
	public List<CheZhuLianXiRen> selectItem();
}
