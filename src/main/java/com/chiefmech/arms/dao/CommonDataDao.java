package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.chiefmech.arms.entity.option.OptionBean;

public interface CommonDataDao {

	@Select("select txtSuppName name, txtSuppName code from supplier")
	List<OptionBean> getGongYingShangOptionBean();

	@Select("select txtStoreName name, txtStoreName code from store")
	List<OptionBean> getChangKuOptionBean();

	@Select("select weixiuzuName name, weixiuzuName code from weixiuzu")
	List<OptionBean> getWeiXiuZuOptionBean();

	@Select("select jigouName name, jigouName code from jigou")
	List<OptionBean> getJiGouOptionBean();

	@Select("select brandName name, brandName code from carbrand2")
	List<OptionBean> getCheLiangPingPaiOptionBean();
	
	@Select("select brandName name, brandId code from carbrand2")
	List<OptionBean> getCarBrand();

	@Select("select modelName name, modelName code from v_carmodel where brandName=#{cheLiangBrandName}")
	List<OptionBean> getCheLiangCheXiOptionBean(String cheLiangBrandName);

	@Select("select txtXiangMuName name, txtXiangMuName code from gongdanxiangmu where txtGongDanGuid=#{txtGongDanGuid}")
	List<OptionBean> getGongDanXiangMuOptionBean(String txtGongDanGuid);

	@Select("select groupName name,groupName code from groups")
	List<OptionBean> getGroupNameOptionBean();
}
