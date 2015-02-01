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
	
	@Insert("insert into JiGou(id,jigouCode,jigouName,jigouLogo,jigouAddr,jigouDesc,jigouPhone,lastModifyTime,jigouTel1,jigouTel2,jigouFax,jingpinFeilv,jinpinMaoLiLv) values(#{id},#{jigouCode},#{jigouName},#{jigouLogo},#{jigouAddr},#{jigouDesc},#{jigouPhone},#{lastModifyTime},#{jigouTel1},#{jigouTel2},#{jigouFax},#{jingpinFeilv},#{jinpinMaoLiLv})")
	public int insertItem(JiGou item);

	@Update("update JiGou set jigouCode=#{jigouCode},jigouName=#{jigouName},jigouLogo=#{jigouLogo},jigouAddr=#{jigouAddr},jigouDesc=#{jigouDesc},jigouPhone=#{jigouPhone},lastModifyTime=#{lastModifyTime},jigouTel1=#{jigouTel1},jigouTel2=#{jigouTel2},jigouFax=#{jigouFax},jingpinFeilv=#{jingpinFeilv},jinpinMaoLiLv=#{jinpinMaoLiLv} where id=#{id}")
	public int updateItem(JiGou item);

	@Delete("delete from JiGou where id=#{id}")
	public int deleteItem(int id);

	@Select("select * from JiGou")
	public List<JiGou> selectItem();

}
