package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;
import com.chiefmech.arms.dao.sqlprovider.JiGouDaoSqlProvider;
import com.chiefmech.arms.entity.JiGou;

@Repository("jiGouDao")
public interface JiGouDao {

	@SelectProvider(type = JiGouDaoSqlProvider.class, method = "getJiGouList")
	public List<JiGou> getJiGouList(@Param("item") JiGou query,
			@Param("page") int page, @Param("rows") int rows);

	@SelectProvider(type = JiGouDaoSqlProvider.class, method = "getJiGouListCount")
	public int getJiGouListCount(@Param("item") JiGou query);

	@Insert("insert into JiGou(jigouGuid,jigouCode,jigouName,jigouLogo,jigouAddr,jigouDesc,jigouTel,jigouFax) values(#{jigouGuid},#{jigouCode},#{jigouName},#{jigouLogo},#{jigouAddr},#{jigouDesc},#{jigouTel},#{jigouFax})")
	public int insertItem(JiGou item);

	@Update("update JiGou set jigouCode=#{jigouCode},jigouName=#{jigouName},jigouLogo=#{jigouLogo},jigouAddr=#{jigouAddr},jigouDesc=#{jigouDesc},jigouTel=#{jigouTel},jigouFax=#{jigouFax} where jigouGuid=#{jigouGuid}")
	public int updateItem(JiGou item);

	@Delete("delete from JiGou where jigouGuid=#{jigouGuid}")
	public int deleteItem(String jigouGuid);

	@Select("select * from JiGou")
	public List<JiGou> selectItem();

}
