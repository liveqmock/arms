package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.entity.CustomerSort;

@Repository("customerSortDao")
public interface CustomerSortDao {
	
	@Insert("insert into customersort(txtGuid,txtName,txtShopCode) values(#{txtGuid},#{txtName},#{txtShopCode})")
	public int insertItem(CustomerSort item);

	@Update("update customersort set txtName=#{txtName},txtShopCode=#{txtShopCode} where txtGuid=#{txtGuid}")
	public int updateItem(CustomerSort item);

	@Delete("delete from customersort where txtGuid=#{txtGuid}")
	public int deleteItem(String id);

	@Select("select * from customersort where txtShopCode=#{txtShopCode}")
	public List<CustomerSort> selectAllItems(String txtShopCode);
}
