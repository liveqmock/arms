package com.chiefmech.arms.action.saleAfterManage;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.DateUtil;
import com.chiefmech.arms.entity.GongDan;
import com.chiefmech.arms.entity.GongDanWeiXiuWuLiao;
import com.chiefmech.arms.entity.GongDanWeiXiuXiangMu;
import com.chiefmech.arms.entity.KuCun;
import com.chiefmech.arms.service.GongDanService;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterManage")
@Controller()
@Scope("prototype")
public class SaleAfterGongDanZhiZuoAction extends BaseActionSupport {

	@Resource()
	private GongDanService gongDanService;

	private String saleAfterWeiXiuGuid;
	private String vehicleId;
	private String txtWeiXiuWuLiaoId;
	private String txtWeiXiuXiangMuId;
	private String easyUiJSonData;
	private String action;
	private GongDan gongDan;
	private String txtGongDanStatus;
	private String weiXiuBanZu;
	private List<GongDan> gongDanLst;
	private List<GongDanWeiXiuXiangMu> gongDanXiangMuLst;
	private List<GongDanWeiXiuWuLiao> gongDanWuLiaoLst;

	@Action(value = "saleAfterGongDanZhiZuo", results = { @Result(name = "input", location = "saleAfter_gongDanZhiZuo.jsp") })
	public String saleAfterGongDanZhiZuo() {
		initWeiXiuAction("GongDanZhiZuo");
		return INPUT;
	}

	@Action(value = "saleAfterWeiXiuPaiGong", results = { @Result(name = "input", location = "saleAfter_gongDanZhiZuo.jsp") })
	public String saleAfterWeiXiuPaiGong() {
		initWeiXiuAction("WeiXiuPaiGong");
		return INPUT;
	}

	@Action(value = "saleAfterWeiXiuWanJian", results = { @Result(name = "input", location = "saleAfter_gongDanZhiZuo.jsp") })
	public String saleAfterWeiXiuWanJian() {
		initWeiXiuAction("WeiXiuWanJian");
		return INPUT;
	}

	@Action(value = "saleAfterWeiXiuJieSuan", results = { @Result(name = "input", location = "saleAfter_gongDanZhiZuo.jsp") })
	public String saleAfterWeiXiuJieSuan() {
		initWeiXiuAction("WeiXiuJieSuan");
		return INPUT;
	}

	@Action(value = "saleAfterWeiXiuLiShi", results = { @Result(name = "input", location = "saleAfter_weiXiuLiShiList.jsp") })
	public String saleAfterWeiXiuLiShi() {
		initWeiXiuAction("WeiXiuLiShi");
		gongDanLst = gongDanService.getGongDanListByCheLiangId(gongDan
				.getTxtVehicleId());
		return INPUT;
	}

	@Action(value = "weiXiuLiShiByVehicleId", results = { @Result(name = "input", location = "saleAfter_weiXiuLiShiList.jsp") })
	public String weiXiuLiShiByVehicleId() {
		action = "WeiXiuLiShi";
		gongDanLst = gongDanService.getGongDanListByCheLiangId(vehicleId);
		return INPUT;
	}

	@Action(value = "weiXiuLiShiDetail", results = { @Result(name = "input", location = "saleAfter_weiXiuLiShiDetailShowBySaleAfterGuid.jsp") })
	public String weiXiuLiShiDetail() {
		gongDan = gongDanService.findGongDanByWeiXiuGuid(saleAfterWeiXiuGuid);
		gongDanXiangMuLst = gongDanService
				.findGongDanXiangMuLstByWeiXiuGuid(saleAfterWeiXiuGuid);
		gongDanWuLiaoLst = gongDanService
				.findGongDanWuLiaoLstByWeiXiuGuid(saleAfterWeiXiuGuid);
		return INPUT;
	}

	private void initWeiXiuAction(String targetAction) {
		action = targetAction;
		gongDan = gongDanService.findGongDanByWeiXiuGuid(saleAfterWeiXiuGuid);
	}

	@Action(value = "queryGongDanWeiXiuXiangMu")
	public void queryGongDanWeiXiuXiangMu() {
		this.transmitJson(easyUiJSonData = gongDanService
				.getWeiXiuXiangMuEasyUiJSonByGongDanId(saleAfterWeiXiuGuid));
	}

