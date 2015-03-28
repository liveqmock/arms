package com.chiefmech.arms.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.common.util.ConfigUtil;
import com.chiefmech.arms.dao.CommonDataDao;
import com.chiefmech.arms.entity.option.OptionBean;
import com.chiefmech.arms.service.CommonDataService;

@Service("commonDataService")
public class CommonDataServiceImpl implements CommonDataService {
	@Resource()
	private CommonDataDao commonDataDao;

	@Override
	public List<OptionBean> getOptionBean(String target) {
		return getOptionBean(target, null);
	}

	@Override
	public List<OptionBean> getOptionBean(String target,
			Map<String, String> param) {
		List<OptionBean> lst = null;
		String shopCode = ConfigUtil.getInstance().getShopInfo().getShopCode();
		String companyFlag = ConfigUtil.getInstance().getShopInfo().getCompanyFlag();
		if ("GongYingShang".equals(target)) {
			lst = commonDataDao.getSupplierOptionBean(shopCode);
		} else if ("ChangKu".equals(target)) {
			lst = commonDataDao.getChangKuOptionBean();
		} else if ("WeiXiuZu".equals(target)) {
			lst = commonDataDao.getWeiXiuZuOptionBean(shopCode);
		} else if ("Shop".equals(target)) {
			lst = commonDataDao.getShopOptionBean(companyFlag);
		} else if ("CheLiangPingPai".equals(target)) {
			lst = commonDataDao.getCheLiangPingPaiOptionBean();
		} else if ("CheLiangCheXi".equals(target)) {
			lst = commonDataDao.getCheLiangCheXiOptionBean(param
					.get("CheLiangBrandName"));
		} else if ("GongDanXiangMu".equals(target)) {
			lst = commonDataDao.getGongDanXiangMuOptionBean(param
					.get("saleAfterWeiXiuGuid"));
		} else if ("GroupName".equals(target)) {
			lst = commonDataDao.getGroupNameOptionBean();
		} else if (("CarBrand").equals(target)) {
			lst = commonDataDao.getCarBrand();
		} else if (("TaoKaSortGuid").equals(target)) {
			lst = commonDataDao.getTaoKaSortGuid(shopCode);
		} else if (("Remark").equals(target)) {
			lst = commonDataDao.getPrivilege();
		} else if (("chengBaoGongSiName").equals(target)) {
			lst = commonDataDao.getchengBaoGongSiOptionBean(shopCode);
		} else if (("CustomerSort").equals(target)) {
			lst = commonDataDao.getCustomerSortOptionBean(shopCode);
		}
		return lst;
	}
}
