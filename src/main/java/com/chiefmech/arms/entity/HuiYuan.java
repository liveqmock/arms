package com.chiefmech.arms.entity;

public class HuiYuan {
	
private String txtHuiYuanId;
private String txtCustId;
private String txtHuiYuanHao;
private String txtHuiYuanDengJi;
private String txtShenQingRiQi;
private int txtHuiYuanJiFen;
private float txtGongShiZheKou;
private float txtCaiLiaoZheKou;

public String getTxtHuiYuanId() {
	return txtHuiYuanId;
}
public void setTxtHuiYuanId(String txtHuiYuanId) {
	this.txtHuiYuanId = txtHuiYuanId;
}
public String getTxtCustId() {
	return txtCustId;
}
public void setTxtCustId(String txtCustId) {
	this.txtCustId = txtCustId;
}
public String getTxtHuiYuanHao() {
	return txtHuiYuanHao;
}
public void setTxtHuiYuanHao(String txtHuiYuanHao) {
	this.txtHuiYuanHao = txtHuiYuanHao;
}
public String getTxtHuiYuanDengJi() {
	if(txtHuiYuanJiFen<=3000){
		   txtHuiYuanDengJi="铜卡用户";
			return txtHuiYuanDengJi;
		}
		if(txtHuiYuanJiFen<=6000){
			 txtHuiYuanDengJi="银卡用户";
			return txtHuiYuanDengJi;
		}
		if(txtHuiYuanJiFen<=10000){
		txtHuiYuanDengJi="金卡用户";
		return txtHuiYuanDengJi;
	}
		txtHuiYuanDengJi="超级用户";
		return txtHuiYuanDengJi;
}
public void setTxtHuiYuanDengJi(String txtHuiYuanDengJi) {
	this.txtHuiYuanDengJi = txtHuiYuanDengJi;
}
public String getTxtShenQingRiQi() {
	return txtShenQingRiQi;
}
public void setTxtShenQingRiQi(String txtShenQingRiQi) {
	this.txtShenQingRiQi = txtShenQingRiQi;
}
public int getTxtHuiYuanJiFen() {
	return txtHuiYuanJiFen;
}
public void setTxtHuiYuanJiFen(int txtHuiYuanJiFen) {
	this.txtHuiYuanJiFen = txtHuiYuanJiFen;
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


}
