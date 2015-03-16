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
	border: none;
}

.printTable td {
	border: none;
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
	border: none;
	text-align: center;
}

.border-black {
	border: none;
}
</style>
<title>人保车险清单</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
	function printBill() {
		window.print();
	}
</script>


<body>

	<form id="form1" name="form1" method="post">

		<table id="tbPrint" border="0" class="Noprint">
			<tr>
				<td><input type="button" value="打印人保车险清单"
					onClick="javascript:printBill();" /></td>
			</tr>
		</table>

		<table border="0" cellpadding="0" cellspacing="0"
			style="margin-top: 78px; width: 700px;">
			<tr>
				<td class="title">&nbsp;</td>
			</tr>
			<tr>
				<td class="title">&nbsp;</td>
			</tr>
			<s:iterator value="renBaoWeeklyReportLst" status="L">
				<s:if test="#L.index+1 == 1">
					<tr>
						<td>
							<table border="0" cellpadding="0" cellspacing="0" width="100%"
								style="margin-top: 30px; border-collapse: collapse;">
								<tr>
									<td valign="bottom"  style="width: 50%;padding-bottom:5px; padding-left:35px;"><s:property
											value='txtRuChangDate' /></td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<!--客户信息 start-->
							<table border="0" cellpadding="0" cellspacing="0" width="100%"
								style="border: none;">
								<tr>
									<td width="70" class="border-black">&nbsp;</td>
									<td width="100" class="border-black">&nbsp;<s:property
											value='txtChePaiHao' />&nbsp;
									</td>
									<td width="80" class="border-black">&nbsp;</td>
									<td width="150" class="border-black">&nbsp;<s:property
											value='txtCheXiName' />&nbsp;
									</td>
									<td width="80" class="border-black">&nbsp;</td>
									<td width="170" class="border-black">&nbsp;<s:property
											value='txtVin' />&nbsp;
									</td>
								</tr>
								<tr>
									<td class="border-black">&nbsp;</td>
									<td class="border-black">&nbsp;<s:property
											value='txtCheZhuName' />&nbsp;
									</td>
									<td class="border-black">&nbsp;<br />&nbsp;
									</td>
									<td class="border-black">&nbsp;<s:property
											value='txtCheLiangDengJiRiQi' />&nbsp;
									</td>
									<td class="border-black">&nbsp;</td>
									<td class="border-black">&nbsp;<s:property
											value='txtFaDongJiHao' />&nbsp;
									</td>
								</tr>
								<tr>
									<td class="border-black">&nbsp;</td>
									<td class="border-black">&nbsp;<s:property
											value='txtCheZhuTel' />&nbsp;
									</td>
									<td class="border-black">&nbsp;</td>
									<td class="border-black">&nbsp;<s:property
											value='txtCheLiangNianShenDaoQiRi' />&nbsp;
									</td>
									<td class="border-black">&nbsp;</td>
									<td class="border-black">&nbsp;<s:property
											value='txtCheLiangBaoXianDaoQiRi' />&nbsp;
									</td>
								</tr>
								<tr>
									<td class="border-black">&nbsp;</td>
									<td class="border-black">&nbsp;</td>
									<td class="border-black">&nbsp;</td>
									<td class="border-black">&nbsp;<s:property
											value='txtLiCheng' />KM&nbsp;
									</td>
									<td class="border-black">&nbsp;</td>
									<td class="border-black">&nbsp;<s:property
											value='ddlChengBaoGongSi' />&nbsp;
									</td>
								</tr>
							</table> <!--客户信息 end-->

						</td>
					</tr>
				</s:if>
			</s:iterator>
			<tr>
				<td>
					<!--维修项目 start-->
					<table table border="0" cellpadding="0" cellspacing="0"
						wdith="100%">

						<tr>
							<td width="60%" valign="top">
								<!--维修项目 start-->
								<table border="0" cellpadding="0" cellspacing="0"
									id="weiXiuList" style="border: none;">
									<tr>
										<td colspan="6" class="border-black"
											style="font-weight: bold;">&nbsp;</td>
									</tr>
									<tr>
										<td nowrap class="border-black" align="center" width="40">&nbsp;</td>
										<td nowrap class="border-black" align="center" width="40">&nbsp;</td>
										<td nowrap class="border-black" align="center" width="120">&nbsp;</td>
										<td nowrap class="border-black" align="center" width="70">&nbsp;</td>
										<td nowrap class="border-black" align="center" width="60">&nbsp;</td>
										<td class="border-black" align="center" width="100">&nbsp;</td>
									</tr>
									<%
										for (int i = 0; i <= 19; i++) {
									%>
									<tr>
										<td class="border-black">&nbsp;</td>
										<td class="border-black">&nbsp;</td>
										<td class="border-black">&nbsp;</td>
										<td class="border-black">&nbsp;</td>
										<td class="border-black">&nbsp;</td>
										<td class="border-black">&nbsp;</td>
									</tr>
									<%
										}
									%>

								</table> <!--维修项目 end-->
							</td>
							<td width="40%" valign="top">
								<!--车辆检测 start-->
								<table border="0" cellpadding="0" cellspacing="0"
									style="border: none;">
									<tr>
										<td colspan="3" class="border-black"
											style="font-weight: bold;">&nbsp;</td>
									</tr>
									<tr>
										<td class="border-black" width="180">&nbsp;</td>
										<td class="border-black" width="60">&nbsp;</td>
										<td class="border-black" width="100">&nbsp;</td>
									</tr>
									<%
										for (int i = 0; i <= 14; i++) {
									%>
									<tr>
										<td class="border-black">&nbsp;</td>
										<td class="border-black">&nbsp;</td>
										<td class="border-black">&nbsp;</td>
									</tr>
									<%
										}
									%>
									<tr>
										<td colspan="3" rowspan="4" class="border-black">&nbsp; <s:iterator
												value="renBaoWeeklyReportLst" status="index">
												<br />											
												券号 ： <s:property
													value='txtTicketNumberDisplay' />											
											</s:iterator>
										</td>

									</tr>
								</table> <!--车辆检测 end-->
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>&nbsp;<span style="padding-left: 45%;">&nbsp;<span
						style="font-weight: bold">&nbsp;&nbsp;<s:iterator
								value="renBaoWeeklyReportLst" status="L">
								<s:if test="#L.index+1 == 1">
									<s:property value='txtFuWuGuWen' />
								</s:if>
							</s:iterator></span></span>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>