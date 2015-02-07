package com.chiefmech.arms.entity;

import com.chiefmech.arms.common.util.DateUtil;
import com.chiefmech.arms.entity.view.VKeHuCheLiang;

public class GongDan {
	/** 工单唯一编号 */
	private String txtGongDanId;
	/** 客户id */
	private String txtCustId;
	/** 车辆id */
	private String txtCheLiangId;
	/** 工单状态 */
	private String txtGongDanStatus;
	/** 车牌号 */
	private String txtChePaiHao;
	/** 里程 */
	public int txtLiCheng;
	/** 油量 */
	public float txtYouLiang;

	/** VIN */
	private String txtVin;
	/** 发动机号 */
	private String txtFaDongJiHao;
	/** 厂家品牌 */
	private String txtChangJiaPinPai;
	/** 车系名称 */
	private String txtCheXiName;

	/** 车型代码 */
	private String txtCheXingDaiMa;
	/** 客户类别 */
	private String txtCustSort;
	/** 车主名 */
	private String txtCheZhuName;
	/** 车主电话 */
	private String txtCheZhuTel;
	/** 会员等级 */
	private String txtHuiYuanDengJi;
	/** 联系人姓名 */
	private String txtLianXiRenName;
	/** 联系人电话 */
	private String txtLianXiRenTel;
	/** 会员卡号 */
	private String txtHuiYuanHao;
	/** 联系地址 */
	private String txtLianXiRenAdd;
	/** 维修单号 */
	private String txtBillNo;
	/** 协议单号 */
	private String txtXieYiBillNo;
	/** 入厂时间 */
	public String txtRuChangDate;
	/** 预出厂时间 */
	public String txtYuChuChangDate;
	/** 服务顾问 */
	private String txtFuWuUserId;
	/** 维修类别 */
	private String ddlWeiXiuSort;
	/** 首保 */
	private String chkShouBao;
	/** 免检 */
	private String chkMianJian;
	/** 新车检查 */
	private String chkXinCheJianCha;
	/** 返修 */
	private String chkFanXiu;
	/** 下次保养里程 */
	private String txtNewLiCheng;
	/** 下次保养时间 */
	private String txtNewRuChangDate;
	/** 维修提示 */
	private String txtTiShiInfo;
	/** 交修原因 */
	private String txtJiaoXiuReason;
	/** 故障原因 */
	private String txtGuZhangReason;
	/** 维修措施 */
	private String txtWeiXiuCuoShi;
	/** 预约id */
	private String txtYuYueId;
	/** 结算时间 */
	public String txtJieSuanDate;
	/** 出厂时间 */
	public String txtChuChangDate;
	private float txtGongShiZheKou;
	private float txtCaiLiaoZheKou;
	private float txtGongShiZheQian;
	private float txtCaiLiaoZheQian;
	private float txtGongShiZheHou;
	private float txtCaiLiaoZheHou;
	private float txtZheQianHeJi;
	private float txtZheHouHeJi;

	public GongDan(VKeHuCheLiang customerInfo) {
		this.setTxtCustId(customerInfo.getTxtCustId());
		this.setTxtCheLiangId(customerInfo.getTxtCheLiangId());
		this.setTxtChePaiHao(customerInfo.getTxtCheLiangChePaiHao());
		this.setTxtVin(customerInfo.getTxtCheLiangCheJiaHao());
		this.setTxtFaDongJiHao(customerInfo.getTxtCheLiangFaDongJiHao());
		this.setTxtChangJiaPinPai(customerInfo.getDdlCheLiangZhiZaoShang());
		this.setTxtCheXiName(customerInfo.getDdlCheLiangCheXi());
		this.setTxtCheXingDaiMa(customerInfo.getTxtCheLiangCheXingDaiMa());
		this.setTxtCustSort(customerInfo.getDdlCustSort());
		this.setTxtCheZhuName(customerInfo.getTxtCheZhuName());
		this.setTxtCheZhuTel(customerInfo.getTxtCheZhuTel());
		this.setTxtLianXiRenName(customerInfo.getTxtLianXiRenName());
		this.setTxtLianXiRenTel(customerInfo.getTxtLianXiRenTel());
		this.setTxtLianXiRenAdd(customerInfo.getTxtLianXiRenAdd());
		this.setTxtHuiYuanDengJi(customerInfo.getTxtHuiYuanDengJi());
		this.setTxtHuiYuanHao(customerInfo.getTxtHuiYuanHao());
		this.setTxtGongShiZheKou(customerInfo.getTxtGongShiZheKou());
		this.setTxtCaiLiaoZheKou(customerInfo.getTxtCaiLiaoZheKou());
		this.setTxtRuChangDate(DateUtil.getCurrentDateTime());
		this.setTxtBillNo("等待生成");
		this.setDdlWeiXiuSort("一般维修");
		this.setTxtGongDanStatus("维修接待");
	}

