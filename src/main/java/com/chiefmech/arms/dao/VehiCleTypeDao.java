package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.VehiCleTypeDaoSqlProvider;
import com.chiefmech.arms.entity.VehiCleType;
@Repository("vehiCleTypeDao")
public interface VehiCleTypeDao {

	@SelectProvider(type = VehiCleTypeDaoSqlProvider.class, method = "getVehiCleTypeList")
	public List<VehiCleType> getVehiCleTypeList(
			@Param("item") VehiCleType query, @Param("page") int page,
			@Param("rows") int rows);

	@SelectProvider(type = VehiCleTypeDaoSqlProvider.class, method = "getVehiCleTypeListCount")
	public int getVehiCleTypeListCount(@Param("item") VehiCleType query);

	@Insert("insert into vehicletype(vehiCleTypeId,vehiCleTypeName) values(#{vehiCleTypeId},#{vehiCleTypeName})")
	public int insertItem(VehiCleType item);

	@Update("update vehicletype set vehiCleTypeId=#{vehiCleTypeId},vehiCleTypeName=#{vehiCleTypeName} where vehiCleTypeGuid=#{vehiCleTypeGuid}")
	public int updateItem(VehiCleType item);

	@Delete("delete from vehicletype where vehiCleTypeGuid=#{vehiCleTypeGuid}")
	public int deleteItem(int id);

	@Select("select * from vehicletype")
	public List<VehiCleType> selectItem();

}
