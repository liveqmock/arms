package com.chiefmech.arms.entity.view;

import com.chiefmech.arms.common.util.HuiYuanUtil;

public class VKeHuCheLiang {
	private String txtCustId;
	private String ddlCustSort;
	private String txtCheZhuName;
	private String txtCheZhuTel;
	private String txtLianXiRenName;
	private String txtLianXiRenTel;
	private String txtLianXiRenAdd;
	private String txtCheLiangId;
	private String txtCheLiangChePaiHao;
	private String ddlCheLiangZhiZaoShang;
	private String ddlCheLiangCheXi;
	private String txtCheLiangCheXingDaiMa;
	private String txtCheLiangCheJiaHao;
	private String txtCheLiangFaDongJiHao;
	private String txtHuiYuanDengJi;
	private String txtCheZhuJiaZhaoDate;
	private String txtCheLiangDengJiRiQi;
	private String txtCheLiangNianShenDaoQiRi;
	private String txtCheLiangBaoXianDaoQiRi;
	private String ddlChengBaoGongSi;
	private String txtHuiYuanHao;
	private int txtHuiYuanJiFen;
	private float txtGongShiZheKou;
	private float txtCaiLiaoZheKou;

	public String getTxtCheZhuJiaZhaoDate() {
		return txtCheZhuJiaZhaoDate;
	}

	public void setTxtCheZhuJiaZhaoDate(String txtCheZhuJiaZhaoDate) {
		this.txtCheZhuJiaZhaoDate = txtCheZhuJiaZhaoDate;
	}

	public String getTxtCustId() {
		return txtCustId;
	}

	public void setTxtCustId(String txtCustId) {
		this.txtCustId = txtCustId;
	}

	public String getTxtCheLiangFaDongJiHao() {
		return txtCheLiangFaDongJiHao;
	}

	public void setTxtCheLiangFaDongJiHao(String txtCheLiangFaDongJiHao) {
		this.txtCheLiangFaDongJiHao = txtCheLiangFaDongJiHao;
	}

	public int getTxtHuiYuanJiFen() {
		return txtHuiYuanJiFen;
	}

	public void setTxtHuiYuanJiFen(int txtHuiYuanJiFen) {
		this.txtHuiYuanJiFen = txtHuiYuanJiFen;
	}

	public String getDdlCustSort() {
		return ddlCustSort;
	}

	public void setDdlCustSort(String ddlCustSort) {
		this.ddlCustSort = ddlCustSort;
	}

	public String getTxtCheLiangCheXingDaiMa() {
		return txtCheLiangCheXingDaiMa;
	}

	public void setTxtCheLiangCheXingDaiMa(String txtCheLiangCheXingDaiMa) {
		this.txtCheLiangCheXingDaiMa = txtCheLiangCheXingDaiMa;
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

	public String getTxtCheLiangId() {
		return txtCheLiangId;
	}

	public void setTxtCheLiangId(String txtCheLiangId) {
		this.txtCheLiangId = txtCheLiangId;
	}

	public String getTxtCheLiangChePaiHao() {
		return txtCheLiangChePaiHao;
	}

	public void setTxtCheLiangChePaiHao(String txtCheLiangChePaiHao) {
		this.txtCheLiangChePaiHao = txtCheLiangChePaiHao;
	}

	public String getDdlCheLiangZhiZaoShang() {
		return ddlCheLiangZhiZaoShang;
	}

	public void setDdlCheLiangZhiZaoShang(String ddlCheLiangZhiZaoShang) {
		this.ddlCheLiangZhiZaoShang = ddlCheLiangZhiZaoShang;
	}

	public String getDdlCheLiangCheXi() {
		return ddlCheLiangCheXi;
	}

	public void setDdlCheLiangCheXi(String ddlCheLiangCheXi) {
		this.ddlCheLiangCheXi = ddlCheLiangCheXi;
	}

	public String getTxtCheLiangCheJiaHao() {
		return txtCheLiangCheJiaHao;
	}

	public void setTxtCheLiangCheJiaHao(String txtCheLiangCheJiaHao) {
		this.txtCheLiangCheJiaHao = txtCheLiangCheJiaHao;
	}

	public String getTxtLianXiRenAdd() {
		return txtLianXiRenAdd;
	}

	public void setTxtLianXiRenAdd(String txtLianXiRenAdd) {
		this.txtLianXiRenAdd = txtLianXiRenAdd;
	}

	public String getTxtHuiYuanDengJi() {
		return HuiYuanUtil.getHuiYuanDengJi(this.txtHuiYuanJiFen);
	}

	public String getTxtHuiYuanHao() {
		return txtHuiYuanHao;
	}

	public void setTxtHuiYuanHao(String txtHuiYuanHao) {
		this.txtHuiYuanHao = txtHuiYuanHao;
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
