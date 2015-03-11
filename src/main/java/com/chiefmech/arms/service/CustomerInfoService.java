package com.chiefmech.arms.service;

import java.util.List;

import com.chiefmech.arms.entity.CheLiangInfo;
import com.chiefmech.arms.entity.CustomerInfo;
import com.chiefmech.arms.entity.CustomerTaoKaItem;
import com.chiefmech.arms.entity.TaoKaItem;
import com.chiefmech.arms.entity.query.SaleAfterCustomSearchBean;
import com.chiefmech.arms.entity.view.VKeHuCheLiang;

public interface CustomerInfoService {

	public int insertCustomerInfo(CustomerInfo item);

	public int updateCustomerInfo(CustomerInfo item);

	public CustomerInfo findCustomerInfoById(String txtCustId);

	public VKeHuCheLiang findVKeHuCheLiangByCheLiangId(String txtCheLiangId);

	public List<VKeHuCheLiang> queryVKeHuCheLiang(VKeHuCheLiang query);

	public String getVKeHuCheLiangEasyUiJSon(SaleAfterCustomSearchBean query);

	public List<CustomerInfo> selectItem();

	public int insertCheLiangInfo(CheLiangInfo item);

	public int updateCheLiangInfo(CheLiangInfo item);

	public int deleteCheLiangInfo(CheLiangInfo item);

	public CheLiangInfo queryCheLiangInfoByCheLiangId(String cheLiangId);

	public List<CheLiangInfo> queryCheLiangInfoByCustomerId(String txtCustId);

	public String getCheLiangJsonData(CheLiangInfo item);

	public List<CustomerInfo> findCustomerInfoByCheZhuTel(String txtCheZhuTel);

	public int deleteCustInfo(String txtCustId);

	public List<TaoKaItem> queryTaoKaByName(String txtTaoKaSort);

	public int addTaoKa(String txtCustId, String txtTaoKaSort);

	public int deleteCustomerTaoKaItem(String txtCustId, String txtTaoKaSort);

	public List<CustomerTaoKaItem> queryCustomerTaoKaItemLstByCustomerId(
			String customerId);

	public int modifyRestTimes(String txtGuid, int txtRestTimes);
}
