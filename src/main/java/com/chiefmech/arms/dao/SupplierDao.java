package com.chiefmech.arms.dao;

import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;
import com.chiefmech.arms.dao.sqlprovider.SupplierDaoSqlProvider;
import com.chiefmech.arms.entity.Supplier;

@Repository("supplierDao")
public interface SupplierDao {

	@SelectProvider(type = SupplierDaoSqlProvider.class, method = "getSupplierList")
	public List<Supplier> getSupplierList(@Param("item") Supplier query,
			@Param("page") int page, @Param("rows") int rows);

	@SelectProvider(type = SupplierDaoSqlProvider.class, method = "getSupplierListCount")
	public int getSupplierListCount(@Param("item") Supplier query);

	@Insert("insert into supplier(txtSuppId,txtSuppBianHao,txtSuppName,txtSuppTel1,txtSuppTel2,txtSuppDiZhi,txtSuppWangZhi,txtSuppDiQu,txtLXingMing,txtLShouJi,txtLChengHu,txtSuppChuanZhen,txtSuppEmail,txtSuppYouBian) values(#{txtSuppId},#{txtSuppBianHao},#{txtSuppName},#{txtSuppTel1},#{txtSuppTel2},#{txtSuppDiZhi},#{txtSuppWangZhi},#{txtSuppDiQu},#{txtLXingMing},#{txtLShouJi},#{txtLChengHu},#{txtSuppChuanZhen},#{txtSuppEmail},#{txtSuppYouBian})")
	public int insertItem(Supplier item);

	@Update("update supplier set txtSuppBianHao=#{txtSuppBianHao},txtSuppName=#{txtSuppName},txtSuppTel1=#{txtSuppTel1},txtSuppTel2=#{txtSuppTel2},txtSuppDiZhi=#{txtSuppDiZhi},txtSuppWangZhi=#{txtSuppWangZhi},txtSuppDiQu=#{txtSuppDiQu},txtLXingMing=#{txtLXingMing},txtLShouJi=#{txtLShouJi},txtLChengHu=#{txtLChengHu},txtSuppChuanZhen=#{txtSuppChuanZhen},txtSuppEmail=#{txtSuppEmail},txtSuppYouBian=#{txtSuppYouBian} where txtSuppId=#{txtSuppId}")
	public int updateItem(Supplier item);

	@Delete("delete from supplier where txtSuppId=#{txtSuppId}")
	public int deleteItem(String id);

}
