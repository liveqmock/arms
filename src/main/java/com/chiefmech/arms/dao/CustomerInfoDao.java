package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.CheZhuLianXiRenDaoSqlProvider;
import com.chiefmech.arms.entity.CheLiangInfo;
import com.chiefmech.arms.entity.CustomerInfo;
import com.chiefmech.arms.entity.query.SaleAfterCustomSearchBean;
import com.chiefmech.arms.entity.view.VKeHuCheLiang;

@Repository("customerInfoDao")
public interface CustomerInfoDao {
	@Insert("insert into customerinfo(txtCustId,ddlCustSort,txtCheZhuName,txtCheZhuTel,txtLianXiRenName,txtLianXiRenTel,txtLianXiRenAdd,txtCheZhuJiaZhaoDate,txtHuiYuanJiFen,txtGongShiZheKou,txtCaiLiaoZheKou,txtHuiYuanDengJi) values(#{txtCustId},#{ddlCustSort},#{txtCheZhuName},#{txtCheZhuTel},#{txtLianXiRenName},#{txtLianXiRenTel},#{txtLianXiRenAdd},#{txtCheZhuJiaZhaoDate},#{txtHuiYuanJiFen},#{txtGongShiZheKou},#{txtCaiLiaoZheKou},#{txtHuiYuanDengJi})")
	public int insertCustomerInfo(CustomerInfo item);

	@Update("update customerinfo set ddlCustSort=#{ddlCustSort},txtCheZhuName=#{txtCheZhuName},txtCheZhuTel=#{txtCheZhuTel},txtLianXiRenName=#{txtLianXiRenName},txtLianXiRenTel=#{txtLianXiRenTel},txtLianXiRenAdd=#{txtLianXiRenAdd},txtCheZhuJiaZhaoDate=#{txtCheZhuJiaZhaoDate},txtHuiYuanJiFen=#{txtHuiYuanJiFen},txtGongShiZheKou=#{txtGongShiZheKou},txtCaiLiaoZheKou=#{txtCaiLiaoZheKou},txtHuiYuanDengJi=#{txtHuiYuanDengJi} where txtCustId=#{txtCustId}")
	public int updateCustomerInfo(CustomerInfo item);

	@Select("select * from customerinfo where txtCustId=#{txtCustId}")
	public CustomerInfo findCustomerInfoById(String txtCustId);

	@SelectProvider(type = CheZhuLianXiRenDaoSqlProvider.class, method = "queryVKeHuCheLiang")
	public List<VKeHuCheLiang> queryVKeHuCheLiang(
			@Param("item") VKeHuCheLiang query);

	@SelectProvider(type = CheZhuLianXiRenDaoSqlProvider.class, method = "getVKeHuCheLiangListForEasyUi")
	public List<VKeHuCheLiang> getVKeHuCheLiangListForEasyUi(
			@Param("item") SaleAfterCustomSearchBean query);

	@SelectProvider(type = CheZhuLianXiRenDaoSqlProvider.class, method = "getVKeHuCheLiangCountForEasyUi")
	public int getVKeHuCheLiangCountForEasyUi(
			@Param("item") SaleAfterCustomSearchBean query);

	@Select("select * from v_kehu_cheliang where txtCheLiangId=#{txtCheLiangId}")
	public VKeHuCheLiang findVKeHuCheLiangByCheLiangId(String txtCheLiangId);

	@Select("select * from customerinfo")
	public List<CustomerInfo> selectItem();

	@Insert("insert into chelianginfo(txtCustId,txtCheLiangId,ddlCheLiangZhiZaoShang,ddlCheLiangCheXi,txtCheLiangCheXingDaiMa,txtCheLiangChePaiHao,txtCheLiangCheJiaHao,txtCheLiangFaDongJiHao) values(#{txtCustId},#{txtCheLiangId},#{ddlCheLiangZhiZaoShang},#{ddlCheLiangCheXi},#{txtCheLiangCheXingDaiMa},#{txtCheLiangChePaiHao},#{txtCheLiangCheJiaHao},#{txtCheLiangFaDongJiHao})")
	public int insertCheLiangInfo(CheLiangInfo item);

	@Update("update chelianginfo set txtCustId=#{txtCustId},ddlCheLiangZhiZaoShang=#{ddlCheLiangZhiZaoShang},ddlCheLiangCheXi=#{ddlCheLiangCheXi},txtCheLiangCheXingDaiMa=#{txtCheLiangCheXingDaiMa},txtCheLiangChePaiHao=#{txtCheLiangChePaiHao},txtCheLiangCheJiaHao=#{txtCheLiangCheJiaHao},txtCheLiangFaDongJiHao=#{txtCheLiangFaDongJiHao} where txtCheLiangId=#{txtCheLiangId}")
	public int updateCheLiangInfo(CheLiangInfo item);

	@Select("select * from chelianginfo where txtCustId=#{txtCustId}")
	public List<CheLiangInfo> queryCheLiangInfoByCustomerId(String txtCustId);

	@Select("select * from chelianginfo where txtCheLiangId=#{txtCheLiangId}")
	public CheLiangInfo queryCheLiangInfoByCheLiangId(String txtCheLiangId);

	@Delete("delete from chelianginfo where txtCheLiangId=#{txtCheLiangId}")
	public int deleteCheLiangInfo(CheLiangInfo item);

	@Select("select * from chelianginfo where txtCheLiangId=#{txtCheLiangId}")
	public CheLiangInfo getCheLiangInfo(CheLiangInfo item);
}
