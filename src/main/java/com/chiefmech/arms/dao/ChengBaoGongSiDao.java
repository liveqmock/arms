package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.ChengBaoGongSiDaoSqlProvider;
import com.chiefmech.arms.entity.ChengBaoGongSi;

@Repository("chengBaoGongSiDao")
public interface ChengBaoGongSiDao {

	@SelectProvider(type = ChengBaoGongSiDaoSqlProvider.class, method = "getChengBaoGongSiList")
	public List<ChengBaoGongSi> getChengBaoGongSiList(
			@Param("item") ChengBaoGongSi query, @Param("page") int page,
			@Param("rows") int rows);

	@SelectProvider(type = ChengBaoGongSiDaoSqlProvider.class, method = "getChengBaoGongSiListCount")
	public int getChengBaoGongSiListCount(@Param("item") ChengBaoGongSi query);

	@Insert("insert into chengBaoGongSi(chengBaoGongSiId,chengBaoGongSiName,txtShopCode) values(#{chengBaoGongSiId},#{chengBaoGongSiName},#{txtShopCode})")
	public int insertItem(ChengBaoGongSi item);

	@Update("update chengBaoGongSi set chengBaoGongSiName=#{chengBaoGongSiName} where chengBaoGongSiId=#{chengBaoGongSiId}")
	public int updateItem(ChengBaoGongSi item);

	@Delete("delete from chengBaoGongSi where chengBaoGongSiId=#{chengBaoGongSiId}")
	public int deleteItem(String id);
}
