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
	font-size: 16px;
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
	height: 30px;
}

.title {
	font-size: 20px;
	height: 23px;
	font-weight: bold;
	vertical-align: top;
	text-align: center;
}

#billHuiZong td {
	font-weight: bold;
	border: 2px solid black;
	text-align: center;
}

.border-black {
	border: 0.1px solid black;
}
</style>
<title>维修结算单</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
	function show() {
		window.print();
	}
</script>


<body>
	<form id="form1" name="form1" method="post">

		<table id="tbPrint" border="0" class="Noprint">
			<tr>
				<td><input type="button" value="打印"
					onClick="javascript:show();" /></td>
			</tr>
		</table>

		<table border="0" cellpadding="0" cellspacing="0" width="880px"
			style="margin-left: 15px;">
			<tr>
				<td class="title">深圳市八路通汽车服务连锁机构</td>
			</tr>
			<tr>
				<td class="title">结算单</td>
			</tr>
			<tr>
				<td>
					<table border="0" cellpadding="0" cellspacing="0" width="100%"
						style="border-collapse: collapse;">
						<tr>
							<td style="width: 50%; padding-left: 2px; font-size: 16px;">日期：<s:property value='gongDan.txtChuChangDate' /></td>
							<td align="right"
								style=" width: 50%; font-size: 16px;">工单号：<s:property value='gongDan.txtBillNo' /></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td style="height:5px;"></td>
			</tr>
			<tr>
				<td>
					<!--客户信息 start-->
					<table border="0" cellpadding="0" cellspacing="0" width="100%"
						style="border-top: 1px solid black; border-left: 1px solid black; border-right: 1px solid black;">
						<tr>
							<td width="9%" class="border-black">&nbsp;车牌号</td>
							<td colspan="2" class="border-black">&nbsp;<s:property value='gongDan.txtChePaiHao' />&nbsp;</td>
							<td width="10%" class="border-black">&nbsp;车辆型号</td>
							<td width="23%" class="border-black">&nbsp;<s:property value='gongDan.txtCheXingDaiMa' />&nbsp;</td>
							<td width="10%" class="border-black">&nbsp;车架号</td>
							<td width="30%" colspan="3" class="border-black">&nbsp;<s:property value='gongDan.txtVin' />&nbsp;</td>
						</tr>
						<tr>
							<td class="border-black">&nbsp;车主姓名</td>
							<td colspan="2" class="border-black">&nbsp;<s:property value='gongDan.txtCheZhuName' />&nbsp;</td>
							<td class="border-black">&nbsp;车辆注册<br/>&nbsp;登记日期</td>
							<td class="border-black">&nbsp;<s:property value='gongDan.txtCheLiangDengJiRiQi' />&nbsp;</td>
							<td class="border-black">&nbsp;发动机号</td>
							<td colspan="3" class="border-black">&nbsp;<s:property value='gongDan.txtFaDongJiHao' />&nbsp;</td>
						</tr>
						<tr>
							<td class="border-black">&nbsp;联系手机</td>
							<td colspan="2" class="border-black">&nbsp;<s:property value='gongDan.txtCheZhuTel' />&nbsp;</td>
							<td class="border-black">&nbsp;年审到期日</td>
							<td class="border-black">&nbsp;<s:property value='gongDan.txtCheLiangNianShenDaoQiRi' />&nbsp;</td>
							<td class="border-black">&nbsp;保险到期日</td>
							<td colspan="3" class="border-black">&nbsp;<s:property value='gongDan.txtCheLiangBaoXianDaoQiRi' />&nbsp;</td>
						</tr>
						<tr>
							<td class="border-black">&nbsp;车型</td>
							<td colspan="2" class="border-black">&nbsp;<s:property value='gongDan.txtCheXiName' />&nbsp;</td>
							<td class="border-black">&nbsp;行驶里程</td>
							<td class="border-black">&nbsp;<s:property value='gongDan.txtLiCheng' />&nbsp;</td>
							<td class="border-black">&nbsp;承保公司</td>
							<td colspan="3" class="border-black">&nbsp;<s:property value='gongDan.ddlChengBaoGongSi' />&nbsp;</td>
						</tr>
					</table> <!--客户信息 end-->
				</td>
			</tr>


			<tr>
				<td>
					<!--维修项目 start-->
					<table table border="0" cellpadding="0" cellspacing="0"
						wdith="100%">

						<tr>
							<td valign="top">
								<!--维修项目 start-->
								<table border="0" id="weiXiuList" cellpadding="0"
									cellspacing="0"
									style="border-left: 1px solid black; border-bottom: 1px solid black;">
									<tr>
										<td colspan="5" class="border-black" style="font-weight:bold;">&nbsp;维修项目列表</td>
									</tr>
									<tr>
                                    <td class="border-black" align="center"
											width="40">序号</td>
										<td class="border-black" align="center"
											width="40">工段</td>
										<td class="border-black" align="center"
											width="250">维修内容</td>
										<td class="border-black" align="center"
											width="80">费用</td>
										<td class="border-black" align="center"
											width="80">备注</td>
									</tr>
                                    <s:iterator value="gongDanXiangMuLst" status="index">                                   
									<tr>
                                        <td align="center" class="border-black">&nbsp;<s:property value="#index.count"/></td>
										<td align="center" nowrap class="border-black">&nbsp;<s:property value="txtGongDuanName" /></td>
										<td nowrap class="border-black">&nbsp;<s:property value="txtWeiXiuNeiRong" /></td>
										<td nowrap class="border-black">&nbsp;<s:property value="disPlayFeiYong" /></td>
										<td nowrap class="border-black">&nbsp;<s:property value="txtRemark" /></td>
									</tr>									
									</s:iterator>
                                  
								</table> <!--维修项目 end-->
							</td>
							<td valign="top">
								<!--车辆检测 start-->
								<table border="0" cellpadding="0" cellspacing="0"
									style="border-right: 1px solid black; border-bottom: 1px solid black;">
									<tr>
										<td colspan="3" class="border-black"style="font-weight:bold;">&nbsp;车辆检测列表</td>
									</tr>
									<tr>
										<td class="border-black" align="center"
											width="230">内容</td>
										<td class="border-black" align="center"
											width="60">状态</td>
										<td class="border-black" align="center"
											width="150">备注</td>
									</tr>
                                      <s:iterator value="gongDanCheLiangJianCeLst" status="index">
									<tr>
										<td class="border-black">&nbsp;<s:property value="#index.count"/><s:property value="txtNeiRong" /></td>
										<td class="border-black">&nbsp;<s:property value="txtZhuangTai" /></td>
										<td class="border-black">&nbsp;<s:property value="txtRemark" /></td>
									</tr>
									</s:iterator>
								</table> <!--车辆检测 end-->
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td style="height: 15px;"></td>
			</tr>
			<tr>
				<td>价格合计：<span style="font-weight:bold"><s:property value='jieSuanInfo.heJiDiscount' /></span><span style="padding-left: 25%">服务顾问：<s:property value='gongDan.txtFuWuGuWen' /></span> <span
					style="padding-left: 25%">客户签名：</span>
				</td>
			</tr>
			<tr>
				<td>深圳市八路通汽车服务连锁机构 <span style="padding-left:390px;">投诉热线：29971491/18038094463</span></td>
			</tr>
		</table>
	</form>
</body>
</html>