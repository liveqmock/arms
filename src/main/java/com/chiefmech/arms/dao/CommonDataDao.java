package com.chiefmech.arms.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.chiefmech.arms.entity.option.OptionBean;

public interface CommonDataDao {

	@Select("select txtSuppName name, txtSuppName code from supplier where txtShopCode=#{txtShopCode}")
	List<OptionBean> getSupplierOptionBean(String txtShopCode);

	@Select("select txtStoreName name, txtStoreName code from store")
	List<OptionBean> getChangKuOptionBean();

	@Select("select weixiuzuName name, weixiuzuName code from weixiuzu where txtShopCode=#{txtShopCode}")
	List<OptionBean> getWeiXiuZuOptionBean(String txtShopCode);

	@Select("select shopName name, shopName code from shop")
	List<OptionBean> getShopOptionBean();

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
