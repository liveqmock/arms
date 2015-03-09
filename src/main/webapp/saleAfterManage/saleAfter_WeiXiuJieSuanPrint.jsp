<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<STYLE type=text/css media=print>
.Noprint {
	DISPLAY: none
}
</Style>
<style type="text/css">
body, td, th {
	vnd .ms-excel.numberformat: @;
	font-family: "Arial", "宋体", "Helvetica", "sans-serif";
	font-size: 13px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
	margin-top: 0px;
	SCROLLBAR-HIGHLIGHT-COLOR: #F5F9FF;
	SCROLLBAR-SHADOW-COLOR: #828282;
	SCROLLBAR-3DLIGHT-COLOR: #828282;
	SCROLLBAR-ARROW-COLOR: #797979;
	SCROLLBAR-TRACK-COLOR: #ECECEC;
	SCROLLBAR-DARKSHADOW-COLOR: #ffffff;
}

.printTable {
	border: #000000 solid 1px;
	border-collapse: collapse;
	table-layout: fixed;
}

.printTable tr {
	height: 22px;
}

.printTable th {
	font-weight: normal;
	border: #000000 solid 1px;
}

.printTable td {
	border: #000000 solid 1px;
	white-space: nowrap;
	overflow: hidden;
}

.PageNext {
	page-break-after: always;
}

td {
	height: 22px;
}

#weiXiuList td {
	border-bottom: 1px dotted black;
	border-right: 1px dotted black;
}

.border-bottom-right-solid {
	border-bottom: 1px solid black;
	border-right: 1px dotted black;
}

.border-bottom-right-dotted {
	border-bottom: 1px dotted black;
	border-right: 1px dotted black;
}

#wuLiaoList td {
	border-bottom: 1px dotted black;
	border-right: 1px dotted black;
}

#billHuiZong td {
	font-weight: bold;
	border: 2px solid black;
	text-align: center;
}
</style>
<title>维修结算单</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script>
<script src="../js/frame/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>
<script language="javascript" type="text/javascript">
	function show() {
		window.print();
	}
