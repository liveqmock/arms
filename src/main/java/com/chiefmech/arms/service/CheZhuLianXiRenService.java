package com.chiefmech.arms.service;

import java.util.List;

import com.chiefmech.arms.entity.CheZhuLianXiRen;
import com.chiefmech.arms.entity.query.SaleAfterCustomSearchBean;
import com.chiefmech.arms.entity.view.VKeHuCheLiang;

public interface CheZhuLianXiRenService {

	public int insertCheZhuLianXiRen(CheZhuLianXiRen item);

	public int updateCheZhuLianXiRen(CheZhuLianXiRen item);

	public CheZhuLianXiRen findCheZhuLianXiRenById(String txtCustId);

	public VKeHuCheLiang findVKeHuCheLiangByVehicleId(String txtVehicleId);

	public List<VKeHuCheLiang> queryVKeHuCheLiang(VKeHuCheLiang query);

	public String getVKeHuCheLiangEasyUiJSon(SaleAfterCustomSearchBean query);

	public List<CheZhuLianXiRen> selectItem();
}
