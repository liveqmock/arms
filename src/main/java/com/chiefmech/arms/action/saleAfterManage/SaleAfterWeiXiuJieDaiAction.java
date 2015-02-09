package com.chiefmech.arms.action.saleAfterManage;

import java.util.List;

import javax.annotation.Resource;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Actions;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.common.util.DateUtil;
import com.chiefmech.arms.common.util.IDGen;
import com.chiefmech.arms.entity.GongDan;
import com.chiefmech.arms.entity.GongDanWeiXiuWuLiao;
import com.chiefmech.arms.entity.GongDanWeiXiuXiangMu;
import com.chiefmech.arms.entity.KuCun;
import com.chiefmech.arms.entity.view.VKeHuCheLiang;
import com.chiefmech.arms.service.CustomerInfoService;
import com.chiefmech.arms.service.GongDanService;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/saleAfterManage")
@Controller()
@Scope("prototype")
public class SaleAfterWeiXiuJieDaiAction extends BaseActionSupport
		implements
			ModelDriven<GongDan> {

	@Resource()
	private GongDanService gongDanService;
	@Resource()
	private CustomerInfoService cheZhuLianXiRenService;

	private String saleAfterWeiXiuGuid;
	private String cheLiangId;
	private String txtWeiXiuWuLiaoId;
	private String txtWeiXiuXiangMuId;
	private String gongDanStatus;
	private String flag;
	private String easyUiJSonData;
	private String weiXiuBanZu;
	private VKeHuCheLiang customer;
	private List<GongDan> gongDanLst;
	private List<GongDanWeiXiuXiangMu> gongDanXiangMuLst;
	private List<GongDanWeiXiuWuLiao> gongDanWuLiaoLst;
	private GongDan gongDan = new GongDan();

	@Action(value = "saleAfterIndex", results = {@Result(name = "input", location = "saleAfter_Index.jsp")})
	public String saleAfterIndex() {
		initGongDan();
		return INPUT;
	}

	@Actions({
			@Action(value = "gongDanWeiXiuJieDai", results = {@Result(name = "input", location = "saleAfter_weiXiuJieDai.jsp")}),
			@Action(value = "gongDanWuLiaoXuanQu", results = {@Result(name = "input", location = "saleAfter_weiXiuJieDai.jsp")}),
			@Action(value = "gongDanWeiXiuPaiGong", results = {@Result(name = "input", location = "saleAfter_weiXiuJieDai.jsp")}),
			@Action(value = "gongDanLingQuWuLiao", results = {@Result(name = "input", location = "saleAfter_weiXiuJieDai.jsp")}),
			@Action(value = "gongDanWeiXiuWanJian", results = {@Result(name = "input", location = "saleAfter_weiXiuJieDai.jsp")}),
			@Action(value = "gongDanWeiXiuJieSuan", results = {@Result(name = "input", location = "saleAfter_weiXiuJieDai.jsp")})})
	public String saleAfterWeiXiuJieDai() {
		initGongDan();
		return INPUT;
	}

	private void initGongDan() {
		if (StringUtils.isBlank(saleAfterWeiXiuGuid)) {
			customer = cheZhuLianXiRenService
					.findVKeHuCheLiangByCheLiangId(cheLiangId);
			gongDan = new GongDan(customer);
			gongDan.setTxtFuWuGuWen(this.getUser().getDisplayName());
		} else {
			gongDan = gongDanService
					.findGongDanByWeiXiuGuid(saleAfterWeiXiuGuid);
		}
	}

	@Actions({@Action(value = "cheLiangWeiXiuLiShi", results = {@Result(name = "input", location = "saleAfter_weiXiuLiShiList.jsp")})})
	public String cheLiangWeiXiuLiShi() {
		gongDanLst = gongDanService.getGongDanListByCheLiangId(cheLiangId);
		return INPUT;
	}

	@Action(value = "weiXiuLiShiDetail", results = {@Result(name = "input", location = "saleAfter_weiXiuLiShiDetailShowBySaleAfterGuid.jsp")})
	public String weiXiuLiShiDetail() {
		gongDan = gongDanService.findGongDanByWeiXiuGuid(saleAfterWeiXiuGuid);
		gongDanXiangMuLst = gongDanService
				.findGongDanXiangMuLstByWeiXiuGuid(saleAfterWeiXiuGuid);
		gongDanWuLiaoLst = gongDanService
				.findGongDanWuLiaoLstByWeiXiuGuid(saleAfterWeiXiuGuid);
		return INPUT;
	}

	@Action(value = "saveWeiXiuJieDaiInfo")
	public void saveWeiXiuJieDaiInfo() {
		String statusCode = "failed";
		String info = "保存信息失败";

		int rowsAffected;
		if (StringUtils.isBlank(gongDan.getTxtGongDanId())) {
			customer = cheZhuLianXiRenService
					.findVKeHuCheLiangByCheLiangId(gongDan.getTxtCheLiangId());
			gongDan = new GongDan(customer, gongDan);
			gongDan.setTxtGongDanId(IDGen.getUUID());
			gongDan.setTxtBillNo(gongDanService.getNewBillNo());
			gongDan.setTxtFuWuGuWen(this.getUser().getDisplayName());
			rowsAffected = gongDanService.insertWeiXiuJieDai(gongDan);
		} else {
			rowsAffected = gongDanService.updateWeiXiuJieDai(gongDan);
		}
		if (rowsAffected == 1) {
			statusCode = "success";
			info = String.format("{\"gongDanId\":\"%s\",\"billNo\":\"%s\"}",
					gongDan.getTxtGongDanId(), gongDan.getTxtBillNo());
		}

		this.transmitJson(String.format(
				"{\"statusCode\":\"%s\", \"info\":'%s'}", statusCode, info));
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

	@Action(value = "updateGongDanWeiXiuXiangMuWhenJieDai")
	public void updateGongDanWeiXiuXiangMuWhenJieDai() {
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
				saleAfterWeiXiuGuid, gongDanStatus);
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

	public GongDan getGongDan() {
		return gongDan;
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

	public void setWeiXiuBanZu(String weiXiuBanZu) {
		this.weiXiuBanZu = weiXiuBanZu;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public VKeHuCheLiang getCustomer() {
		return customer;
	}

	public String getGongDanStatus() {
		return gongDan.getTxtGongDanStatus();
	}

	public void setGongDanStatus(String gongDanStatus) {
		this.gongDanStatus = gongDanStatus;
	}

	public String getCheLiangId() {
		return cheLiangId;
	}

	public void setCheLiangId(String cheLiangId) {
		this.cheLiangId = cheLiangId;
	}

	@Override
	public GongDan getModel() {
		return gongDan;
	}

	public String getGongDanJsonData() {
		return JSONObject.fromObject(gongDan).toString();
	}

}
