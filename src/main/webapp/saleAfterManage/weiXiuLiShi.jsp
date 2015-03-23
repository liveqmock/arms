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

#jianceList td {
	border-bottom: 1px dotted black;
	border-right: 1px dotted black;
}

#billHuiZong td {
	font-weight: bold;
	border: 2px solid black;
	text-align: center;
}
</style>
<title>维修历史</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script>
<script src="../js/frame/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>
<script language="javascript" type="text/javascript">
var saleAfterGuid = '<s:property value="saleAfterWeiXiuGuid" />';
	function show() {
		window.print();
	}
	function showCheLiangXiangMu(){			
		var url = '../saleAfterManage/JianCePrint.action?saleAfterWeiXiuGuid='
				+ saleAfterGuid + '&d=' + new Date();
		var name = '车辆检测项目打印';
		var features = 'height=900, width=730, top=80, left=900, toolbar=no, menubar=no, scrollbars=yes, resizable=yes,location=no, status=no';
		
		z = window.open(url, name, features);
		z.focus();
}
</script>
<body>
	<table id="tbPrint" border="0" class="Noprint">
	</table>
	<table border="0" cellpadding="0" cellspacing="0" width="700px"
		style="margin-left: 5px;">
		<tr>
			<td align="center"
				style="font-size: 19px; font-weight: bold; text-align: center;">
				<div
					style="width: 700px; height: 70px; margin: 0 auto; line-height: 70px;">
					<img src="../image/BaLuTongLogo.png"
						style="width: 65px; display: block; margin: 0 auto; float: left; padding-left: 100px;" /><span
						style="padding-right: 150px;">深圳市八路通汽车服务连锁机构(维修历史)</span>
				</div>
			</td>
		</tr>
		<tr>
			<td>
				<table border="0" cellpadding="0" cellspacing="0" width="100%"
					style=" border-collapse: collapse;">
					<tr>
						<td><s:property value='gongDan.shopName' /></td>
                        <td>&nbsp;</td>
                        <td style="text-align:right">工单号：<s:property value='gongDan.txtBillNo' /></td>
					</tr>				
				</table>

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
						<td width="189" style="border-right: none;">备注</td>
					</tr>
					<s:iterator value="gongDanXiangMuLst" status="index">
						<tr>
							<td>&nbsp;<s:property value="#index.count" /></td>
							<td>&nbsp;<s:property value="txtXiangMuName" /></td>
							<td nowrap style="overflow: hidden;">&nbsp;<s:property
									value="txtWeiXiuNeiRong" /></td>
							<td nowrap style="overflow: hidden;">&nbsp;<s:property
									value="txtRemark" /></td>
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
					style="border: 2px solid black; width: 100%; border-collapse: collapse;">

					<tr>
						<td width="47">序号</td>
						<td width="269">名称及规格</td>
						<td width="66">数量</td>
						<td width="188">所属项目</td>
					</tr>
					<s:iterator value="gongDanWuLiaoLst" status="index">
						<tr>
							<td>&nbsp;<s:property value="#index.count" /></td>
							<td>&nbsp;<s:property value="txtWuLiaoName" /></td>
							<td>&nbsp;<s:property value="displayQty" /></td>
							<td>&nbsp;<s:property value="ddlSuoSuXiangMu" /></td>
						</tr>
					</s:iterator>

				</table> <!--维修物料 end-->
			</td>
		</tr>
		<tr>
			<td style="height: 5px;"></td>
		</tr>
		   <tr id="jiance">
			<td>
				<!--维修物料 start-->

				<table border="0" id="jianceList"
					style="border: 2px solid black; width: 100%; border-collapse: collapse;">			
								<tr>
									<td width="156">&nbsp;检测内容</td>
									<td width="87">&nbsp;检测状态</td>
									<td width="86">&nbsp;备注</td>
                                    <td width="349">&nbsp;项目说明</td>
								</tr>
								<s:iterator value="gongDanCheLiangJianCeLst" status="index">
								<tr>						
									<td>&nbsp; <s:property value="txtNeiRong" /></td>
									<td>&nbsp; <s:property value="txtZhuangTai" /></td>
									<td>&nbsp; <s:property value="txtRemark" /></td>
									<td>&nbsp; <s:property value="txtJianChaXiangMuRemark" /></td>
								</tr>								
								</s:iterator>
				</table> <!--维修物料 end-->
			</td>
		</tr> 		
	</table>
</body>
</html>