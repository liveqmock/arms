package com.chiefmech.arms.action.storeOtherManage;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.DateUtil;
import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.entity.RuKuDan;
import com.chiefmech.arms.service.RuKuDanService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/storeOtherManage")
@Controller()
@Scope("prototype")
public class StoreRuKuDetailManageAction extends BaseActionSupport
		implements
			ModelDriven<RuKuDan> {

	@Resource()
	private RuKuDanService ruKuDanService;

	private RuKuDan ruKuDan = new RuKuDan();
	private String ruKuDanGuid;

	@Action(value = "rukudanDetail", results = {@Result(name = "input", location = "rukudanDetail.jsp")})
	public String rukudanDetail() {

		if (StringUtils.isBlank(ruKuDanGuid)) {
			ruKuDan.setTxtBillNo("等待生成");
			ruKuDan.setDdlRuKuSort("入库单");
			ruKuDan.setTxtStatus("待提交审核");
			ruKuDan.setTxtRuKuDate(DateUtil.getCurrentDate());
			ruKuDan.setTxtJingShouRen(this.getUser().getDisplayName());
		} else {
			ruKuDan = ruKuDanService.findRuKuDanByGuid(ruKuDanGuid);
		}

		return INPUT;
	}

	@Action(value = "saveRuKuDan")
	public void saveRuKuDan() {
		String statusCode = "failed";
		String info = "保存信息失败";

		int rowsAffected;
		if (StringUtils.isBlank(ruKuDan.getTxtGuid())) {
			ruKuDan.setTxtGuid(IDGen.getUUID());
			String prefix = ruKuDan.getDdlRuKuSort().equals("入库单")
					? "RKD"
					: "TKD";
			ruKuDan.setTxtBillNo(prefix + ruKuDanService.getNewBillNo());
			rowsAffected = ruKuDanService.insertRuKuDan(ruKuDan);
		} else {
			rowsAffected = ruKuDanService.updateRuKuDan(ruKuDan);
		}
		if (rowsAffected == 1) {
			statusCode = "success";
			info = ruKuDan.getTxtGuid();
		}

		this.transmitJson(String.format(
				"{\"statusCode\":\"%s\", \"info\":'%s'}", statusCode, info));
	}

	@Action(value = "updateRuKuDanStatus")
	public void updateRuKuDanStatus() {
		String status = ruKuDan.getTxtStatus();
		if (status.equals("审核完毕") || status.equals("单据退回")) {
			ruKuDan.setTxtShenHeRen(this.getUser().getDisplayName());
			ruKuDan.setTxtShenHeShiJian(DateUtil.getCurrentDate());
		}
		int rowAffected = ruKuDanService.updateRuKuDanStatus(ruKuDan);
		String jsonStr = getCrudJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	public String getRuKuDanGuid() {
		return ruKuDanGuid;
	}

	public void setRuKuDanGuid(String ruKuDanGuid) {
		this.ruKuDanGuid = ruKuDanGuid;
	}

	public RuKuDan getRuKuDan() {
		return ruKuDan;
	}

	@Override
	public RuKuDan getModel() {
		return ruKuDan;
	}

	public String getJsonData() {
		return JSONObject.fromObject(ruKuDan).toString();
	}

}
