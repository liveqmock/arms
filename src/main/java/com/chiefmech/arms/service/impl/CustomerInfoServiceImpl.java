package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.CustomerInfoDao;
import com.chiefmech.arms.entity.CheLiangInfo;
import com.chiefmech.arms.entity.CustomerInfo;
import com.chiefmech.arms.entity.CustomerTaoKaItem;
import com.chiefmech.arms.entity.TaoKaItem;
import com.chiefmech.arms.entity.query.SaleAfterCustomSearchBean;
import com.chiefmech.arms.entity.view.VKeHuCheLiang;
import com.chiefmech.arms.service.CustomerInfoService;

@Service("customerInfoService")
public class CustomerInfoServiceImpl implements CustomerInfoService {
	@Resource()
	private CustomerInfoDao customerInfoDao;

	@Override
	public int insertCustomerInfo(CustomerInfo item) {
		return customerInfoDao.insertCustomerInfo(item);
	}

	@Override
	public int updateCustomerInfo(CustomerInfo item) {
		return customerInfoDao.updateCustomerInfo(item);
	}

	@Override
	public CustomerInfo findCustomerInfoById(String txtCustId) {
		return customerInfoDao.findCustomerInfoById(txtCustId);
	}

	@Override
	public List<CustomerInfo> findCustomerInfoByCheZhuTel(String txtCheZhuTel) {
		return customerInfoDao.findCustomerInfoByCheZhuTel(txtCheZhuTel);
	}

	@Override
	public List<VKeHuCheLiang> queryVKeHuCheLiang(VKeHuCheLiang query) {
		return customerInfoDao.queryVKeHuCheLiang(query);
	}

	@Override
	public String getVKeHuCheLiangEasyUiJSon(SaleAfterCustomSearchBean query) {
		List<VKeHuCheLiang> lst = customerInfoDao
				.getVKeHuCheLiangListForEasyUi(query);
		int total = customerInfoDao.getVKeHuCheLiangCountForEasyUi(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public VKeHuCheLiang findVKeHuCheLiangByCheLiangId(String txtCheLiangId) {
		return customerInfoDao.findVKeHuCheLiangByCheLiangId(txtCheLiangId);
	}

	@Override
	public List<CustomerInfo> selectItem() {
		return customerInfoDao.selectItem();
	}

	@Override
	public int insertCheLiangInfo(CheLiangInfo item) {
		return customerInfoDao.insertCheLiangInfo(item);
	}

	@Override
	public int updateCheLiangInfo(CheLiangInfo item) {
		return customerInfoDao.updateCheLiangInfo(item);
	}

	@Override
	public List<CheLiangInfo> queryCheLiangInfoByCustomerId(String txtCustId) {
		return customerInfoDao.queryCheLiangInfoByCustomerId(txtCustId);
	}

	@Override
	public CheLiangInfo queryCheLiangInfoByCheLiangId(String txtCheLiangId) {
		return customerInfoDao.queryCheLiangInfoByCheLiangId(txtCheLiangId);
	}

	@Override
	public int deleteCheLiangInfo(CheLiangInfo item) {
		return customerInfoDao.deleteCheLiangInfo(item);
	}

	@Override
	public String getCheLiangJsonData(CheLiangInfo item) {
		return JSONObject.fromObject(customerInfoDao.getCheLiangInfo(item))
				.toString();
	}

	@Override
	public int deleteCustInfo(String txtCustId) {
		return customerInfoDao.deleteCustInfo(txtCustId);
	}

	@Override
	public List<TaoKaItem> queryTaoKaByName(String txtTaoKaSort) {
		return customerInfoDao.queryTaoKaByName(txtTaoKaSort);
	}

	@Override
	public int addTaoKa(String txtCustId, String txtTaoKaSort) {
		List<TaoKaItem> taoKaItemLst = queryTaoKaByName(txtTaoKaSort);
		List<CustomerTaoKaItem> customerTaoKaItemLst = customerInfoDao
				.queryCustomerTaoKaItem(txtCustId, txtTaoKaSort);
		int rowAffected = 0;
		for (TaoKaItem itemTpl : taoKaItemLst) {
			boolean isTaoKaSortExist = false;
			for (CustomerTaoKaItem customerTaoKaItem : customerTaoKaItemLst) {
				if (itemTpl.getTxtXiangMuName().equals(
						customerTaoKaItem.getTxtXiangMuName())) {
					// 如果存在想保存的套卡，更新总次数和剩余使用次数即可
					customerTaoKaItem.setTxtRestTimes(customerTaoKaItem
							.getTxtRestTimes() + itemTpl.getTxtTotalTimes());
					customerTaoKaItem.setTxtTotalTimes(customerTaoKaItem
							.getTxtRestTimes());
					rowAffected = customerInfoDao
							.updateCustomerTaoKaItem(customerTaoKaItem);
					isTaoKaSortExist = true;
					break;
				}
			}

			if (!isTaoKaSortExist) {
				// 如果还不存在想保存的套卡，直接插入数据库
				CustomerTaoKaItem customerTaoKaItem = new CustomerTaoKaItem(
						txtCustId, itemTpl);
				rowAffected = customerInfoDao
						.insertCustomerTaoKaItem(customerTaoKaItem);
			}
		}

		return rowAffected;
	}

	@Override
	public int deleteCustomerTaoKaItem(String txtCustId, String txtTaoKaSort) {
		return customerInfoDao.deleteCustomerTaoKaItem(txtCustId, txtTaoKaSort);
	}

	@Override
	public List<CustomerTaoKaItem> queryCustomerTaoKaItemLstByCustomerId(
			String customerId) {
		return customerInfoDao
				.queryCustomerTaoKaItemLstByCustomerId(customerId);
	}

	@Override
	public int modifyRestTimes(String txtGuid, int txtRestTimes) {
		return customerInfoDao.modifyRestTimes(txtGuid, txtRestTimes);
	}

}
