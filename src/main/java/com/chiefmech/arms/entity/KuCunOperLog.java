package com.chiefmech.arms.entity;

import com.chiefmech.arms.common.util.DateUtil;
import com.chiefmech.arms.common.util.IDGen;

public class KuCunOperLog {
	private String txtLogGuid;
	private String txtBillGuid;
	private String txtOperAction;
	private String txtLogDate;

	private String txtWuLiaoCode;
	private String txtWuLiaoName;
	private int txtQty;
	private float txtChengBenJia;
	private float txtSalePrice;
	private String txtSuppName;

	public KuCunOperLog() {
	}

	public KuCunOperLog(RuKuDan ruKuDan, RuKuDanWuLiao ruKuDanWuLiao) {
		this.txtLogGuid = IDGen.getUUID();
		this.txtBillGuid = ruKuDan.getTxtGuid();
		this.txtOperAction = "日常采购";
		this.txtLogDate = DateUtil.getCurrentDateTime();

		this.txtWuLiaoCode = ruKuDanWuLiao.getTxtWuLiaoCode();
		this.txtWuLiaoName = ruKuDanWuLiao.getTxtWuLiaoName();
		this.txtQty = ruKuDanWuLiao.getTxtQty();
		this.txtChengBenJia = ruKuDanWuLiao.getTxtPrice();
		this.txtSuppName = ruKuDan.getTxtSuppName();
	}

	public KuCunOperLog(GongDanWeiXiuWuLiao gongDanWuLiao) {
		this.txtLogGuid = IDGen.getUUID();
		this.txtBillGuid = gongDanWuLiao.getTxtGongDanGuid();
		this.txtOperAction = "维修出库";
		this.txtLogDate = DateUtil.getCurrentDateTime();

		this.txtWuLiaoCode = gongDanWuLiao.getTxtWuLiaoCode();
		this.txtWuLiaoName = gongDanWuLiao.getTxtWuLiaoName();
		this.txtQty = (int) gongDanWuLiao.getTxtQty();
		this.txtChengBenJia = gongDanWuLiao.getTxtPrice();
		this.txtSuppName = gongDanWuLiao.getTxtSuppName();
	}

	public KuCunOperLog(KuCun kuCun) {
		this.txtLogGuid = IDGen.getUUID();
		this.txtBillGuid = "";
		this.txtOperAction = "修改销售价";
		this.txtLogDate = DateUtil.getCurrentDateTime();

		this.txtWuLiaoCode = kuCun.getTxtWuLiaoCode();
		this.txtWuLiaoName = kuCun.getTxtWuLiaoName();
		this.txtQty = kuCun.getTxtQty();
		this.txtChengBenJia = kuCun.getTxtChengBenJia();
		this.txtSalePrice = kuCun.getTxtSalePrice();
		this.txtSuppName = kuCun.getTxtSuppName();

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
