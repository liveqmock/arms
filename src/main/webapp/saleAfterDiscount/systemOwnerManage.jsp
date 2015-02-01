<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>系统用户管理</title>
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
			<td class="titlebg"><span>系统设置</span> <span class="titleSpan">(系统用户管理)</span>
			</td>
		</tr>
	</table>
	<form name="fmSearch" method="post" id="fmSearch">
		<table id="searchPanel" class="searchPanel" style="display: none;">
			<tr>
				<td>按用户登录名:</td>
				<td><input name="loginName" type="text" maxlength="20"
					id="loginName" /></td>
				<td>按显示的用户名称:</td>
				<td><input name="displayName" type="text" maxlength="60"
					id="displayName" /></td>
				<td><a id="lnkSearch" class="easyui-linkbutton"
					href="javascript:doSearch()">用户查询</a>&nbsp;&nbsp;&nbsp;<a
					id="lnkSearch" class="easyui-linkbutton"
					href="javascript:clearSearchFrm()">清空查询</a></td>
			</tr>
		</table>
	</form>

	<table id="mydg" class="easyui-datagrid"
		data-options="url:'querySystemOwner.action',
						   rownumbers:true,
						   singleSelect:true,
						   toolbar:'#toolbar',
						   pagination:true">
		<thead>
			<tr>
				<th data-options="field:'loginName',width:180,sortable:true">用户登录名</th>
				<th data-options="field:'displayName',width:180,sortable:true">显示的用户名称</th>
				<th data-options="field:'password',width:180,sortable:true">用户密码</th>
				<!--  <th data-options="field:'lastLoginTime',width:300,sortable:true">上次登录时间</th>-->
				<th data-options="field:'isLimit',width:100,sortable:true">是否受权限限制</th>
				<th data-options="field:'jigouName',width:220,sortable:true">所属机构</th>
				<th data-options="field:'departName',width:220,sortable:true">所属部门</th>
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
					<td>用户登录名:</td>
					<td><input name="loginName" type="text" maxlength="15"
						id="loginName" style="width: 250px;" class="easyui-validatebox"
						data-options="required:true,missingMessage:'此项为必填项'" /></td>
				</tr>
				<tr>
					<td>显示的用户名称:</td>
					<td><input name="displayName" type="text" maxlength="15"
						id="displayName" style="width: 250px;" class="easyui-validatebox"
						data-options="required:true,missingMessage:'此项为必填项'" /></td>
				</tr>
				<tr>
					<td>用户密码:</td>
					<td><input name="password" type="text" maxlength="15"
						id="password" style="width: 250px;" class="easyui-validatebox"
						data-options="required:true,missingMessage:'此项为必填项'" /></td>
				</tr>
				<!-- 
				<tr>
					<td>上次登录时间:</td>
					<td><input name="lastLoginTime" type="text" maxlength="15"
						id="lastLoginTime" style="width: 250px;" class="easyui-validatebox"
						data-options="required:true,missingMessage:'此项为必填项'" /></td>
				</tr>
				 -->
				<tr>
					<td>是否受权限限制:</td>
					<td><input name="isLimit" type="text" maxlength="15"
						id="isLimit" style="width: 250px;" /></td>
				</tr>
				<tr>
					<td>所属机构</td>
					<td><select id="jigouName" name="jigouName"
						style="width: 250px;">
							<s:iterator value="JiGouList">
								<option value="<s:property value='jigouName' />"><s:property
										value='jigouName' /></option>
							</s:iterator>
					</select></td>
				</tr>
				<tr>
					<td>所属部门</td>
					<td><select id="departName" name="departName"
						style="width: 250px;">
							<s:iterator value="DepartMentList">
								<option value="<s:property value='departName' />"><s:property
										value='departName' /></option>
							</s:iterator>
					</select></td>
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
			$('#mydlg').dialog('open').dialog('setTitle', '添加系统用户信息');
			$('#fm').form('clear');
			url = 'insertSystemOwner.action';
		}
		function editItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$('#mydlg').dialog('open').dialog('setTitle', '修改系统用户信息');
				$('#fm').form('load', row);
				url = 'updateSystemOwner.action?userId=' + row.userId;
			}
		}
		function deleteItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$.messager.confirm('确认', '确定要删除选中部门信息吗?', function(r) {
					if (r) {
						$.post('systemOwnerManange.action', {
							"userId" : row.departId
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
				url : "systemOwnerSearch.action",
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