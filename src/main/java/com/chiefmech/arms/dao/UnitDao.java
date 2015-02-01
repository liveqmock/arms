package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.UnitDaoSqlProvider;
import com.chiefmech.arms.entity.Unit;


@Repository("unitDao")
public interface UnitDao {
	@SelectProvider(type = UnitDaoSqlProvider.class, method = "getUnitList")
	public List<Unit> getUnitList(
			@Param("item") Unit query, @Param("page") int page,
			@Param("rows") int rows);

	@SelectProvider(type = UnitDaoSqlProvider.class, method = "getUnitListCount")
	public int getUnitListCount(@Param("item") Unit query);

	@Insert("insert into Unit(txtUnitId,txtUnitName,ddlStopFlag,txtRemarks) values(#{txtUnitId},#{txtUnitName},#{ddlStopFlag},#{txtRemarks})")
	public int insertItem(Unit item);

	@Update("update Unit set txtUnitName=#{txtUnitName},ddlStopFlag=#{ddlStopFlag},txtRemarks=#{txtRemarks} where txtUnitId=#{txtUnitId}")
	public int updateItem(Unit item);

	@Delete("delete from Unit where txtUnitId=#{txtUnitId}")
	public int deleteItem(String id);

}
