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

#jianceList td {
	border-bottom: 1px dotted black;
	border-right: 1px dotted black;
}

</style>
<title>车辆检测</title>
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
			<td>
					<input type="button" value="打印车辆检测项目" onClick="javascript:show();" />			
				<s:else>结算单预览（只能在结算或交车后打印结算单）</s:else></td>
		</tr>
	</table>
	<table border="0" cellpadding="0" cellspacing="0" width="700px" style="margin-left: 5px;">
    	<tr>
			<td align="center"
				style="font-size: 19px; font-weight: bold; text-align: center;">
				<div
					style="width: 700px; height: 70px; margin: 0 auto; line-height: 70px;">
					<img src="../image/logo_<s:property value='shop.companyFlag' />.png"
						style="width: 65px; display: block; margin: 0 auto; float: left; padding-left: 100px;" /><span
						style="padding-right: 100px;"><s:if test="shop.companyFlag=='blt'">深圳市八路通汽车服务连锁机构</s:if><s:if test="shop.companyFlag=='cdf'">深圳市车道夫汽车服务连锁机构</s:if>(车辆检测报告)</span>
				</div>
			</td>
		</tr>
		<tr>
			<td style="height: 7px;"></td>
		</tr>
        <tr>
			<td>车牌号：<s:property	value='gongDan.txtChePaiHao' /></td>
		</tr>
		<tr id="jiance">
			<td>
				<!--车辆检测 start-->
				<table border="0" id="jianceList"
					style="border: 2px solid black; width: 100%; border-collapse: collapse;">			
								<tr>
									<td width="156">&nbsp;检测内容</td>
									<td width="87">&nbsp;检测状态</td>
									<td width="86">&nbsp;备注</td>
                                    <td width="349">&nbsp;项目说明</td>
								</tr>
								<s:iterator value="gongDanCheLiangJianCeLst" >
								<tr>							
									<td>&nbsp; <s:property value="txtNeiRong" /></td>
									<td>&nbsp; <s:property value="txtZhuangTai" /></td>
									<td>&nbsp; <s:property value="txtRemark" /></td>
                                    <td><s:property value="txtJianChaXiangMuRemark" /></td>
								</tr>						
								</s:iterator>
				</table> <!--维修物料 end-->
			</td>
		</tr>
	</table>
</body>
</html>