	@Action(value = "deleteGongDanWeiXiuXiangMu")
	public void deleteGongDanWeiXiuXiangMu() {
		int rowAffected = gongDanService
				.deleteGongDanWeiXiuXiangMu(txtWeiXiuXiangMuId);
		String jsonStr = getCrudJsonResponse(rowAffected, "删除");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateGongDanWeiXiuXiangMuWhenZhiZuo")
	public void updateGongDanWeiXiuXiangMuWhenZhiZuo() {
		JSONObject jsonObject = JSONObject.fromObject(easyUiJSonData);
		GongDanWeiXiuXiangMu gongDanWeiXiuXiangMu = (GongDanWeiXiuXiangMu) JSONObject
				.toBean(jsonObject, GongDanWeiXiuXiangMu.class);
		int rowAffected = gongDanService
				.updateGongDanWeiXiuXiangMuWhenZhiZuo(gongDanWeiXiuXiangMu);
		String jsonStr = getCrudJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateGongDanWeiXiuXiangMuWhenPaiGong")
	public void updateGongDanWeiXiuXiangMuWhenPaiGong() {
		JSONObject jsonObject = JSONObject.fromObject(easyUiJSonData);
		GongDanWeiXiuXiangMu gongDanWeiXiuXiangMu = (GongDanWeiXiuXiangMu) JSONObject
				.toBean(jsonObject, GongDanWeiXiuXiangMu.class);
		int rowAffected = gongDanService
				.updateGongDanWeiXiuXiangMuWhenPaiGong(gongDanWeiXiuXiangMu);
		String jsonStr = getCrudJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateGongDanWeiXiuXiangMuWhenWanJian")
	public void updateGongDanWeiXiuXiangMuWhenWanJian() {
		JSONObject jsonObject = JSONObject.fromObject(easyUiJSonData);
		GongDanWeiXiuXiangMu gongDanWeiXiuXiangMu = (GongDanWeiXiuXiangMu) JSONObject
				.toBean(jsonObject, GongDanWeiXiuXiangMu.class);
		gongDanWeiXiuXiangMu.setTxtWanJianRen(this.getUser().getDisplayName());
		gongDanWeiXiuXiangMu
				.setTxtWanJianShiJian(DateUtil.getCurrentDateTime());
		int rowAffected = gongDanService
				.updateGongDanWeiXiuXiangMuWhenWanJian(gongDanWeiXiuXiangMu);
		String jsonStr = getCrudJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateGongDanStatus")
	public void updateGongDanStatus() {
		int rowAffected = gongDanService.updateGongDanStatus(
				saleAfterWeiXiuGuid, txtGongDanStatus);
		String jsonStr = getCrudJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "addGongDanWeiXiuWuLiao")
	public void addGongDanWeiXiuWuLiao() {
		JSONArray jsonArray = JSONArray.fromObject(easyUiJSonData);
		List<KuCun> weiXiuWuLiaoLst = (List<KuCun>) JSONArray.toList(jsonArray,
				KuCun.class);
		int rowAffected = gongDanService.insertGongDanWeiXiuWuLiao(
				saleAfterWeiXiuGuid, weiXiuWuLiaoLst);
		String jsonStr = getCrudJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "queryGongDanWeiXiuWuLiao")
	public void queryGongDanWeiXiuWuLiao() {
		this.transmitJson(easyUiJSonData = gongDanService
				.getWeiXiuWuLiaoEasyUiJSonByGongDanId(saleAfterWeiXiuGuid));
	}

	@Action(value = "deleteGongDanWeiXiuWuLiao")
	public void deleteGongDanWeiXiuWuLiao() {
		int rowAffected = gongDanService
				.deleteGongDanWeiXiuWuLiao(txtWeiXiuWuLiaoId);
		String jsonStr = getCrudJsonResponse(rowAffected, "删除");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateGongDanWeiXiuWuLiao")
	public void updateGongDanWeiXiuWuLiao() {
		JSONObject jsonObject = JSONObject.fromObject(easyUiJSonData);
		GongDanWeiXiuWuLiao gongDanWeiXiuWuLiao = (GongDanWeiXiuWuLiao) JSONObject
				.toBean(jsonObject, GongDanWeiXiuWuLiao.class);
		int rowAffected = gongDanService
				.updateGongDanWeiXiuWuLiaoWhenZhiZuo(gongDanWeiXiuWuLiao);
		String jsonStr = getCrudJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "queryZhuXiuRen")
	public void queryZhuXiuRen() {
		String zhuXiuRen = gongDanService.queryZhuXiuRen(weiXiuBanZu);
		this.transmitJson(String.format("{\"info\":\"%s\"}", zhuXiuRen));
	}

	public void setTxtWeiXiuXiangMuId(String txtWeiXiuXiangMuId) {
		this.txtWeiXiuXiangMuId = txtWeiXiuXiangMuId;
	}

	public void setTxtWeiXiuWuLiaoId(String txtWeiXiuWuLiaoId) {
		this.txtWeiXiuWuLiaoId = txtWeiXiuWuLiaoId;
	}

	public String getSaleAfterWeiXiuGuid() {
		return saleAfterWeiXiuGuid;
	}

	public void setSaleAfterWeiXiuGuid(String saleAfterWeiXiuGuid) {
		this.saleAfterWeiXiuGuid = saleAfterWeiXiuGuid;
	}

	public void setEasyUiJSonData(String easyUiJSonData) {
		this.easyUiJSonData = easyUiJSonData;
	}

	public String getEasyUiJSonData() {
		return easyUiJSonData;
	}

	public String getAction() {
		return action;
	}

	public GongDan getGongDan() {
		return gongDan;
	}

	public void setTxtGongDanStatus(String txtGongDanStatus) {
		this.txtGongDanStatus = txtGongDanStatus;
	}

	public List<GongDan> getGongDanLst() {
		return gongDanLst;
	}

	public List<GongDanWeiXiuXiangMu> getGongDanXiangMuLst() {
		return gongDanXiangMuLst;
	}

	public List<GongDanWeiXiuWuLiao> getGongDanWuLiaoLst() {
		return gongDanWuLiaoLst;
	}

	public void setVehicleId(String vehicleId) {
		this.vehicleId = vehicleId;
	}

	public void setWeiXiuBanZu(String weiXiuBanZu) {
		this.weiXiuBanZu = weiXiuBanZu;
	}

}
