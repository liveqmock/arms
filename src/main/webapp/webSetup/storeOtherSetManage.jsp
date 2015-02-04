<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>仓库管理</title>
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
<body>
	<table border="0" style="width: 100%;">
		<tr>
			<td class="titlebg"><span>基础设置</span> <span class="titleSpan">(仓库管理-新车,售后)</span>
			</td>
		</tr>
	</table>
	<form name="fmSearch" method="post" id="fmSearch">
		<table id="searchPanel" class="searchPanel" style="display: none;">
			<tr>
			<td>仓库名:</td>
				<td><input name="txtStoreName" type="text" maxlength="10"
					id="txtStoreName" style="width: 120px;" /></td>
				<td><a id="lnkSearch" class="easyui-linkbutton"
					href="javascript:doSearch()">查询项目</a>&nbsp;&nbsp;&nbsp;<a
					id="lnkSearch" class="easyui-linkbutton"
					href="javascript:clearSearchFrm()">清空查询</a></td>
			</tr>
		</table>
	</form>
	<table id="mydg" class="easyui-datagrid"
		data-options="url:'queryStore.action',
						   rownumbers:true,
						   singleSelect:true,
						   toolbar:'#toolbar',
						   pagination:true">
		<thead>
			<tr>
				<th width="80" data-options="field:'txtStoreBianHao'">仓库编号</th>
				<th width="150" data-options="field:'txtStoreName'">仓库名</th>
				<th width="150" data-options="field:'txtRemarks'">备注</th>
				<th field="action" width="100" align="center"
					formatter="formatAction">操作</th>
			</tr>
		</thead>
	</table>
	<div id="toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="addItem()">新增</a> <a
			href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-search" plain="true" onclick="toggleSearchPanel()">查询</a>
	</div>
	<div id="mydlg" class="easyui-dialog" closed="true"
		style="width: 450px; height: 300px; padding: 10px 20px;">
		<form name="fm" method="post" id="fm">
			<table border="0">
				<tr>
					<td align="right"><span class="requireSpan">*&nbsp;</span>仓库编号:</td>
					<td><input name="txtStoreBianHao" type="text" maxlength="7"
						class="easyui-validatebox"
						data-options="required:true,missingMessage:'仓库编号为必填项'"
						id="txtStoreBianHao" style="width: 150px;" /></td>
				</tr>
				<tr>
					<td align="right"><span class="requireSpan">*&nbsp;</span>仓库名称:</td>
					<td><input name="txtStoreName" type="text" maxlength="10"
						class="easyui-validatebox"
						data-options="required:true,missingMessage:'仓库名称为必填项'"
						id="txtStoreName" style="width: 250px;" /></td>
				</tr>
				<tr>
					<td align="right">备注:</td>
					<td><input class="easyui-textbox"
						name="txtRemarks" type="text" maxlength="60" id="txtRemarks"
						style="width: 250px;" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><br /> <a onclick="saveItem()"
						id="btnSave" class="easyui-linkbutton" href="javascript:void(0)">保存</a>&nbsp;&nbsp;&nbsp;<a
						onclick="javascript:$('#mydlg').dialog('close')" id="btnSave"
						class="easyui-linkbutton" href="javascript:void(0)">取消</a></td>
				</tr>
			</table>
		</form>
	</div>
	
	<script type="text/javascript">
		var url;
		function addItem() {
			$('#mydlg').dialog('open').dialog('setTitle', '添加仓库信息');
			$('#fm').form('clear');
			url = 'insertStore.action';
		}
		function editItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$('#mydlg').dialog('open').dialog('setTitle', '修改仓库信息');
				$('#fm').form('load', row);
				url = 'updateStore.action?StoreId=' + row.storeId;
			}
		}
		function deleteItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$.messager.confirm('确认', '确定要删除选中仓库信息吗?', function(r) {
					if (r) {
						$.post('deleteStore.action', {
							"StoreId" : row.storeId
						}, function(result) {
							if (result.errorMsg) {
								$.messager.alert('出错啦', result.errorMsg);
							} else {
								$('#mydg').datagrid('reload'); // reload data
							}
						}, 'json');
					}
				});
			}
		}
		function saveItem() {
			$('#fm').form('submit', {
				url : url,
				onSubmit : function() {
					return $(this).form('validate');
				},
				success : function(result) {
					var result = eval('(' + result + ')');
					if (result.errorMsg) {
						$.messager.alert('出错啦', result.errorMsg);
					} else {
						$('#mydlg').dialog('close'); // close the dialog
						$('#mydg').datagrid('reload'); // reload data
					}
				}
			});
		}

		function doSearch() {
			$("#fmSearch").form('submit', {
				url : "StoreSearch.action",
				success : function(jsonStr) {
					$('#mydg').datagrid('loadData', $.parseJSON(jsonStr));
				}
			});
		}

		function clearSearchFrm() {
			$("#fmSearch").form('clear');
			doSearch();
		}

		function formatAction(value, row, index) {
			return '<a href="javascript:void(0)" onclick="editItem(this)">修改</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" onclick="deleteItem(this)">删除</a>';
		}
	</script>

</body>
</html>