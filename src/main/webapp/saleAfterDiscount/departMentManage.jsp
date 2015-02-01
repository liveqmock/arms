<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>部门管理</title>
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
			<td class="titlebg"><span>系统设置</span> <span class="titleSpan">(部门管理)</span>
			</td>
		</tr>
	</table>
	<form name="fmSearch" method="post" id="fmSearch">
		<table id="searchPanel" class="searchPanel" style="display: none;">
			<tr>
				<td>部门编号:</td>
				<td><input name="departCode" type="text" maxlength="20"
					id="departCode" /></td>
				<td>部门名称:</td>
				<td><input name="departName" type="text" maxlength="60"
					id="departName" /></td>
				<td><a id="lnkSearch" class="easyui-linkbutton"
					href="javascript:doSearch()">部门查询</a>&nbsp;&nbsp;&nbsp;<a
					id="lnkSearch" class="easyui-linkbutton"
					href="javascript:clearSearchFrm()">清空查询</a></td>
			</tr>
		</table>
	</form>

	<table id="mydg" class="easyui-datagrid"
		data-options="url:'queryDepartMent.action',
						   rownumbers:true,
						   singleSelect:true,
						   toolbar:'#toolbar',
						   pagination:true">
		<thead>
			<tr>
				<th data-options="field:'departCode',width:150,sortable:true">部门编号</th>
				<th data-options="field:'departName',width:150,sortable:true">部门名称</th>
				<th data-options="field:'departDesc',width:300,sortable:true">部门描述</th>
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
		style="width: 700px; height: 300px; padding: 10px 20px;">
		<form name="fm" method="post" id="fm">
			<table border="0" cellpadding="0" cellspacing="0" width="100%;">
		  		<tr>
					<td>部门代码:</td>
					<td><input name="departCode" type="text" maxlength="15"
						id="departCode" style="width: 250px;" class="easyui-validatebox"
						data-options="required:true,missingMessage:'此项为必填项'" /></td>
				</tr>
				<tr>
					<td>部门名称:</td>
					<td><input name="departName" type="text" maxlength="15"
						id="departName" style="width: 250px; class=""
						data-options="required:true,missingMessage:'此项为必填项'" /></td>
				</tr>
				<tr>
					<td>部门描述:</td>
					<td><input name="departDesc" type="text" maxlength="15"
						id="departDesc" style="width: 250px;" /></td>
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
		$('#mydlg').dialog('open').dialog('setTitle', '添加部门信息');
		$('#fm').form('clear');
		url = 'insertDepartMent.action';
	}
	function editItem(clickevent) {
		var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
		if (row) {
			$('#mydlg').dialog('open').dialog('setTitle', '修改部门信息');
			$('#fm').form('load', row);
			url = 'updateDepartMent.action?departId=' + row.departId;
		}
	}
	function deleteItem(clickevent) {
		var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
		if (row) {
			$.messager.confirm('确认', '确定要删除选中部门信息吗?', function(r) {
				if (r) {
					$.post('deleteDepartMent.action', {
						"departId" : row.departId
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
			url : "DepartMentSearch.action",
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