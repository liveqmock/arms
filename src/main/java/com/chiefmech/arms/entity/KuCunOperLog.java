package com.chiefmech.arms.entity;

import com.chiefmech.arms.common.util.DateUtil;
import com.chiefmech.arms.common.util.IDGen;

public class KuCunOperLog {
	private String txtLogGuid;
	private String txtShopCode;
	private String txtBillGuid;
	private String txtOperAction;
	private String txtLogDate;

	private String txtWuLiaoCode;
	private String txtWuLiaoName;
	private int txtQty;
	private float txtChengBenJia;
	private float txtSalePrice;
	private String txtSuppName;
	private String txtRemark;
	private int txtNewQty;

	public KuCunOperLog() {
	}

	public KuCunOperLog(RuKuDan ruKuDan, RuKuDanWuLiao ruKuDanWuLiao) {
		this.txtLogGuid = IDGen.getUUID();
		this.txtShopCode = ruKuDan.getTxtShopCode();
		this.txtBillGuid = ruKuDan.getTxtGuid();
		this.txtOperAction = "日常采购";
		this.txtLogDate = DateUtil.getCurrentDateTime();

		this.txtWuLiaoCode = ruKuDanWuLiao.getTxtWuLiaoCode();
		this.txtWuLiaoName = ruKuDanWuLiao.getTxtWuLiaoName();
		this.txtQty = ruKuDanWuLiao.getTxtQty();
		this.txtChengBenJia = ruKuDanWuLiao.getTxtPrice();
		// this.txtSalePrice; //采购物料入库时没有成本价信息
		this.txtSuppName = ruKuDan.getTxtSuppName();
		this.txtRemark = ruKuDanWuLiao.getTxtRemark();
	}

	public KuCunOperLog(GongDanWeiXiuWuLiao gongDanWuLiao, String txtOperAction) {
		this.txtLogGuid = IDGen.getUUID();
		this.txtShopCode = gongDanWuLiao.getTxtShopCode();
		this.txtBillGuid = gongDanWuLiao.getTxtGongDanGuid();
		this.txtOperAction = txtOperAction;
		this.txtLogDate = DateUtil.getCurrentDateTime();

		this.txtWuLiaoCode = gongDanWuLiao.getTxtWuLiaoCode();
		this.txtWuLiaoName = gongDanWuLiao.getTxtWuLiaoName();
		this.txtQty = (int) gongDanWuLiao.getTxtQty();
		this.txtChengBenJia = gongDanWuLiao.getTxtChengBenJia();
		this.txtSalePrice = gongDanWuLiao.getTxtSalePrice();
		this.txtSuppName = gongDanWuLiao.getTxtSuppName();
		this.txtRemark = gongDanWuLiao.getTxtRemark();
	}

	public KuCunOperLog(KuCun kuCun, String txtOperAction) {
		this.txtLogGuid = IDGen.getUUID();
		this.txtShopCode = kuCun.getTxtShopCode();
		this.txtBillGuid = "";
		this.txtOperAction = txtOperAction;
		this.txtLogDate = DateUtil.getCurrentDateTime();

		this.txtWuLiaoCode = kuCun.getTxtWuLiaoCode();
		this.txtWuLiaoName = kuCun.getTxtWuLiaoName();
		this.txtQty = kuCun.getTxtTakeQty();
		this.txtChengBenJia = kuCun.getTxtChengBenJia();
		this.txtSalePrice = kuCun.getTxtSalePrice();
		this.txtSuppName = kuCun.getTxtSuppName();
		this.txtRemark = kuCun.getTxtRemark();

	}

	public int getTxtNewQty() {
		return txtNewQty;
	}

	public void setTxtNewQty(int txtNewQty) {
		this.txtNewQty = txtNewQty;
	}

	public String getTxtShopCode() {
		return txtShopCode;
	}

	public void setTxtShopCode(String txtShopCode) {
		this.txtShopCode = txtShopCode;
	}

	public String getTxtRemark() {
		return txtRemark;
	}

	public void setTxtRemark(String txtRemark) {
		this.txtRemark = txtRemark;
	}

	public String getTxtOperAction() {
		return txtOperAction;
	}

	public void setTxtOperAction(String txtOperAction) {
		this.txtOperAction = txtOperAction;
	}

	public String getTxtSuppName() {
		return txtSuppName;
	}

	public void setTxtSuppName(String txtSuppName) {
		this.txtSuppName = txtSuppName;
	}

	public String getTxtLogGuid() {
		return txtLogGuid;
	}

	public void setTxtLogGuid(String txtLogGuid) {
		this.txtLogGuid = txtLogGuid;
	}

	public String getTxtBillGuid() {
		return txtBillGuid;
	}

	public void setTxtBillGuid(String txtBillGuid) {
		this.txtBillGuid = txtBillGuid;
	}

	public String getTxtLogDate() {
		return txtLogDate;
	}

	public void setTxtLogDate(String txtLogDate) {
		this.txtLogDate = txtLogDate;
	}

	public String getTxtWuLiaoCode() {
		return txtWuLiaoCode;
	}

	public void setTxtWuLiaoCode(String txtWuLiaoCode) {
		this.txtWuLiaoCode = txtWuLiaoCode;
	}

	public String getTxtWuLiaoName() {
		return txtWuLiaoName;
	}

	public void setTxtWuLiaoName(String txtWuLiaoName) {
		this.txtWuLiaoName = txtWuLiaoName;
	}

	public int getTxtQty() {
		return txtQty;
	}

	public void setTxtQty(int txtQty) {
		this.txtQty = txtQty;
	}

	public float getTxtChengBenJia() {
		return txtChengBenJia;
	}

	public void setTxtChengBenJia(float txtChengBenJia) {
		this.txtChengBenJia = txtChengBenJia;
	}

	public float getTxtSalePrice() {
		return txtSalePrice;
	}

	public void setTxtSalePrice(float txtSalePrice) {
		this.txtSalePrice = txtSalePrice;
	}

}
