package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.WeiXiuPaiGongDaoSqlProvider;
import com.chiefmech.arms.entity.WeiXiuZhu;

@Repository("weiXiuPaiGongDao")
public interface WeiXiuPaiGongDao {

	@SelectProvider(type = WeiXiuPaiGongDaoSqlProvider.class, method = "getWeiXiuPaiGongList")
	public List<WeiXiuZhu> getWeiXiuPaiGongList(@Param("item") WeiXiuZhu query,
			@Param("page") int page, @Param("rows") int rows);

	@SelectProvider(type = WeiXiuPaiGongDaoSqlProvider.class, method = "getWeiXiuPaiGongListCount")
	public int getWeiXiuPaiGongListCount(@Param("item") WeiXiuZhu query);

	@Insert("insert into weixiuzu(weixiuzuID,txtShopCode,weixiuzuName,zhuxiuRen) values(#{weixiuzuID},#{txtShopCode},#{weixiuzuName},#{zhuxiuRen})")
	public int insertItem(WeiXiuZhu item);

	@Update("update weixiuzu set weixiuzuName=#{weixiuzuName},zhuxiuRen=#{zhuxiuRen} where weixiuzuID=#{weixiuzuID}")
	public int updateItem(WeiXiuZhu item);

	@Delete("delete from weixiuzu where weixiuzuID=#{weixiuzuID}")
	public int deleteItem(String id);

	@Select("select * from weixiuzu")
	public List<WeiXiuZhu> selectItem();

}
