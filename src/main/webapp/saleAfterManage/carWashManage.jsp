<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>用户接待</title>
<link rel="stylesheet" type="text/css"
	href="../style/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="../style/themes/icon.css" />
<script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script>
<script src="../js/frame/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>
<script src="../js/frame/underscore-min.js" type="text/javascript"></script>
<script src="../js/common.js" type="text/javascript"></script>
<script src="../js/customcommon.js" type="text/javascript"></script>
<link href="../style/common.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<style type="text/css">
td {
	height: 25px;
}
</style>
</head>
<body>
	<table border="0" style="width: 100%;">
		<tr>
			<td class="titlebg"><span>用户接待</span> <span class="titleSpan">(洗车接待)</span>
			</td>
		</tr>
	</table>

<table id="mydg" class="easyui-datagrid"
		data-options="url:'queryCarWash.action',rownumbers:true,singleSelect:true,toolbar:'#toolbar',pagination:true,onDblClickRow:showCarWash">
		<thead>
			<tr>
				<th width="150" data-options="field:'txtRuChangDate'">入厂时间</th>
				<th width="150" data-options="field:'txtChePaiHao'">车牌号</th>
				<th width="150" data-options="field:'ddlCheLiangCheXi'">车型</th>
				<th width="150" data-options="field:'txtCheZhuName'">车主名</th>
				<th width="200" data-options="field:'txtCheZhuTel'">车主电话</th>
				<th width="200" data-options="field:'ddlZhiFuFangShi'">支付方式</th>
				<th width="200" data-options="field:'ddlXiCheLeiXing'">洗车类型</th>
				<th width="200" data-options="field:'txtFeiYong'">费用</th>
				<th width="200" data-options="field:'txtStatus'">状态</th>
			</tr>
		</thead>
	</table>
	<div id="toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="openCarWashDialog('newCarWash')">新增洗车信息</a></div>

<script type="text/javascript">
		var myTable = $('#mydg');		
		function openCarWashDialog(action, txtGuid) {
			var sURL = "carWashInfo.action?action="+action;
			if(arguments.length == 2){
				sURL += "&txtGuid="	+ txtGuid + "&d=" + new Date();
			}
			var sFeatures = "dialogWidth:700px;dialogHeight:500px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
			window.showModalDialog(sURL, window, sFeatures);
			myTable.datagrid('reload');
		}		

		function showCarWash(index) {
			var row = $('#mydg').datagrid('getRows')[index];
			openCarWashDialog('editCarWash', row.txtGuid);
		}
	</script>
</body>
</html>