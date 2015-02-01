package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.DepartMentDaoSqlProvider;
import com.chiefmech.arms.entity.DepartMent;



@Repository("departMentDao")
public interface DepartMentDao {
	
	@SelectProvider(type = DepartMentDaoSqlProvider.class, method = "getDepartMentList")
	public List<DepartMent> getDepartMentList(@Param("item") DepartMent query,
			@Param("page") int page, @Param("rows") int rows);

	@SelectProvider(type = DepartMentDaoSqlProvider.class, method = "getDepartMentListCount")
	public int getDepartMentListCount(@Param("item") DepartMent query);
	
	@Insert("insert into department(departId,departCode,departName,departDesc) values(#{departId},#{departCode},#{departName},#{departDesc})")
	public int insertItem(DepartMent item);

	@Update("update department set departCode=#{departCode},departName=#{departName},departDesc=#{departDesc} where departId=#{departId}")
	public int updateItem(DepartMent item);

	@Delete("delete from department where departId=#{departId}")
	public int deleteItem(String id);

	@Select("select * from department")
	public List<DepartMent> selectItem();

}
