package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.HuiYuanDaoSqlProvider;
import com.chiefmech.arms.entity.HuiYuan;

@Repository("HuiYuanDao")
public interface HuiYuanDao {
	
	@SelectProvider(type = HuiYuanDaoSqlProvider.class, method = "getHuiYuanList")
	public List<HuiYuan> getHuiYuanList(
			@Param("item") HuiYuan query, @Param("page") int page,
			@Param("rows") int rows);

	@SelectProvider(type = HuiYuanDaoSqlProvider.class, method = "getHuiYuanListCount")
	public int getHuiYuanListCount(@Param("item") HuiYuan query);
	
	@Insert("insert into huiyuan(txtHuiYuanId,txtCustId,txtHuiYuanHao,txtHuiYuanDengJi,txtShenQingRiQi,txtHuiYuanJiFen,txtGongShiZheKou,txtCaiLiaoZheKou) values(#{txtHuiYuanId},#{txtCustId},#{txtHuiYuanHao},#{txtHuiYuanDengJi},#{txtShenQingRiQi},#{txtHuiYuanJiFen},#{txtGongShiZheKou},#{txtCaiLiaoZheKou})")
	public int insertItem(HuiYuan item);

	@Update("update huiyuan set txtCustId=#{txtCustId},txtHuiYuanHao=#{txtHuiYuanHao},txtHuiYuanDengJi=#{txtHuiYuanDengJi},txtShenQingRiQi=#{txtShenQingRiQi},txtHuiYuanJiFen=#{txtHuiYuanJiFen},txtGongShiZheKou=#{txtGongShiZheKou},txtCaiLiaoZheKou=#{txtCaiLiaoZheKou} where txtHuiYuanId=#{txtHuiYuanId}")
	public int updateItem(HuiYuan item);

	@Delete("delete from huiyuan where txtHuiYuanId=#{txtHuiYuanId}")
	public int deleteItem(String id);

	@Select("select * from huiyuan")
	public List<HuiYuan> selectItem();


}
