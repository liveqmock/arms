package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.entity.Param;

@Repository("paramDao")
public interface ParamDao {

	@Insert("insert into params(paramGuid,paramSort,paramKey,paramValue) values(#{paramGuid},#{paramSort},#{paramKey},#{paramValue})")
	public int insertItem(Param item);

	@Update("update params set paramSort=#{paramSort},paramKey=#{paramKey},paramValue=#{paramValue} where paramGuid=#{paramGuid}")
	public int updateItem(Param item);

	@Delete("delete from params where paramGuid=#{paramGuid}")
	public int deleteItem(String id);

	@Select("select * from params where paramSort=#{paramSort}")
	public List<Param> getParamList(Param item);

}
