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
	private String txtFuWuGuWen;
	/** 下次保养里程 */
	private String txtNewLiCheng;
	/** 下次保养时间 */
	private String txtNewRuChangDate;
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

	private String txtCheLiangDengJiRiQi;
	private String txtCheLiangNianShenDaoQiRi;
	private String txtCheLiangBaoXianDaoQiRi;
	private String ddlChengBaoGongSi;

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
		this.setTxtNewRuChangDate(DateUtil.getNewRuChangDate());
		this.setTxtCheLiangDengJiRiQi(customerInfo.getTxtCheLiangDengJiRiQi());
		this.setTxtCheLiangNianShenDaoQiRi(customerInfo
				.getTxtCheLiangNianShenDaoQiRi());
		this.setTxtCheLiangBaoXianDaoQiRi(customerInfo
				.getTxtCheLiangBaoXianDaoQiRi());
		this.setDdlChengBaoGongSi(customerInfo.getDdlChengBaoGongSi());
		this.setTxtGongDanStatus("维修接待");
	}

	public GongDan(VKeHuCheLiang customer, GongDan gongDan) {
		this(customer);

		this.setTxtBillNo(gongDan.getTxtBillNo());
		this.setTxtRuChangDate(gongDan.getTxtRuChangDate());
		this.setTxtYuChuChangDate(gongDan.getTxtYuChuChangDate());
		this.setTxtLiCheng(gongDan.getTxtLiCheng());
		this.setTxtNewLiCheng(gongDan.getTxtNewLiCheng());
		this.setTxtNewRuChangDate(gongDan.getTxtNewRuChangDate());
		this.setTxtXieYiBillNo(gongDan.getTxtXieYiBillNo());
		this.setTxtFuWuGuWen(gongDan.getTxtFuWuGuWen());
		this.setTxtJiaoXiuReason(gongDan.getTxtJiaoXiuReason());
		this.setTxtGuZhangReason(gongDan.getTxtGuZhangReason());
		this.setTxtWeiXiuCuoShi(gongDan.getTxtWeiXiuCuoShi());
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

	public String getTxtFuWuGuWen() {
		return txtFuWuGuWen;
	}

	public void setTxtFuWuGuWen(String txtFuWuGuWen) {
		this.txtFuWuGuWen = txtFuWuGuWen;
	}

	public String getTxtYuChuChangDate() {
		return txtYuChuChangDate;
	}

	public void setTxtYuChuChangDate(String txtYuChuChangDate) {
		this.txtYuChuChangDate = txtYuChuChangDate;
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

	public String getTxtCheLiangDengJiRiQi() {
		return txtCheLiangDengJiRiQi;
	}

	public void setTxtCheLiangDengJiRiQi(String txtCheLiangDengJiRiQi) {
		this.txtCheLiangDengJiRiQi = txtCheLiangDengJiRiQi;
	}

	public String getTxtCheLiangNianShenDaoQiRi() {
		return txtCheLiangNianShenDaoQiRi;
	}

	public void setTxtCheLiangNianShenDaoQiRi(String txtCheLiangNianShenDaoQiRi) {
		this.txtCheLiangNianShenDaoQiRi = txtCheLiangNianShenDaoQiRi;
	}

	public String getTxtCheLiangBaoXianDaoQiRi() {
		return txtCheLiangBaoXianDaoQiRi;
	}

	public void setTxtCheLiangBaoXianDaoQiRi(String txtCheLiangBaoXianDaoQiRi) {
		this.txtCheLiangBaoXianDaoQiRi = txtCheLiangBaoXianDaoQiRi;
	}

	public String getDdlChengBaoGongSi() {
		return ddlChengBaoGongSi;
	}

	public void setDdlChengBaoGongSi(String ddlChengBaoGongSi) {
		this.ddlChengBaoGongSi = ddlChengBaoGongSi;
	}

}