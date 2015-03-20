package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.JianChaXiangMuDaoSqlProvider;
import com.chiefmech.arms.entity.JianChaXiangMu;

@Repository("jianChaXiangMuDao")
public interface JianChaXiangMuDao {
	
	@SelectProvider(type = JianChaXiangMuDaoSqlProvider.class, method = "getJianChaXiangMuList")
	public List<JianChaXiangMu> getJianChaXiangMuList(@Param("item") JianChaXiangMu query,
			@Param("page") int page, @Param("rows") int rows);

	@SelectProvider(type = JianChaXiangMuDaoSqlProvider.class, method = "getJianChaXiangMuListCount")
	public int getJianChaXiangMuListCount(@Param("item") JianChaXiangMu query);

	@Insert("insert into jianChaXiangMu(txtJianChaGuId,txtXuHao,txtJianChaSort,txtJianChaName,txtJianChaLiCheng,txtJianChaDate,txtXiangMuRemark) values(#{txtJianChaGuId},#{txtXuHao},#{txtJianChaSort},#{txtJianChaName},#{txtJianChaLiCheng},#{txtJianChaDate},#{txtXiangMuRemark})")
	public int insertItem(JianChaXiangMu item);

	@Update("update jianChaXiangMu set txtJianChaSort=#{txtJianChaSort},txtXuHao=#{txtXuHao},txtJianChaName=#{txtJianChaName},txtJianChaLiCheng=#{txtJianChaLiCheng},txtJianChaDate=#{txtJianChaDate},txtXiangMuRemark=#{txtXiangMuRemark} where txtJianChaGuId=#{txtJianChaGuId}")
	public int updateItem(JianChaXiangMu item);

	@Delete("delete from jianChaXiangMu where txtJianChaGuId=#{txtJianChaGuId}")
	public int deleteItem(String id);

	@Select("select * from jianChaXiangMu")
	public List<JianChaXiangMu> selectItem();

}