</script>
<body>	
	<table id="tbPrint" border="0" class="Noprint">
		<tr>
			<td><s:if test="gongDanStatus in {'费用结算','交车'}"><input type="button" value="打印结算单" onClick="javascript:show();" /></s:if><s:else>结算单预览（只能在结算或交车后打印结算单）</s:else></td>
		</tr>
	</table>    
	<table border="0" cellpadding="0" cellspacing="0" width="700px" 
		style="margin-left: 5px;">
		<tr>
			<td align="center"
				style="font-size: 19px;  font-weight: bold; text-align: center;">
				<div
					style="width: 700px; height: 70px; margin: 0 auto; line-height: 70px;">
					<img src="../image/BaLuTongLogo.png"
						style="width: 65px; display: block; margin: 0 auto; float: left; padding-left: 100px;" /><span
						style="padding-right: 150px;">深圳市八路通汽车服务连锁机构(结算单)</span>
				</div>
			</td>
		</tr>
		<tr>
			<td>
				<table border="0" cellpadding="0" cellspacing="0" width="100%"
					style="margin-left: 10px; margin-right: 10px; border-collapse: collapse;">
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td width="150px"
							style="border: 2px solid black; padding-left: 2px; font-size: 14px;">服务顾问:&nbsp;<s:property
								value='gongDan.txtFuWuGuWen' /></td>
						<td width="160px"
							style="border: 2px solid black; padding-left: 3px; font-size: 14px;">客户确认:</td>
						<td width="200px"></td>
						<td height="60px" style="font-size: 12px;">日期:&nbsp;<span
							name="time"><s:property value='gongDan.txtRuChangDate' />
						</span> <br />工单号:&nbsp;<s:property value='gongDan.txtBillNo' /> <br />车牌号码:&nbsp;<s:property
								value='gongDan.txtChePaiHao' /></td>
					</tr>
				</table>

			</td>
		</tr>
		<tr>
			<td style="height: 7px;"></td>
		</tr>
		<tr>
			<td>
				<!--客户信息 start-->
				<table border="0" cellpadding="0" cellspacing="0" width="100%"
					style="border: 2px solid black; padding-left: 2px;">
					<tr>
						<td width="10%" rowspan="2" class="border-bottom-right-solid">客户</td>
						<td width="11%" class="border-bottom-right-dotted">&nbsp;客户名称:</td>
						<td colspan="2" class="border-bottom-right-dotted">&nbsp;<s:property
								value='gongDan.txtCheZhuName' /></td>
						<td width="8%" class="border-bottom-right-dotted">&nbsp;联系人:</td>
						<td colspan="2" class="border-bottom-right-dotted">&nbsp;<s:property
								value='gongDan.txtLianXiRenName' /></td>
						<td width="9%" class="border-bottom-right-dotted">&nbsp;联系电话:</td>
						<td width="17%" style="border-bottom: 1px dotted black;">&nbsp;<s:property
								value='gongDan.txtCheZhuTel' /></td>
					</tr>
					<tr>
						<td class="border-bottom-right-solid">&nbsp;会员级别:</td>
						<td width="17%" class="border-bottom-right-solid">&nbsp;<s:property
								value='gongDan.txtHuiYuanDengJi' /></td>
						<td width="10%" class="border-bottom-right-solid">&nbsp;客户地址:</td>
						<td colspan="6" style="border-bottom: 1px solid black;">&nbsp;<s:property
								value='gongDan.txtLianXiRenAdd' /></td>
					</tr>
					<tr>
						<td rowspan="2" style="border-right: 1px dotted black;">车辆</td>
						<td class="border-bottom-right-dotted">&nbsp;车型:</td>
						<td class="border-bottom-right-dotted">&nbsp;<s:property
								value='gongDan.txtCheXiName' /></td>
						<td class="border-bottom-right-dotted">&nbsp;车架号:</td>
						<td colspan="5" style="border-bottom: 1px dotted black;">&nbsp;<s:property
								value='gongDan.txtVin' /></td>
					</tr>
					<tr>
						<td class="border-bottom-right-dotted">&nbsp;进厂里程:</td>
						<td class="border-bottom-right-dotted">&nbsp;<s:property
								value='gongDan.txtLiCheng' />KM</td>
						<td class="border-bottom-right-dotted">&nbsp;发动机:</td>
						<td colspan="5" class="border-bottom-right-dotted">&nbsp;<s:property
								value='gongDan.txtFaDongJiHao' /></td>
					</tr>
				</table> <!--客户信息 end-->
			</td>
		</tr>
		<tr>
			<td style="height: 5px;"></td>
		</tr>

		<tr>
			<td>
				<!--维修项目 start-->
				<table border="0" id="weiXiuList"
					style="border: 2px solid black; width: 100%; border-collapse: collapse;">

					<tr>
						<td width="48">序号</td>
						<td width="105">工段名</td>
						<td width="203">项目名称</td>
						<td width="62">费用</td>
						<td width="63">主修人</td>
						<td width="189" style="border-right: none;">备注</td>
					</tr>
					<s:iterator value="gongDanXiangMuLst" status="index">
						<tr>
							<td>&nbsp;<s:property value="#index.count" /></td>
							<td>&nbsp;<s:property value="txtXiangMuName" /></td>
							<td nowrap style="overflow:hidden;">&nbsp;<s:property value="txtWeiXiuNeiRong" /></td>
							<td align="right">&nbsp;<s:property value="disPlayFeiYong" /></td>
							<td>&nbsp;<s:property value="txtZhuXiuRen" /></td>
							<td nowrap style="overflow:hidden;">&nbsp;<s:property value="txtRemark" /></td>
						</tr>
					</s:iterator>
				</table> <!--维修项目 end-->
			</td>
		</tr>
		<tr>
			<td style="height: 5px;"></td>
		</tr>
		<tr id="wuLiao">
			<td>
				<!--维修物料 start-->
				<table border="0" id="wuLiaoList"
					style="border: 2px solid black; width: 100%; border-collapse: collapse;" >

					<tr>
						<td width="47">序号</td>
						<td width="269">名称及规格</td>
						<td width="66">数量</td>
						<td width="104">单价</td>
						<td width="188">所属项目</td>
					</tr>
					<s:iterator value="gongDanWuLiaoLst" status="index">
						<tr>
							<td>&nbsp;<s:property value="#index.count" /></td>
							<td>&nbsp;<s:property value="txtWuLiaoName" /></td>
							<td>&nbsp;<s:property value="displayQty" /></td>
							<td align="right">&nbsp;<s:property value="displayPrice" /></td>
							<td>&nbsp;<s:property value="ddlSuoSuXiangMu" /></td>
						</tr>
					</s:iterator>

				</table> <!--维修物料 end-->
			</td>
		</tr>
		<tr>
			<td style="height: 5px;"></td>
		</tr>
		<tr>
			<td>
				<!--费用合计 start-->
				<table border="2" id="billHuiZong"
					style="border: 2px solid black; width: 100%; border-collapse: collapse;">
					<tr>
						<td width="5%" rowspan="5">单<br />据<br />汇<br />总<br />
						</td>
						<td colspan="6" style="border-right: none;"><div
								style="width: 100%; text-align: left;">
								维修项目折扣：
								<s:property value='gongDan.txtGongShiZheKou' />
								&nbsp;&nbsp;&nbsp;&nbsp; 物料折扣：
								<s:property value='gongDan.txtCaiLiaoZheKou' />
								&nbsp;
							</div></td>
					</tr>
					<tr>
						<td width="24%">项目维修费(免费)</td>
						<td width="9%" align="right">&nbsp;<s:property
								value='jieSuanInfo.weiXiuFeiFree' /></td>
						<td width="24%">物料费用(免费)</td>
						<td width="10%" align="right">&nbsp;<s:property
								value='jieSuanInfo.wuLiaoFeiFree' /></td>
						<td width="19%">合计(免费)</td>
						<td width="9%" align="right">&nbsp;<s:property
								value='jieSuanInfo.heJiFree' /></td>
					</tr>
					<tr>
						<td>项目维修费(付费)</td>
						<td align="right">&nbsp;<s:property
								value='jieSuanInfo.weiXiuFeiPaid' /></td>
						<td>物料费用(付费)</td>
						<td align="right">&nbsp;<s:property
								value='jieSuanInfo.wuLiaoFeiPaid' /></td>
						<td>合计(付费)</td>
						<td align="right">&nbsp;<s:property
								value='jieSuanInfo.heJiPaid' /></td>
					</tr>
					<tr>
						<td>项目维修费(客户支付)</td>
						<td align="right">&nbsp;<s:property
								value='jieSuanInfo.weiXiuFeiDiscount' /></td>
						<td>物料费用(客户支付)</td>
						<td align="right">&nbsp;<s:property
								value='jieSuanInfo.wuLiaoFeiDiscount' /></td>
						<td>合计(客户支付)</td>
						<td align="right">&nbsp;<s:property
								value='jieSuanInfo.heJiDiscount' /></td>
					</tr>
					<tr>
						<td colspan="2" style="border-right: none;">&nbsp;</td>
						<td colspan="2" style="border-left: none; border-right: none;">支付方式：<s:property
								value='gongDan.ddlZhiFuFangShi' /></td>
						<td colspan="2" style="border-left: none; border-right: none;">实付金额：<s:property
								value='gongDan.displayFinalPay' /></td>
					</tr>
				</table> <!--费用合计 end-->
			</td>
		</tr>
		<tr>
			<td style="height: 5px;"></td>
		</tr>
		<tr>
			<td>
				<!--下次保养提醒 start--> <span
				style='font-weight: bold; font-size: 15px; padding-top: 3px;'>下次保养里程:&nbsp;<s:property
						value='gongDan.txtNewLiCheng' />KM <span
					style='padding-left: 150px;'> 下次保养日期:&nbsp;<s:property
							value='gongDan.txtNewRuChangDate' /></span></span> <!--下次保养提醒 end-->
			</td>
		</tr>
		<tr>
			<td><br />
			<br /></td>
		</tr>
		<tr>
			<td>
				<!--公司地址 start-->
				<table border='0' style='font-weight: bold; padding-top: 3px;'>
					<tr>
						<td>投诉热线:<s:property	value='user.shopTel' /></td>
					</tr>
					<tr>
						<td>公司地址:<s:property	value='user.shopAdd' /></td>
					</tr>
				</table> <!--公司地址 end-->
			</td>
		</tr>
		<tr>
			<td>
				<!--备注信息 start-->
				<table border="0">
					<tr>
						<td style="width: 500px;" align="left">
							<table border="0">
								<tr>
									<td rowspan="5" valign="top">注:</td>
									<td>1、本人同意按贵公司维修结算单上所列项目支付需要更换的零件费及修理费。</td>
								</tr>
								<tr>
									<td>2、为了确保服务品质，我们会在三天内进行电话回访。</td>
								</tr>

							</table>
						</td>
					</tr>
				</table> <!--备注信息 end-->
			</td>
		</tr>
	</table>
</body>
</html>