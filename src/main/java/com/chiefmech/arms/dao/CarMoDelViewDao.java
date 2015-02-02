package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.CarMoDelDaoSqlProvider;
import com.chiefmech.arms.entity.view.CarMoDelView;

@Repository("carMoDelDao")
public interface CarMoDelViewDao {
	
	@SelectProvider(type = CarMoDelDaoSqlProvider.class, method = "getCarMoDelList")
	public List<CarMoDelView> getCarMoDelList(
			@Param("item") CarMoDelView query, @Param("page") int page,
			@Param("rows") int rows);

	@SelectProvider(type = CarMoDelDaoSqlProvider.class, method = "getCarMoDelListCount")
	public int getCarMoDelListCount(@Param("item") CarMoDelView query);
	
	@Insert("insert into carmodel(id,modelId,modelName,brandId) values(#{id},#{modelId},#{modelName},#{brandId})")
	public int insertItem(CarMoDelView item);

	@Update("update carmodel set modelId=#{modelId},modelName=#{modelName},brandId=#{brandId} where id=#{id}")
	public int updateItem(CarMoDelView item);

	@Delete("delete from carmodel where id=#{id}")
	public int deleteItem(int id);

	@Select("select * from view_carmodel")
	public List<CarMoDelView> selectItem();


}
