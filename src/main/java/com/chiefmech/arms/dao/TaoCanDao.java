package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;
import com.chiefmech.arms.dao.sqlprovider.TaoCanDaoSqlProvider;
import com.chiefmech.arms.entity.TaoCan;

@Repository("taoCanDao")
public interface TaoCanDao {
	
	@SelectProvider(type = TaoCanDaoSqlProvider.class, method = "getTaoCanList")
	public List<TaoCan> getTaoCanList(
			@Param("item") TaoCan query, @Param("page") int page,
			@Param("rows") int rows);

	@SelectProvider(type = TaoCanDaoSqlProvider.class, method = "getTaoCanListCount")
	public int getTaoCanListCount(@Param("item") TaoCan query);
	
	@Insert("insert into taocan(taoCanId,txtTaoCanBianHao,txtTaoCanMingCheng,peijianzonge,gongshizonge) values(#{taoCanId},#{txtTaoCanBianHao},#{txtTaoCanMingCheng},#{peijianzonge},#{gongshizonge})")
	public int insertItem(TaoCan item);

	@Update("update taocan set txtTaoCanBianHao=#{txtTaoCanBianHao},txtTaoCanMingCheng=#{txtTaoCanMingCheng},peijianzonge=#{peijianzonge},gongshizonge=#{gongshizonge} where taoCanId=#{taoCanId}")
	public int updateItem(TaoCan item);

	@Delete("delete from taocan where taoCanId=#{taoCanId}")
	public int deleteItem(String id);


}
