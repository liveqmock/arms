package com.chiefmech.arms.action.data;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import net.sf.json.JSONArray;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chiefmech.arms.action.BaseActionSupport;
import com.chiefmech.arms.service.CommonDataService;

@SuppressWarnings("serial")
@ParentPackage("custom-default")
@Namespace("/data")
@Controller()
@Scope("prototype")
public class CommonDataAction extends BaseActionSupport implements CommonData {

	@Resource()
	private CommonDataService commonDataService;

	private String cheLiangBrandName;

	private String saleAfterWeiXiuGuid;

	@Action(value = "weiXiuGongDuanOption")
	public void weiXiuGongDuan() {
		this.transmitJson(getOptionJsonFronLst(gongDuanLst));
	}

	@Action(value = "zhangTaoOption")
	public void zhangTao() {
		this.transmitJson(getOptionJsonFronLst(zhangTaoLst));
	}

	@Action(value = "chuRuKuSortOption")
	public void chuRuKuSort() {
		this.transmitJson(getOptionJsonFronLst(chuRuKuSortLst));
	}

	@Action(value = "weiXiuSortOption")
	public void weiXiuSort() {
		this.transmitJson(getOptionJsonFronLst(weiXiuSortLst));
	}

	@Action(value = "cheLiangSortOption")
	public void cheLiangSort() {
		this.transmitJson(getOptionJsonFronLst(cheLiangSortLst));
	}

	@Action(value = "customerSortOption")
	public void customerSort() {
		this.transmitJson(JSONArray.fromObject(
				commonDataService.getOptionBean("CustomerSort")).toString());
	}

	@Action(value = "zhiFuSortOption")
	public void zhiFuSort() {
		this.transmitJson(getOptionJsonFronLst(zhiFuLst));
	}

	@Action(value = "jianChaXiangMuSortOption")
	public void jianChaXiangMuSort() {
		this.transmitJson(getOptionJsonFronLst(jianChaXiangMuSort));
	}

	@Action(value = "gongDanStatusOption")
	public void gongDanStatusOption() {
		this.transmitJson(getOptionJsonFronLst(gongDanStatusSort));
	}

	private String getOptionJsonFronLst(String[] itemLst) {
		StringBuffer sb = new StringBuffer();
		sb.append("[");
		for (String item : itemLst) {
			if (sb.length() > 1) {
				sb.append(",");
			}
			sb.append(String.format("{\"name\":\"%s\",\"code\":\"%s\"}", item,
					item));

		}
		sb.append("]");
		return sb.toString();
	}

	@Action(value = "peiJianChangKuOption")
	public void peiJianChangKu() {
		this.transmitJson(JSONArray.fromObject(
				commonDataService.getOptionBean("ChangKu")).toString());
	}

	@Action(value = "gongYingShangOption")
	public void gongYingShang() {
		this.transmitJson(JSONArray.fromObject(
				commonDataService.getOptionBean("GongYingShang")).toString());
	}

	@Action(value = "weiXiuBanZuOption")
	public void weiXiuBanZu() {
		this.transmitJson(JSONArray.fromObject(
				commonDataService.getOptionBean("WeiXiuZu")).toString());
	}

	@Action(value = "shopOption")
	public void shop() {
		this.transmitJson(JSONArray.fromObject(
				commonDataService.getOptionBean("Shop")).toString());
	}

	@Action(value = "shopCodeOption")
	public void shopCodeOption() {
		this.transmitJson(JSONArray.fromObject(
				commonDataService.getOptionBean("ShopCode")).toString());
	}

	@Action(value = "cheLiangPingPaiOption")
	public void cheLiangPingPai() {
		this.transmitJson(JSONArray.fromObject(
				commonDataService.getOptionBean("CheLiangPingPai")).toString());
	}

	@Action(value = "groupNameOption")
	public void groupNameOption() {
		this.transmitJson(JSONArray.fromObject(
				commonDataService.getOptionBean("GroupName")).toString());
	}

	@Action(value = "getCarBrandOption")
	public void getCarbrandOption() {
		this.transmitJson(JSONArray.fromObject(
				commonDataService.getOptionBean("CarBrand")).toString());
	}

	@Action(value = "cheLiangCheXiOption")
	public void cheLiangCheXi() {
		Map<String, String> param = new HashMap<String, String>();
		param.put("CheLiangBrandName", cheLiangBrandName);
		this.transmitJson(JSONArray.fromObject(
				commonDataService.getOptionBean("CheLiangCheXi", param))
				.toString());
	}

	@Action(value = "gongDanXiangMuOption")
	public void gongDanXiangMuOption() {
		Map<String, String> param = new HashMap<String, String>();
		param.put("saleAfterWeiXiuGuid", saleAfterWeiXiuGuid);
		this.transmitJson(JSONArray.fromObject(
				commonDataService.getOptionBean("GongDanXiangMu", param))
				.toString());
	}

	@Action(value = "taoKaSortGuidOption")
	public void taoKaSortGuidOption() {
		this.transmitJson(JSONArray.fromObject(
				commonDataService.getOptionBean("TaoKaSortGuid")).toString());
	}

	@Action(value = "remarkOption")
	public void PrivilegeOption() {
		this.transmitJson(JSONArray.fromObject(
				commonDataService.getOptionBean("Remark")).toString());
	}

	@Action(value = "chengBaoGongSiOption")
	public void ChengBaoGongSiOption() {
		this.transmitJson(JSONArray.fromObject(
				commonDataService.getOptionBean("chengBaoGongSiName"))
				.toString());
	}

	public void setCheLiangBrandName(String cheLiangBrandName) {
		this.cheLiangBrandName = cheLiangBrandName;
	}

	public void setSaleAfterWeiXiuGuid(String saleAfterWeiXiuGuid) {
		this.saleAfterWeiXiuGuid = saleAfterWeiXiuGuid;
	}

}
