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

	@Select("select shopName name, shopCode code from shop where companyFlag=#{companyFlag}")
	List<OptionBean> getShopCodeOptionBean(String companyFlag);

	@Select("select brandName name, brandName code from carbrand2")
	List<OptionBean> getCheLiangPingPaiOptionBean();

	@Select("select brandName name, brandId code from carbrand2")
	List<OptionBean> getCarBrand();

	@Select("select modelName name, modelName code from v_carmodel where brandName=#{cheLiangBrandName}")
	List<OptionBean> getCheLiangCheXiOptionBean(String cheLiangBrandName);

	@Select("select txtXiangMuName name, txtXiangMuName code from gongdanxiangmu where txtGongDanGuid=#{txtGongDanGuid}")
	List<OptionBean> getGongDanXiangMuOptionBean(String txtGongDanGuid);

	@Select("select distinct groupName name,groupName code from group_privileges where groupName!='管理员'")
	List<OptionBean> getGroupNameOptionBean();

	@Select("select distinct txtTaoKaName name,txtGuid code from taokasort where txtShopCode=#{txtShopCode}")
	List<OptionBean> getTaoKaSortGuid(String txtShopCode);

	@Select("select remark name,privilege code from group_privileges where groupName='管理员' order by privilegeCode")
	List<OptionBean> getPrivilege();

	@Select("select chengBaoGongSiName name, chengBaoGongSiName code from chengbaogongsi where txtShopCode=#{txtShopCode}")
	List<OptionBean> getchengBaoGongSiOptionBean(String txtShopCode);

	@Select("select txtName name, txtName code from customersort where txtShopCode=#{txtShopCode}")
	List<OptionBean> getCustomerSortOptionBean(String txtShopCode);
}
