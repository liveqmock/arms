package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.StoreDaoSqlProvider;
import com.chiefmech.arms.entity.Store;
import com.chiefmech.arms.entity.option.OptionBean;

@Repository("storeDao")
public interface StoreDao {

	@SelectProvider(type = StoreDaoSqlProvider.class, method = "getStoreList")
	public List<Store> getStoreList(@Param("item") Store query,
			@Param("page") int page, @Param("rows") int rows);

	@SelectProvider(type = StoreDaoSqlProvider.class, method = "getStoreListCount")
	public int getStoreListCount(@Param("item") Store query);

	@Insert("insert into store(StoreId,txtStoreBianHao,txtStoreName,txtRemarks) values(#{StoreId},#{txtStoreBianHao},#{txtStoreName},#{txtRemarks})")
	public int insertItem(Store item);

	@Update("update store set txtStoreBianHao=#{txtStoreBianHao},txtStoreName=#{txtStoreName},txtRemarks=#{txtRemarks} where StoreId=#{StoreId}")
	public int updateItem(Store item);

	@Delete("delete from store where StoreId=#{StoreId}")
	public int deleteItem(String id);

	@Select("select * from store")
	public List<Store> selectItem();

	@Select("select txtStoreName text, txtStoreName value from store")
	public List<OptionBean> getAllOptionBean();

}
