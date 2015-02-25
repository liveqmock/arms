<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>用户组和权限</title>
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
			<td class="titlebg"><span>系统设置</span> <span class="titleSpan">(用户组和权限)</span>
			</td>
		</tr>
	</table>

	<table id="mydg" class="easyui-datagrid"
		data-options="url:'queryGroup.action',
						   rownumbers:true,
						   singleSelect:true,
						   toolbar:'#toolbar',
						   pagination:true">
		<thead>
			<tr>
				<th width="300" data-options="field:'groupName'">名称</th>
				<th field="action" width="100" align="center"
					formatter="formatAction">操作</th>
			</tr>
		</thead>
	</table>
	<div id="toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="addItem()">新增</a>
	</div>
	<div id="mydlg" class="easyui-dialog" closed="true"
		style="width: 700px; height: 300px; padding: 10px 20px;">
		<form name="fm" method="post" id="fm">
			<table border="0" cellpadding="0" cellspacing="0" width="100%;">
				<tr>
					<td width="50" align="right">名称：</td>
					<td><input name="groupName" type="text" maxlength="15" style="width: 250px;"
						id="groupName" class="easyui-textbox"
						data-options="required:true" /></td>
				</tr>
				<tr>
					<td colspan="2">权限信息</td>
				</tr>
				<tr>
					<td colspan="2" align="center"><br /> 
					  <a onclick="saveItem()"
						id="btnSave" class="easyui-linkbutton" href="javascript:void(0)">保存组名</a>&nbsp;&nbsp;&nbsp;<a
						onclick="javascript:$('#mydlg').dialog('close')" id="btnSave"
						class="easyui-linkbutton" href="javascript:void(0)">取消</a></td>
				</tr>
			</table>
		</form>
	</div>

<script type="text/javascript">
	var url;
	function addItem() {
		$('#mydlg').dialog('open').dialog('setTitle', '添加用户组');
		$('#fm').form('clear');
		url = 'insertGroup.action';
	}
	function editItem(clickevent) {
		var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
		if (row) {
			$('#mydlg').dialog('open').dialog('setTitle', '修改用户组信息');
			$('#fm').form('load', row);
			url = 'updateGroup.action?groupId=' + row.groupId;
		}
	}
	function deleteItem(clickevent) {
		var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
		if (row) {
			$.messager.confirm('确认', '确定要删除选中用户组信息吗?', function(r) {
				if (r) {
					$.post('deleteGroup.action', {
						"groupId" : row.groupId
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

	function formatAction(value, row, index) {
		return '<a href="javascript:void(0)" onclick="editItem(this)">修改</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" onclick="deleteItem(this)">删除</a>';
	}
</script>
</body>
</html>