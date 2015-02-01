package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.dao.sqlprovider.ZheKouViewDaoSqlProvider;
import com.chiefmech.arms.entity.ZheKou;
import com.chiefmech.arms.entity.view.ZheKouView;

@Repository("zheKouViewDao")
public interface ZheKouViewDao {
	
	@SelectProvider(type = ZheKouViewDaoSqlProvider.class, method = "getZheKouViewList")
	public List<ZheKouView> getZheKouViewList(@Param("item") ZheKouView query,
			@Param("page") int page, @Param("rows") int rows);

	@SelectProvider(type = ZheKouViewDaoSqlProvider.class, method = "getZheKouViewListCount")
	public int getZheKouViewListCount(@Param("item") ZheKouView query);

	@Insert("insert into zhekou(txtZheKouGuId,userId,txtGongShiZheKou,txtMeiRongZheKou,txtJiDianZheKou,txtBaoYangZheKou,txtBanJinZheKou,txtPenQiZheKou,txtCaiLiaoZheKou) values(#{txtZheKouGuId},#{userId},#{txtGongShiZheKou},#{txtMeiRongZheKou},#{txtJiDianZheKou},#{txtBaoYangZheKou},#{txtBanJinZheKou},#{txtPenQiZheKou},#{txtCaiLiaoZheKou})")
	public int insertItem(ZheKou item);

	@Update("update zhekou set userId=#{userId},txtGongShiZheKou=#{txtGongShiZheKou},txtMeiRongZheKou=#{txtMeiRongZheKou},txtJiDianZheKou=#{txtJiDianZheKou},txtBaoYangZheKou=#{txtBaoYangZheKou},txtBanJinZheKou=#{txtBanJinZheKou},txtPenQiZheKou=#{txtPenQiZheKou},txtCaiLiaoZheKou=#{txtCaiLiaoZheKou} where txtZheKouGuId=#{txtZheKouGuId}")
	public int updateItem(ZheKou item);

	@Delete("delete from zhekou where txtZheKouGuId=#{txtZheKouGuId}")
	public int deleteItem(String id);
}
