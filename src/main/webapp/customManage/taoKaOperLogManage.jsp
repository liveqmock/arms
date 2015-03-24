<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>套卡日志查询</title>
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
<link rel="shortcut icon" href="../image/SyAuto_<s:property value='shop.companyFlag' />.ico" type="image/x-icon" />
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
			<td class="titlebg"><span>客户管理</span> <span class="titleSpan">(套卡日志)</span>
			</td>
		</tr>
	</table>
	<form name="fmSearch" method="post" id="fmSearch" class="searchform">
    	<table id="searchPanel" class="searchPanel">
			<tr>
				<td>日志时间:</td>
				<td><input name="txtLogDateBegin" type="text" id="txtLogDateBegin"
					class="easyui-datebox" style="width: 100px;" /></td>
				<td>至</td>
				<td><input name="txtLogDateEnd" type="text"
					id="txtLogDateEnd" class="easyui-datebox"
					style="width: 100px;" /></td>
				<td>会员账号:</td>
				<td><input name="txtCheZhuTel" id="txtCheZhuTel" type="text" class="easyui-textbox" maxlength="20" style="width: 100px;" /></td>
				<td colspan="3" style="text-align: center;"><a class="easyui-linkbutton" href="javascript:doSearch()">查询日志</a></td>
				<td><a class="easyui-linkbutton" href="javascript:clearSearchFrm()">清空查询</a></td>
			</tr>
		</table>
	</form>
	<table id="mydg" class="easyui-datagrid"
		data-options="url:'queryTaoKaOperLog.action',
						   rownumbers:true,
						   singleSelect:true,
						   toolbar:'#toolbar',
						   pagination:true">
		<thead>
			<tr>
				<th width="150" data-options="field:'txtAction'">日志动作</th>
				<th width="150" data-options="field:'txtTaoKaSort'">套卡类型</th>
				<th width="100" data-options="field:'txtXiangMuName'">套卡项目名称</th>
				<th width="100" data-options="field:'txtRestTimes'">剩余次数</th>
				<th width="100" data-options="field:'txtNewRestTimes'">新的剩余次数</th>
				<th width="150" data-options="field:'txtCheZhuTel'">会员账号</th>
				<th width="200" data-options="field:'txtLogDate'">日志时间</th>
			</tr>
		</thead>
	</table>
	<script type="text/javascript">
		var url;
		function doSearch() {
			$("#fmSearch").form('submit', {
				url : "queryTaoKaOperLog.action",
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