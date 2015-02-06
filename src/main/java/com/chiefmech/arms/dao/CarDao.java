package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.chiefmech.arms.entity.CarBrand;
import com.chiefmech.arms.entity.CarModel;
import com.chiefmech.arms.entity.option.OptionBean;



@Repository("carDao")
public interface CarDao {

	@Select("select brandId,brandName,brandLogo from carbrand")
	public List<CarBrand> getAllCarBrand();

	@Select("select modelId,modelName,carmodel.brandId from carmodel left join carbrand on carbrand.brandId=carmodel.brandId where brandName=#{brandName}")
	public List<CarModel> findCarModelByBrandName(@Param("brandName") String brandName);
	
	@Select("select brandName name, brandName code from carbrand")
	public List<OptionBean> getCarBrandAllOption();
	
	@Select("select modelName name, modelName code from carmodel left join carbrand on carbrand.brandId=carmodel.brandId where brandName=#{brandName}")
	public List<OptionBean> getCarModelAllOption(@Param("brandName") String code);
	
}
