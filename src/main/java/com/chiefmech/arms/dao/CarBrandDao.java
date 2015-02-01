package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;
import com.chiefmech.arms.dao.sqlprovider.CarBrandDaoSqlProvider;
import com.chiefmech.arms.entity.CarBrand;

@Repository("carBrandDao")
public interface CarBrandDao {

	@SelectProvider(type = CarBrandDaoSqlProvider.class, method = "getCarBrandList")
	public List<CarBrand> getCarBrandList(@Param("item") CarBrand query,
			@Param("page") int page, @Param("rows") int rows);

	@SelectProvider(type = CarBrandDaoSqlProvider.class, method = "getCarBrandListCount")
	public int getCarBrandListCount(@Param("item") CarBrand query);

	@Insert("insert into carbrand(id,brandId,brandName) values(#{id},#{brandId},#{brandName})")
	public int insertItem(CarBrand item);

	@Update("update carbrand set brandId=#{brandId},brandName=#{brandName} where id=#{id}")
	public int updateItem(CarBrand item);

	@Delete("delete from carbrand where id=#{id}")
	public int deleteItem(int id);

	@Select("select * from carbrand")
	public List<CarBrand> selectItem();

}
