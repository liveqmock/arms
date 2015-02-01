<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>维修出退库查询</title>
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
</head>
<style type="text/css">
td {
	height: 25px;
}
</style>
<style type="text/css">
td {
	height: 25px;
}
</style>
<body>
	<table border="0" style="width: 100%;">
		<tr>
			<td class="titlebg"><span>配件管理</span> <span class="titleSpan">(维修工单列表)</span>
			</td>
		</tr>
	</table>
	<form name="fmSearch" method="post" id="fmSearch">
		<table id="searchPanel" class="searchPanel">
			<tr>
				<td>工单号:</td>
				<td><input name="txtBillNo" type="text"
					id="txtBillNo" style="width: 135px;" /></td>
				<td>协议单号:</td>
				<td><input name="txtXieYiBillNo" type="text"
					id="txtXieYiBillNo" style="width: 135px;" /></td>
				<td>车牌号:</td>
				<td><input name="txtChePaiHao" type="text" id="txtChePaiHao"
					style="width: 135px;" /></td>
				<td>客户名称:</td>
				<td><input name="txtKeHuName" type="text" id="txtKeHuName"
					style="width: 135px;" /></td>
				<td>联系手机:</td>
				<td><input name="txtLianXiMob" type="text" id="txtLianXiMob"
					style="width: 135px;" /></td>
			</tr>
			<tr>
				<td>入厂时间:</td>
				<td><input name="txtRuChangDateStart" type="text"
					id="txtRuChangDateStart" class="inputCss easyui-datebox"
					style="width: 135px;" /></td>
				<td>至:</td>
				<td><input name="txtRuChangDateEnd" type="text" maxlength="30"
					id="txtRuChangDateEnd" class="inputCss easyui-datebox"
					style="width: 135px;" /></td>
				<td colspan="2" style="text-align: center;"><a id="lnkSearch"
					class="easyui-linkbutton" href="javascript:doSearch()">查询项目</a></td>
				<td><a id="lnkSearch" class="easyui-linkbutton"
					href="javascript:clearSearchFrm()">清空查询</a></td>
			</tr>
		</table>
	</form>
	<table id="mydg" class="easyui-datagrid"
		data-options="url:'queryWeiXiuChuTuiKu.action',
						   rownumbers:true,
						   singleSelect:true,
						   toolbar:'#toolbar',
						   pagination:true">
		<thead>
			<tr>
				<th data-options="field:'txtBillNo',width:150">工单号</th>
				<th data-options="field:'txtXieYiBillNo',width:80">协议单号</th>
				<th data-options="field:'txtChePaiHao',width:80">车牌号</th>
				<th data-options="field:'txtCheJiaHao',width:150">车架号</th>
				<th data-options="field:'txtLianXiRen',width:80">联系人</th>
				<th data-options="field:'txtLianXiMob',width:150">手机</th>
				<th data-options="field:'txtCarModel',width:150">车系</th>
				<th data-options="field:'txtWeiXiuType',width:80">维修类型</th>
				<th data-options="field:'txtBillNoStatus',width:80">单据状态</th>
				<th data-options="field:'txtRuChangDateStart',width:80">入厂时间</th>
				<th data-options="field:'txtChuChangDate',width:80">出厂时间</th>
			</tr>
		</thead>
	</table>
	<script type="text/javascript">
		var url;
		function doSearch() {
			$("#fmSearch").form('submit', {
				url : "queryWeiXiuChuTuiKu.action",
				success : function(jsonStr) {
					$('#mydg').datagrid('loadData', $.parseJSON(jsonStr));
				}
			});
		}

		function clearSearchFrm() {
			$("#fmSearch").form('clear');
			doSearch();
		}
	</script>
</body>
</html>