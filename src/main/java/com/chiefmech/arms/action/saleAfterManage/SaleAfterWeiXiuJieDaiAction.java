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
import com.chiefmech.arms.entity.GongDanCheLiangJianCe;
import com.chiefmech.arms.entity.GongDanJieSuan;
import com.chiefmech.arms.entity.GongDanWeiXiuWuLiao;
import com.chiefmech.arms.entity.GongDanWeiXiuXiangMu;
import com.chiefmech.arms.entity.KuCun;
import com.chiefmech.arms.entity.view.VCaiGouWuLiao;
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
	private List<GongDanCheLiangJianCe> gongDanCheLiangJianCeLst;
	private List<GongDanWeiXiuWuLiao> gongDanWuLiaoLst;
	private GongDan gongDan = new GongDan();
	private GongDanJieSuan jieSuanInfo;

	String[] jianCeLstRenBao = {"检测发动机机油", "检查发动机空气滤清器", "检查发动机冷却系统",
			"蓄电池及起动机检查", "各种橡胶软管的检查", "怠速及火花塞", "检查动力转向系统", "检查制动系统", "制动液检查",
			"球头节和防尘套", "发动机外观检查", "前后悬挂装置及底盘", "检查制冷剂", "轮胎和充气气压", "空调滤清器",
			"雨刮器和玻璃水"};
	String[] jianCeLstPuTong = {"检测发动机控制模块系统", "检查发动机机油液位", "检查发动机冷却系统",
			"检查发动机空气滤芯", "检查挡风玻璃清洁剂液位", "检查刮水器刮片", "检查车辆底部", "检查灯光系统",
			"检查制动系统", "检查动力转向系统", "检查发动机附件皮带", "检查空调系统", "检查冷却风扇", "检查反光镜、后视镜",
			"检查车轮", "检查蓄电池"};

	@Action(value = "saleAfterIndex", results = {@Result(name = "input", location = "saleAfter_Index.jsp")})
	public String saleAfterIndex() {
		initGongDan();
		return INPUT;
	}

	@Actions({
			@Action(value = "gongDanWeiXiuJieDai", results = {@Result(name = "input", location = "saleAfter_weiXiuJieDai.jsp")}),
			@Action(value = "gongDanCheLiangJianCe", results = {@Result(name = "input", location = "saleAfter_weiXiuJieDai.jsp")}),
			@Action(value = "gongDanWuLiaoDengJi", results = {@Result(name = "input", location = "saleAfter_weiXiuJieDai.jsp")}),
			@Action(value = "gongDanWeiXiuPaiGong", results = {@Result(name = "input", location = "saleAfter_weiXiuJieDai.jsp")}),
			@Action(value = "gongDanLingQuWuLiao", results = {@Result(name = "input", location = "saleAfter_weiXiuJieDai.jsp")}),
			@Action(value = "gongDanWeiXiuWanJian", results = {@Result(name = "input", location = "saleAfter_weiXiuJieDai.jsp")}),
			@Action(value = "gongDanWeiXiuJieSuan", results = {@Result(name = "input", location = "saleAfter_weiXiuJieDai.jsp")})})
	public String saleAfterWeiXiuJieDai() {
		initGongDan();
		if ("gongDanWeiXiuJieSuan".equals(this.getActionName())) {
			jieSuanInfo = gongDanService.getGongDanJieSuanXinXi(gongDan);
			if (gongDan.getTxtFinalPay() == -1) {
				gongDan.setTxtFinalPay(Float.parseFloat(jieSuanInfo
						.getHeJiDiscount()));
			}
		}
		return INPUT;
	}

	@Actions({
			@Action(value = "printShiGongDan", results = {@Result(name = "input", location = "saleAfter_GongDanPrint.jsp")}),
			@Action(value = "printJieSuanDan", results = {@Result(name = "input", location = "saleAfter_GongDanPrint.jsp")})})
	public String gongDanPrint() {
		initGongDan();
		if ("gongDanWeiXiuJieSuan".equals(this.getActionName())) {
			jieSuanInfo = gongDanService.getGongDanJieSuanXinXi(gongDan);

		}
		return INPUT;
	}

	private void initGongDan() {
		if (StringUtils.isBlank(saleAfterWeiXiuGuid)) {
			customer = cheZhuLianXiRenService
					.findVKeHuCheLiangByCheLiangId(cheLiangId);
			gongDan = new GongDan(customer);
			gongDan.setTxtBillNo(gongDanService.getNewBillNo());
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

	@Action(value = "weiXiuLiShiDetail", results = { @Result(name = "input", location = "saleAfter_GongDanPrint.jsp") })
	public String weiXiuLiShiDetail() {
		gongDanCheLiangJianCeLst = gongDanService
				.getGongDanCheLiangJianCeListByGongDanId(saleAfterWeiXiuGuid);
		gongDan = gongDanService.findGongDanByWeiXiuGuid(saleAfterWeiXiuGuid);
		jieSuanInfo = gongDanService.getGongDanJieSuanXinXi(gongDan);
		gongDanXiangMuLst = gongDanService
				.findGongDanXiangMuLstByWeiXiuGuid(saleAfterWeiXiuGuid);
		GongDanWeiXiuXiangMu emptyXiangMu = new GongDanWeiXiuXiangMu();
		int xiangMuListSize = gongDanXiangMuLst.size();
		if (xiangMuListSize < 16) {
			for (int i = 0; i < 16 - xiangMuListSize; i++) {
				gongDanXiangMuLst.add(emptyXiangMu);
			}
		}

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
			gongDan.setTxtFuWuGuWen(this.getUser().getDisplayName());
			rowsAffected = gongDanService.insertWeiXiuJieDai(gongDan);

			// 西乡店16项检查都按普遍客户的
			/*
			 * String[] jianCeLst = "人保客户".equals(gongDan.getTxtCustSort()) ?
			 * jianCeLstRenBao : jianCeLstPuTong;
			 */
			String[] jianCeLst = jianCeLstPuTong;
			int size = jianCeLst.length;
			for (int i = 0; i < size; i++) {
				String jianCeNeiRong = jianCeLst[i];
				GongDanCheLiangJianCe item = new GongDanCheLiangJianCe();
				item.setTxtJianceGuid(IDGen.getUUID());
				item.setTxtGongDanGuid(gongDan.getTxtGongDanId());
				item.setTxtNeiRong(jianCeNeiRong);
				item.setTxtZhuangTai("未检测");
				item.setTxtXuHao(i);

				gongDanService.insertCheLiangJianCe(item);
			}
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
				.updateGongDanWeiXiuXiangMuWhenAddXiangMu(gongDanWeiXiuXiangMu);
		String jsonStr = getCrudJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateGongDanCheLiangJianCe")
	public void updateGongDanCheLiangJianCe() {
		JSONArray jsonArray = JSONArray.fromObject(easyUiJSonData);
		List<GongDanCheLiangJianCe> itemLst = (List<GongDanCheLiangJianCe>) JSONArray
				.toList(jsonArray, GongDanCheLiangJianCe.class);

		int rowAffected = gongDanService.updateGongDanCheLiangJianCe(itemLst);
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

	@Action(value = "updateGongDanWeiXiuWuLiaoWhenLingQuWuLiao")
	public void updateGongDanWeiXiuWuLiaoWhenLingQuWuLiao() {
		JSONObject jsonObject = JSONObject.fromObject(easyUiJSonData);
		GongDanWeiXiuWuLiao gongDanWeiXiuWuLiao = (GongDanWeiXiuWuLiao) JSONObject
				.toBean(jsonObject, GongDanWeiXiuWuLiao.class);
		int rowAffected = gongDanService
				.updateGongDanWeiXiuWuLiaoWhenLingQuWuLiao(gongDanWeiXiuWuLiao);
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

	@Action(value = "wanJianAllGongDanWeiXiuXiangMu")
	public void wanJianAllGongDanWeiXiuXiangMu() {
		int rowAffected = gongDanService.wanJianAllGongDanWeiXiuXiangMu(
				saleAfterWeiXiuGuid, this.getUser().getDisplayName(),
				DateUtil.getCurrentDateTime());
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

	@Action(value = "revertGongDanStatus")
	public void revertGongDanStatus() {
		int rowAffected = gongDanService
				.revertGongDanStatus(saleAfterWeiXiuGuid);
		String jsonStr = getCrudJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "updateGongDanZhiFuXinXi")
	public void updateGongDanZhiFuXinXi() {
		int rowAffected = gongDanService.updateGongDanZhiFuFangShi(
				saleAfterWeiXiuGuid, gongDan);
		String jsonStr = getCrudJsonResponse(rowAffected, "更新");

		this.transmitJson(jsonStr);
	}

	@Action(value = "addGongDanWeiXiuWuLiaoFromKuCun")
	public void addGongDanWeiXiuWuLiaoFromKuCun() {
		JSONArray jsonArray = JSONArray.fromObject(easyUiJSonData);
		List<KuCun> weiXiuWuLiaoLst = (List<KuCun>) JSONArray.toList(jsonArray,
				KuCun.class);
		int rowAffected = gongDanService.addGongDanWeiXiuWuLiaoFromKuCun(
				saleAfterWeiXiuGuid, weiXiuWuLiaoLst);
		String jsonStr = getCrudJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "addGongDanWeiXiuWuLiaoFromCaiGou")
	public void addGongDanWeiXiuWuLiaoFromCaiGou() {
		JSONArray jsonArray = JSONArray.fromObject(easyUiJSonData);
		List<VCaiGouWuLiao> weiXiuWuLiaoLst = (List<VCaiGouWuLiao>) JSONArray
				.toList(jsonArray, VCaiGouWuLiao.class);
		int rowAffected = gongDanService.addGongDanWeiXiuWuLiaoFromCaiGou(
				saleAfterWeiXiuGuid, weiXiuWuLiaoLst);
		String jsonStr = getCrudJsonResponse(rowAffected, "新增");

		this.transmitJson(jsonStr);
	}

	@Action(value = "queryGongDanCheLiangJianCe")
	public void queryGongDanCheLiangJianCe() {
		this.transmitJson(easyUiJSonData = gongDanService
				.getGongDanCheLiangJianCeEasyUiJSonByGongDanId(saleAfterWeiXiuGuid));
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

	@Action(value = "updateGongDanWeiXiuWuLiaoWhenAddWuLiao")
	public void updateGongDanWeiXiuWuLiaoWhenAddWuLiao() {
		JSONObject jsonObject = JSONObject.fromObject(easyUiJSonData);
		GongDanWeiXiuWuLiao gongDanWeiXiuWuLiao = (GongDanWeiXiuWuLiao) JSONObject
				.toBean(jsonObject, GongDanWeiXiuWuLiao.class);
		int rowAffected = gongDanService
				.updateGongDanWeiXiuWuLiaoWhenAddWuLiao(gongDanWeiXiuWuLiao);
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

	public GongDanJieSuan getJieSuanInfo() {
		return jieSuanInfo;
	}

	public String getGongDanJsonData() {
		return JSONObject.fromObject(gongDan).toString();
	}

	public List<GongDanCheLiangJianCe> getGongDanCheLiangJianCeLst() {
		return gongDanCheLiangJianCeLst;
	}

}