	public GongDan() {
	}

	public String getTxtGongDanId() {
		return txtGongDanId;
	}

	public void setTxtGongDanId(String txtGongDanId) {
		this.txtGongDanId = txtGongDanId;
	}

	public String getTxtGongDanStatus() {
		return txtGongDanStatus;
	}

	public String getTxtNewLiCheng() {
		return txtNewLiCheng;
	}

	public void setTxtNewLiCheng(String txtNewLiCheng) {
		this.txtNewLiCheng = txtNewLiCheng;
	}

	public String getTxtNewRuChangDate() {
		return txtNewRuChangDate;
	}

	public void setTxtNewRuChangDate(String txtNewRuChangDate) {
		this.txtNewRuChangDate = txtNewRuChangDate;
	}

	public void setTxtGongShiZheHou(float txtGongShiZheHou) {
		this.txtGongShiZheHou = txtGongShiZheHou;
	}

	public void setTxtCaiLiaoZheHou(float txtCaiLiaoZheHou) {
		this.txtCaiLiaoZheHou = txtCaiLiaoZheHou;
	}

	public void setTxtZheQianHeJi(float txtZheQianHeJi) {
		this.txtZheQianHeJi = txtZheQianHeJi;
	}

	public void setTxtZheHouHeJi(float txtZheHouHeJi) {
		this.txtZheHouHeJi = txtZheHouHeJi;
	}

	public void setTxtGongDanStatus(String txtGongDanStatus) {
		this.txtGongDanStatus = txtGongDanStatus;
	}

	public String getTxtBillNo() {
		return txtBillNo;
	}

	public void setTxtBillNo(String txtBillNo) {
		this.txtBillNo = txtBillNo;
	}

	public String getTxtXieYiBillNo() {
		return txtXieYiBillNo;
	}

	public void setTxtXieYiBillNo(String txtXieYiBillNo) {
		this.txtXieYiBillNo = txtXieYiBillNo;
	}

	public String getTxtRuChangDate() {
		return txtRuChangDate;
	}

	public void setTxtRuChangDate(String txtRuChangDate) {
		this.txtRuChangDate = txtRuChangDate;
	}

	public String getTxtFuWuUserId() {
		return txtFuWuUserId;
	}

	public void setTxtFuWuUserId(String txtFuWuUserId) {
		this.txtFuWuUserId = txtFuWuUserId;
	}

	public String getDdlWeiXiuSort() {
		return ddlWeiXiuSort;
	}

	public void setDdlWeiXiuSort(String ddlWeiXiuSort) {
		this.ddlWeiXiuSort = ddlWeiXiuSort;
	}

	public String getChkShouBao() {
		return chkShouBao;
	}

	public void setChkShouBao(String chkShouBao) {
		this.chkShouBao = chkShouBao;
	}

	public String getChkMianJian() {
		return chkMianJian;
	}

	public void setChkMianJian(String chkMianJian) {
		this.chkMianJian = chkMianJian;
	}

