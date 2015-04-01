package com.chiefmech.arms.action.saleAfterManage;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.entity.CheLiangInfo;
import com.chiefmech.arms.entity.query.CustomerReservationSearchBean;
import com.chiefmech.arms.entity.view.VCustomerReservation;
import com.chiefmech.arms.service.CustomerInfoService;
import com.chiefmech.arms.service.CustomerReservationService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterManage")
@Controller()
@Scope("prototype")
public class CustomerReservationManageAction extends BaseActionSupport
		implements
			ModelDriven<VCustomerReservation> {
	@Resource()
	private CustomerReservationService customerReservationService;
	@Resource()
	private CustomerInfoService customerInfoService;

	private VCustomerReservation item = new VCustomerReservation();
	private String txtReserveDateBegin;
	private String txtReserveDateEnd;
	private int page = 1;
	private int rows = 20;

	@Action(value = "customerReservationManage", results = {@Result(name = "input", location = "customerReservationManage.jsp")})
	public String customerReservationManage() {
		return INPUT;
	}

	@Action(value = "customerReservationInfo", results = {@Result(name = "input", location = "customerReservationInfo.jsp")})
	public String customerReservationInfo() {
		if (StringUtils.isNotBlank(item.getTxtCheLiangId())) {
			CheLiangInfo cheLiangInfo = customerInfoService
					.queryCheLiangInfoByCheLiangId(item.getTxtCheLiangId());
			item.setTxtCheLiangChePaiHao(cheLiangInfo.getTxtCheLiangChePaiHao());
		} else if (StringUtils.isNotBlank(item.getTxtReserveGuid())) {
			item = customerReservationService.findItemById(item
					.getTxtReserveGuid());
		}
		return INPUT;
	}

	@Action(value = "queryCustomerReservation")
	public void queryCustomerReservation() {
		CustomerReservationSearchBean query = new CustomerReservationSearchBean();
		query.setPage(page);
		query.setRows(rows);
		query.setTxtCheLiangChePaiHao(item.getTxtCheLiangChePaiHao());
		query.setTxtReserveDateBegin(txtReserveDateBegin);
		query.setTxtReserveDateEnd(txtReserveDateEnd);
		query.setTxtCallSort(item.getTxtCallSort());

		this.transmitJson(customerReservationService
				.getReservationListEasyUiJSon(query));
	}

	@Action(value = "isChePaiHaoExist")
	public void isChePaiHaoExist() {
		String chePaiHao = item.getTxtCheLiangChePaiHao().toUpperCase().trim();

		String jsonStr = customerReservationService.isChePaiHaoExist(chePaiHao);

		this.transmitJson(jsonStr);
	}

	@Action(value = "getReservationInfo")
	public void getReservationLimitInfo() {
		String jsonStr = customerReservationService.getReservationInfo(item);

		this.transmitJson(jsonStr);
	}

	@Action(value = "insertCustomerReservation")
	public void insertCustomerReservation() {
		item.setTxtReserveGuid(IDGen.getUUID());
		int rowAffected = customerReservationService.insertItem(item);
		String jsonStr = getJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateCustomerReservation")
	public void updateCustomerReservation() {
		int rowAffected = customerReservationService.updateItem(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteCustomerReservation")
	public void deleteCustomerReservation() {
		String id = item.getTxtReserveGuid();
		int rowAffected = customerReservationService.deleteItem(id);
		String jsonStr = getJsonResponse(rowAffected, "删除");

		this.transmitJson(jsonStr);
	}

	private String getJsonResponse(int rowAffected, String action) {
		String jsonStr = "{\"status\":\"ok\"}";
		if (rowAffected != 1) {
			jsonStr = String.format("{\"errorMsg\":\"%s数据失败\"}", action);
		}

		return jsonStr;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	public void setTxtReserveDateBegin(String txtReserveDateBegin) {
		this.txtReserveDateBegin = txtReserveDateBegin;
	}

	public void setTxtReserveDateEnd(String txtReserveDateEnd) {
		this.txtReserveDateEnd = txtReserveDateEnd;
	}

	@Override
	public VCustomerReservation getModel() {
		return item;
	}

	public String getJsonData() {
		return JSONObject.fromObject(item).toString();
	}

}
