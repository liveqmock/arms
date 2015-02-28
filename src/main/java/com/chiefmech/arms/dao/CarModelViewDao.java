package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.CarModelDaoSqlProvider;
import com.chiefmech.arms.entity.view.CarModelView;

@Repository("carModelDao")
public interface CarModelViewDao {
	
	@SelectProvider(type = CarModelDaoSqlProvider.class, method = "getCarModelList")
	public List<CarModelView> getCarModelList(
			@Param("item") CarModelView query, @Param("page") int page,
			@Param("rows") int rows);

	@SelectProvider(type = CarModelDaoSqlProvider.class, method = "getCarModelListCount")
	public int getCarModelListCount(@Param("item") CarModelView query);
	
	@Insert("insert into carmodel2(modelId,modelName,brandId) values(#{modelId},#{modelName},#{brandId})")
	public int insertItem(CarModelView item);

	@Update("update carmodel2 set modelName=#{modelName},brandId=#{brandId} where id=#{modelCode}")
	public int updateItem(CarModelView item);

	@Delete("delete from carmodel2 where id=#{modelCode}")
	public int deleteItem(String id);

	@Select("select * from v_carmodel")
	public List<CarModelView> selectItem();

	@Insert("insert into carbrand2(brandId,brandName,brandLogo) values(#{brandId},#{brandName},#{brandLogo})")
	public int insertItemCarbrand(CarModelView item);

	@Update("update carbrand2 set brandName=#{brandName},brandLogo=#{brandLogo} where brandId=#{brandId}")
	public int updateItemCarbrand(CarModelView item);
	
	@Select("select count(*) from carbrand2 where brandName=#{brandName}")
	public int isBrand(String brandName);

	@Delete("delete from carbrand2 where brandId=#{id}")
	public int deleteItemCarbrand(String id);

	@Delete("delete from carmodel2  where brandId=#{id}")
	public int deleteCarModelItemByBrandId(String id);
}