	public String getChkXinCheJianCha() {
		return chkXinCheJianCha;
	}

	public void setChkXinCheJianCha(String chkXinCheJianCha) {
		this.chkXinCheJianCha = chkXinCheJianCha;
	}

	public String getChkFanXiu() {
		return chkFanXiu;
	}

	public void setChkFanXiu(String chkFanXiu) {
		this.chkFanXiu = chkFanXiu;
	}

	public String getTxtYuChuChangDate() {
		return txtYuChuChangDate;
	}

	public void setTxtYuChuChangDate(String txtYuChuChangDate) {
		this.txtYuChuChangDate = txtYuChuChangDate;
	}

	public String getTxtTiShiInfo() {
		return txtTiShiInfo;
	}

	public void setTxtTiShiInfo(String txtTiShiInfo) {
		this.txtTiShiInfo = txtTiShiInfo;
	}

	public String getTxtJiaoXiuReason() {
		return txtJiaoXiuReason;
	}

	public void setTxtJiaoXiuReason(String txtJiaoXiuReason) {
		this.txtJiaoXiuReason = txtJiaoXiuReason;
	}

	public String getTxtGuZhangReason() {
		return txtGuZhangReason;
	}

	public void setTxtGuZhangReason(String txtGuZhangReason) {
		this.txtGuZhangReason = txtGuZhangReason;
	}

	public String getTxtWeiXiuCuoShi() {
		return txtWeiXiuCuoShi;
	}

	public void setTxtWeiXiuCuoShi(String txtWeiXiuCuoShi) {
		this.txtWeiXiuCuoShi = txtWeiXiuCuoShi;
	}

	public String getTxtCustId() {
		return txtCustId;
	}

	public void setTxtCustId(String txtCustId) {
		this.txtCustId = txtCustId;
	}

	public String getTxtCheLiangId() {
		return txtCheLiangId;
	}

	public void setTxtCheLiangId(String txtCheLiangId) {
		this.txtCheLiangId = txtCheLiangId;
	}

	public String getTxtYuYueId() {
		return txtYuYueId;
	}

	public void setTxtYuYueId(String txtYuYueId) {
		this.txtYuYueId = txtYuYueId;
	}

	public String getTxtChePaiHao() {
		return txtChePaiHao;
	}

	public void setTxtChePaiHao(String txtChePaiHao) {
		this.txtChePaiHao = txtChePaiHao;
	}

	public int getTxtLiCheng() {
		return txtLiCheng;
	}

	public void setTxtLiCheng(int txtLiCheng) {
		this.txtLiCheng = txtLiCheng;
	}

	public float getTxtYouLiang() {
		return txtYouLiang;
	}

	public void setTxtYouLiang(float txtYouLiang) {
		this.txtYouLiang = txtYouLiang;
	}

	public String getTxtVin() {
		return txtVin;
	}

	public void setTxtVin(String txtVin) {
		this.txtVin = txtVin;
	}

	public String getTxtFaDongJiHao() {
		return txtFaDongJiHao;
	}

	public void setTxtFaDongJiHao(String txtFaDongJiHao) {
		this.txtFaDongJiHao = txtFaDongJiHao;
	}

	public String getTxtChangJiaPinPai() {
		return txtChangJiaPinPai;
	}

	public void setTxtChangJiaPinPai(String txtChangJiaPinPai) {
		this.txtChangJiaPinPai = txtChangJiaPinPai;
	}

	public String getTxtCheXiName() {
		return txtCheXiName;
	}

	public void setTxtCheXiName(String txtCheXiName) {
		this.txtCheXiName = txtCheXiName;
	}

	public String getTxtCheXingDaiMa() {
		return txtCheXingDaiMa;
	}

	public void setTxtCheXingDaiMa(String txtCheXingDaiMa) {
		this.txtCheXingDaiMa = txtCheXingDaiMa;
	}

	public String getTxtCustSort() {
		return txtCustSort;
	}

