package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;

import com.chiefmech.arms.dao.sqlprovider.CarWashDaoSqlProvider;
import com.chiefmech.arms.entity.CarWash;

public interface CarWashDao {

	@SelectProvider(type = CarWashDaoSqlProvider.class, method = "getCarWashList")
	public List<CarWash> getCarWashList(@Param("item") CarWash query,
			@Param("page") int page, @Param("rows") int rows);

	@SelectProvider(type = CarWashDaoSqlProvider.class, method = "getCarWashListCount")
	public int getCarWashListCount(@Param("item") CarWash query);

	@Insert("insert into carwash(txtGuid,txtRuChangDate,txtChePaiHao,ddlCheLiangPingPai,ddlCheLiangCheXi,txtCheZhuName,txtCheZhuTel,ddlZhiFuFangShi,txtFeiYong,ddlXiCheLeiXing,txtStatus) values(#{txtGuid},#{txtRuChangDate},#{txtChePaiHao},#{ddlCheLiangPingPai},#{ddlCheLiangCheXi},#{txtCheZhuName},#{txtCheZhuTel},#{ddlZhiFuFangShi},#{txtFeiYong},#{ddlXiCheLeiXing},#{txtStatus})")
	public int insertItem(CarWash item);

	@Update("update carwash set txtChePaiHao=#{txtChePaiHao},ddlCheLiangPingPai=#{ddlCheLiangPingPai},ddlCheLiangCheXi=#{ddlCheLiangCheXi},txtCheZhuName=#{txtCheZhuName},txtCheZhuTel=#{txtCheZhuTel},ddlZhiFuFangShi=#{ddlZhiFuFangShi},txtFeiYong=#{txtFeiYong},ddlXiCheLeiXing=#{ddlXiCheLeiXing} where txtGuid=#{txtGuid}")
	public int updateItem(CarWash item);

	@Delete("delete from carwash where txtGuid=#{txtGuid}")
	public int deleteItem(String id);

	@Select("select * from carwash where txtGuid=#{txtGuid}")
	public CarWash findItemById(String txtGuid);
	
	@Update("update carwash set txtStatus=#{txtStatus} where txtGuid=#{txtGuid}")
	public int updateCarWashStatus(CarWash item);
}
