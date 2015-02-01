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
import com.chiefmech.arms.entity.WeiXiuPaiGong;

@Repository("weiXiuPaiGongDao")
public interface WeiXiuPaiGongDao {

	@SelectProvider(type = WeiXiuPaiGongDaoSqlProvider.class, method = "getWeiXiuPaiGongList")
	public List<WeiXiuPaiGong> getWeiXiuPaiGongList(
			@Param("item") WeiXiuPaiGong query, @Param("page") int page,
			@Param("rows") int rows);

	@SelectProvider(type = WeiXiuPaiGongDaoSqlProvider.class, method = "getWeiXiuPaiGongListCount")
	public int getWeiXiuPaiGongListCount(@Param("item") WeiXiuPaiGong query);

	@Insert("insert into weixiuzu(weixiuzuID,weixiuzuBianHao,weixiuzuName,zhuxiuRen,weixiuzuDesc) values(#{weixiuzuID},#{weixiuzuBianHao},#{weixiuzuName},#{zhuxiuRen},#{weixiuzuDesc})")
	public int insertItem(WeiXiuPaiGong item);

	@Update("update weixiuzu set weixiuzuBianHao=#{weixiuzuBianHao},weixiuzuName=#{weixiuzuName},zhuxiuRen=#{zhuxiuRen},weixiuzuDesc=#{weixiuzuDesc} where weixiuzuID=#{weixiuzuID}")
	public int updateItem(WeiXiuPaiGong item);

	@Delete("delete from weixiuzu where weixiuzuID=#{weixiuzuID}")
	public int deleteItem(String id);

	@Select("select * from weixiuzu")
	public List<WeiXiuPaiGong> selectItem();

}
