package com.chiefmech.arms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.stereotype.Service;

import com.chiefmech.arms.dao.CustomerInfoDao;
import com.chiefmech.arms.entity.CheLiangInfo;
import com.chiefmech.arms.entity.CustomerInfo;
import com.chiefmech.arms.entity.query.SaleAfterCustomSearchBean;
import com.chiefmech.arms.entity.view.VKeHuCheLiang;
import com.chiefmech.arms.service.CustomerInfoService;

@Service("customerInfoService")
public class CustomerInfoServiceImpl implements CustomerInfoService {
	@Resource()
	private CustomerInfoDao customerInfo;

	@Override
	public int insertCustomerInfo(CustomerInfo item) {
		return customerInfo.insertCustomerInfo(item);
	}

	@Override
	public int updateCustomerInfo(CustomerInfo item) {
		return customerInfo.updateCustomerInfo(item);
	}

	@Override
	public CustomerInfo findCustomerInfoById(String txtCustId) {
		return customerInfo.findCustomerInfoById(txtCustId);
	}

	@Override
	public List<VKeHuCheLiang> queryVKeHuCheLiang(VKeHuCheLiang query) {
		return customerInfo.queryVKeHuCheLiang(query);
	}

	@Override
	public String getVKeHuCheLiangEasyUiJSon(SaleAfterCustomSearchBean query) {
		List<VKeHuCheLiang> lst = customerInfo
				.getVKeHuCheLiangListForEasyUi(query);
		int total = customerInfo.getVKeHuCheLiangCountForEasyUi(query);

		String lstJson = JSONArray.fromObject(lst).toString();
		String jsonStr = String.format("{\"total\":\"%d\",\"rows\":%s}", total,
				lstJson);
		return jsonStr;
	}

	@Override
	public VKeHuCheLiang findVKeHuCheLiangByCheLiangId(String txtCheLiangId) {
		return customerInfo.findVKeHuCheLiangByCheLiangId(txtCheLiangId);
	}

	@Override
	public List<CustomerInfo> selectItem() {
		return customerInfo.selectItem();
	}

	@Override
	public int insertCheLiangInfo(CheLiangInfo item) {
		return customerInfo.insertCheLiangInfo(item);
	}

	@Override
	public int updateCheLiangInfo(CheLiangInfo item) {
		return customerInfo.updateCheLiangInfo(item);
	}

	@Override
	public List<CheLiangInfo> queryCheLiangInfoByCustomerId(String txtCustId) {
		return customerInfo.queryCheLiangInfoByCustomerId(txtCustId);
	}

	@Override
	public CheLiangInfo queryCheLiangInfoByCheLiangId(String txtCheLiangId) {
		return customerInfo.queryCheLiangInfoByCheLiangId(txtCheLiangId);
	}

	@Override
	public int deleteCheLiangInfo(CheLiangInfo item) {
		return customerInfo.deleteCheLiangInfo(item);
	}

	@Override
	public String getCheLiangJsonData(CheLiangInfo item) {
		return JSONObject.fromObject(customerInfo.getCheLiangInfo(item))
				.toString();
	}

}
