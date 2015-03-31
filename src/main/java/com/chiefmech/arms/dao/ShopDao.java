package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.ShopDaoSqlProvider;
import com.chiefmech.arms.entity.Shop;

@Repository("shopDao")
public interface ShopDao {

	@SelectProvider(type = ShopDaoSqlProvider.class, method = "getShopList")
	public List<Shop> getShopList(@Param("item") Shop query,
			@Param("page") int page, @Param("rows") int rows);

	@SelectProvider(type = ShopDaoSqlProvider.class, method = "getShopListCount")
	public int getShopListCount(@Param("item") Shop query);

	@Insert("insert into Shop(shopGuid,shopCode,shopName,shopLogo,shopAddr,shopDesc,shopTel,shopFax,expirydate,complaintCall,companyFlag) values(#{shopGuid},#{shopCode},#{shopName},#{shopLogo},#{shopAddr},#{shopDesc},#{shopTel},#{shopFax},#{expirydate},#{complaintCall},#{companyFlag})")
	public int insertItem(Shop item);

	@Update("update Shop set shopCode=#{shopCode},shopName=#{shopName},shopLogo=#{shopLogo},shopAddr=#{shopAddr},shopDesc=#{shopDesc},shopTel=#{shopTel},shopFax=#{shopFax},expirydate=#{expirydate},complaintCall=#{complaintCall} where shopGuid=#{shopGuid}")
	public int updateItem(Shop item);

	@Delete("delete from Shop where shopGuid=#{shopGuid}")
	public int deleteItem(String shopGuid);

	@Select("select * from Shop")
	public List<Shop> selectItem();

	@Select("select * from Shop where shopCode=#{shopCode}")
	public Shop findShopInfoByShopCode(String shopCode);

}
