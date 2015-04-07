package com.chiefmech.arms.entity;

import com.chiefmech.arms.common.util.IDGen;

public class GongDanCheLiangJianCe extends JianChaXiangMu {

	private String txtJianCeGuid;
	private String txtGongDanGuid;
	private String txtCurStatus;
	private String txtCurAction;

	private String toolTip; // 只是为了显示

	public GongDanCheLiangJianCe(String txtGongDanGuid, JianChaXiangMu item) {
		super(item);

		this.txtJianCeGuid = IDGen.getUUID();
		this.txtGongDanGuid = txtGongDanGuid;
		this.txtCurStatus = "";
		this.txtCurAction = "";

	}

	public GongDanCheLiangJianCe() {
	}

	public String getToolTip() {
		toolTip = "";
		if (this.getTxtTip2() == null && this.getTxtTip1() != null) {
			// 兼容以前版本只有一个提示且没有需更换/已更换字段
			toolTip = this.getTxtTip1();
		} else if ("需更换".equals(this.txtCurStatus)) {
			if ("已更换".equals(this.txtCurAction)) {
				toolTip = this.getTxtTip1();
			} else {
				toolTip = this.getTxtTip2();
			}
		} else if ("需清洁".equals(this.txtCurStatus)
				&& "已清洁".equals(this.txtCurAction)) {
			toolTip = this.getTxtTip3();
		} else if ("需添加".equals(this.txtCurStatus)
				&& "已添加".equals(this.txtCurAction)) {
			toolTip = this.getTxtTip4();
		}
		return toolTip;
	}
	public String getTxtCurStatus() {
		return txtCurStatus;
	}

	public void setTxtCurStatus(String txtCurStatus) {
		this.txtCurStatus = txtCurStatus;
	}

	public String getTxtCurAction() {
		return txtCurAction;
	}

	public void setTxtCurAction(String txtCurAction) {
		this.txtCurAction = txtCurAction;
	}

	public String getTxtJianCeGuid() {
		return txtJianCeGuid;
	}

	public void setTxtJianCeGuid(String txtJianCeGuid) {
		this.txtJianCeGuid = txtJianCeGuid;
	}

	public String getTxtGongDanGuid() {
		return txtGongDanGuid;
	}

	public void setTxtGongDanGuid(String txtGongDanGuid) {
		this.txtGongDanGuid = txtGongDanGuid;
	}

}
