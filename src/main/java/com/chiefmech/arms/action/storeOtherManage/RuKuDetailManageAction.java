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
import com.chiefmech.arms.entity.RuKuDanWuLiao;
import com.chiefmech.arms.service.RuKuDanService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/storeOtherManage")
@Controller()
@Scope("prototype")
public class RuKuDetailManageAction extends BaseActionSupport implements
		ModelDriven<RuKuDan> {

	@Resource()
	private RuKuDanService ruKuDanService;

	private RuKuDan ruKuDan = new RuKuDan();
	private String ruKuDanGuid;
	private String flag;
	private String txtWuLiaoGuid;
	private String rowJsonData;

	@Action(value = "rukudanDetail", results = { @Result(name = "input", location = "rukudanDetail.jsp") })
	public String rukudanDetail() {

		if (StringUtils.isBlank(ruKuDanGuid)) {
			String ddlRuKuSort = "";
			if ("1".equals(flag)) {
				ddlRuKuSort = "日常采购";
			} else if ("2".equals(flag)) {
				ddlRuKuSort = "临时采购";
			}
			ruKuDan.setTxtBillNo("等待生成");
			ruKuDan.setTxtStatus("准备单据");
			ruKuDan.setDdlRuKuSort(ddlRuKuSort);
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
			String ruKuDanSort = ruKuDan.getDdlRuKuSort();
			String prefix = "";
			if (ruKuDanSort.equals("日常采购")) {
				prefix = "RCCG";
			} else if (ruKuDanSort.equals("临时采购")) {
				prefix = "LSCG";
			}

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
		if (ruKuDan.getTxtStatus().equals("审核完毕")) {
			ruKuDan.setTxtShenHeRen(this.getUser().getDisplayName());
			ruKuDan.setTxtShenHeShiJian(DateUtil.getCurrentDate());
		}
		int rowAffected = ruKuDanService.updateRuKuDanStatus(ruKuDan);
		String jsonStr = getCrudJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "saveRuKuDanWuLiao")
	public void saveRuKuDanWuLiao() {
		JSONObject jsonObject = JSONObject.fromObject(rowJsonData);
		RuKuDanWuLiao ruKuDanWuLiao = (RuKuDanWuLiao) JSONObject.toBean(
				jsonObject, RuKuDanWuLiao.class);

		int rowsAffected;
		String action;
		if (StringUtils.isBlank(ruKuDanWuLiao.getTxtWuLiaoGuid())) {
			ruKuDanWuLiao.setTxtWuLiaoGuid(IDGen.getUUID());
			rowsAffected = ruKuDanService.insertRuKuDanWuLiao(ruKuDanWuLiao);
			action = "插入";
		} else {
			rowsAffected = ruKuDanService.updateRuKuDanWuLiao(ruKuDanWuLiao);
			action = "更新";
		}

		this.transmitJson(getCrudJsonResponse(rowsAffected, action));

	}

	@Action(value = "deleteRuKuDanWuLiao")
	public void deleteRuKuDanWuLiao() {
		int rowAffected = ruKuDanService.deleteRuKuDanWuLiao(txtWuLiaoGuid);
		String jsonStr = getCrudJsonResponse(rowAffected, "删除");

		this.transmitJson(jsonStr);
	}

	public String getRuKuDanGuid() {
		return ruKuDanGuid;
	}

	public void setRuKuDanGuid(String ruKuDanGuid) {
		this.ruKuDanGuid = ruKuDanGuid;
	}

	public void setTxtWuLiaoGuid(String txtWuLiaoGuid) {
		this.txtWuLiaoGuid = txtWuLiaoGuid;
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

	public String getRowJsonData() {
		return rowJsonData;
	}

	public void setRowJsonData(String rowJsonData) {
		this.rowJsonData = rowJsonData;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

}
