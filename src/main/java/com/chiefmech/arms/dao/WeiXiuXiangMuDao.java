package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.WeiXiuXiangMuDaoSqlProvider;
import com.chiefmech.arms.entity.WeiXiuXiangMu;

@Repository("weiXiuXiangMuDao")
public interface WeiXiuXiangMuDao {

	@SelectProvider(type = WeiXiuXiangMuDaoSqlProvider.class, method = "getWeiXiuXiangMuList")
	public List<WeiXiuXiangMu> getWeiXiuXiangMuList(
			@Param("txtGongDanId") String saleAfterGuid,
			@Param("item") WeiXiuXiangMu query, @Param("page") int page,
			@Param("rows") int rows);

	@SelectProvider(type = WeiXiuXiangMuDaoSqlProvider.class, method = "getWeiXiuXiangMuListCount")
	public int getWeiXiuXiangMuListCount(
			@Param("txtGongDanId") String saleAfterGuid,
			@Param("item") WeiXiuXiangMu query);

	@Insert("insert into weixiuxiangmu(txtGuid,txtShopCode,txtCode,txtName,txtNeiRong,txtFeiYong,ddlGongDuan,txtRemark) values(#{txtGuid},#{txtShopCode},#{txtCode},#{txtName},#{txtNeiRong},#{txtFeiYong},#{ddlGongDuan},#{txtRemark})")
	public int insertItem(WeiXiuXiangMu item);

	@Update("update weixiuxiangmu set txtCode=#{txtCode},txtName=#{txtName},txtNeiRong=#{txtNeiRong},txtFeiYong=#{txtFeiYong},ddlGongDuan=#{ddlGongDuan},txtRemark=#{txtRemark} where txtGuid=#{txtGuid}")
	public int updateItem(WeiXiuXiangMu item);

	@Delete("delete from weixiuxiangmu where txtGuid=#{txtGuid}")
	public int deleteItem(String id);

}
