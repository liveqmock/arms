package com.chiefmech.arms.action.webSetup;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.entity.ReservationLimit;
import com.chiefmech.arms.entity.query.ReservationLimitSearchBean;
import com.chiefmech.arms.service.ReservationLimitService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/webSetup")
@Controller()
@Scope("prototype")
public class ReservationLimitManageAction extends BaseActionSupport
		implements
			ModelDriven<ReservationLimit> {
	@Resource()
	private ReservationLimitService reservationLimitService;

	private ReservationLimit item = new ReservationLimit();
	private String reservationDateBegin;
	private String reservationDateEnd;
	private int page = 1;
	private int rows = 20;

	@Action(value = "reservationLimitManage", results = {@Result(name = "input", location = "reservationLimitManage.jsp")})
	public String customerReservationParamsManage() {
		return INPUT;
	}

	@Action(value = "queryDefaultReservationLimit")
	public void queryDefaultReservationLimit() {
		this.transmitJson(reservationLimitService
				.getDefaultReservationListEasyUiJSon());
	}

	@Action(value = "updateDefaultReservationLimit")
	public void updateDefaultReservationLimit() {
		int rowAffected = reservationLimitService
				.updateDefaultReservationLimit(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "queryReservationLimit")
	public void queryReservationLimit() {
		ReservationLimitSearchBean query = new ReservationLimitSearchBean();
		query.setPage(page);
		query.setRows(rows);
		query.setReservationDateBegin(reservationDateBegin);
		query.setReservationDateEnd(reservationDateEnd);
		query.setShopCode(item.getShopCode());
		this.transmitJson(reservationLimitService.getParamEasyUiJSon(query));
	}

	@Action(value = "insertReservationLimit")
	public void insertReservationLimit() {
		item.setTxtGuid(IDGen.getUUID());
		int rowAffected = reservationLimitService.insertItem(item);
		String jsonStr = getJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateReservationLimit")
	public void updateReservationLimit() {
		int rowAffected = reservationLimitService.updateItem(item);
		String jsonStr = getJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "deleteReservationLimit")
	public void deleteReservationLimit() {
		String id = item.getTxtGuid();
		int rowAffected = reservationLimitService.deleteItem(id);
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

	public void setReservationDateBegin(String reservationDateBegin) {
		this.reservationDateBegin = reservationDateBegin;
	}

	public void setReservationDateEnd(String reservationDateEnd) {
		this.reservationDateEnd = reservationDateEnd;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	@Override
	public ReservationLimit getModel() {
		return item;
	}

}