	public void setTxtCustSort(String txtCustSort) {
		this.txtCustSort = txtCustSort;
	}

	public String getTxtCheZhuName() {
		return txtCheZhuName;
	}

	public void setTxtCheZhuName(String txtCheZhuName) {
		this.txtCheZhuName = txtCheZhuName;
	}

	public String getTxtCheZhuTel() {
		return txtCheZhuTel;
	}

	public void setTxtCheZhuTel(String txtCheZhuTel) {
		this.txtCheZhuTel = txtCheZhuTel;
	}

	public String getTxtHuiYuanDengJi() {
		return txtHuiYuanDengJi;
	}

	public void setTxtHuiYuanDengJi(String txtHuiYuanDengJi) {
		this.txtHuiYuanDengJi = txtHuiYuanDengJi;
	}

	public String getTxtLianXiRenName() {
		return txtLianXiRenName;
	}

	public void setTxtLianXiRenName(String txtLianXiRenName) {
		this.txtLianXiRenName = txtLianXiRenName;
	}

	public String getTxtLianXiRenTel() {
		return txtLianXiRenTel;
	}

	public void setTxtLianXiRenTel(String txtLianXiRenTel) {
		this.txtLianXiRenTel = txtLianXiRenTel;
	}

	public String getTxtHuiYuanHao() {
		return txtHuiYuanHao;
	}

	public void setTxtHuiYuanHao(String txtHuiYuanHao) {
		this.txtHuiYuanHao = txtHuiYuanHao;
	}

	public String getTxtLianXiRenAdd() {
		return txtLianXiRenAdd;
	}

	public void setTxtLianXiRenAdd(String txtLianXiRenAdd) {
		this.txtLianXiRenAdd = txtLianXiRenAdd;
	}

	public String getTxtJieSuanDate() {
		return txtJieSuanDate;
	}

	public void setTxtJieSuanDate(String txtJieSuanDate) {
		this.txtJieSuanDate = txtJieSuanDate;
	}

	public String getTxtChuChangDate() {
		return txtChuChangDate;
	}

	public void setTxtChuChangDate(String txtChuChangDate) {
		this.txtChuChangDate = txtChuChangDate;
	}

	public float getTxtGongShiZheKou() {
		return txtGongShiZheKou;
	}

	public void setTxtGongShiZheKou(float txtGongShiZheKou) {
		this.txtGongShiZheKou = txtGongShiZheKou;
	}

	public float getTxtCaiLiaoZheKou() {
		return txtCaiLiaoZheKou;
	}

	public void setTxtCaiLiaoZheKou(float txtCaiLiaoZheKou) {
		this.txtCaiLiaoZheKou = txtCaiLiaoZheKou;
	}

	public float getTxtGongShiZheQian() {
		return txtGongShiZheQian;
	}

	public void setTxtGongShiZheQian(float txtGongShiZheQian) {
		this.txtGongShiZheQian = txtGongShiZheQian;
	}

	public float getTxtCaiLiaoZheQian() {
		return txtCaiLiaoZheQian;
	}

	public void setTxtCaiLiaoZheQian(float txtCaiLiaoZheQian) {
		this.txtCaiLiaoZheQian = txtCaiLiaoZheQian;
	}

	public String getTxtGongShiZheHou() {
		return String.format("%.2f", this.txtGongShiZheQian
				* this.txtGongShiZheKou);
	}

	public String getTxtCaiLiaoZheHou() {
		return String.format("%.2f", this.txtCaiLiaoZheQian
				* this.txtCaiLiaoZheKou);
	}

	public String getTxtZheQianHeJi() {
		return String.format("%.2f", this.txtCaiLiaoZheQian
				+ this.txtGongShiZheQian);
	}

	public String getTxtZheHouHeJi() {
		return String.format("%.2f", this.txtGongShiZheQian
				* this.txtGongShiZheKou + this.txtCaiLiaoZheQian
				* this.txtCaiLiaoZheKou);
	}

}