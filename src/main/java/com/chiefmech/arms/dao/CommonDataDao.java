package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.chiefmech.arms.entity.option.OptionBean;

public interface CommonDataDao {

	@Select("select txtSuppName name, txtSuppName code from supplier")
	List<OptionBean> getGongYingShangOptionBean();

	@Select("select txtStoreName name, txtStoreName code from store")
	List<OptionBean> getChangKuOptionBean();

	@Select("select weixiuzuName name, weixiuzuName code from weixiuzu where suoShuJiGou=#{suoShuJiGou}")
	List<OptionBean> getWeiXiuZuOptionBean(String suoShuJiGou);

	@Select("select jigouName name, jigouName code from jigou")
	List<OptionBean> getJiGouOptionBean();

	@Select("select brandName name, brandName code from carbrand")
	List<OptionBean> getCheLiangPingPaiOptionBean();

	@Select("select modelName name, modelName code from view_carmodel where brandName=#{cheLiangBrandName}")
	List<OptionBean> getCheLiangCheXiOptionBean(String cheLiangBrandName);
}
