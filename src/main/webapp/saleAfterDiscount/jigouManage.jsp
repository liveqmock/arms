<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>机构管理</title>
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
			<td class="titlebg"><span>系统设置</span> <span class="titleSpan">(机构设置管理)</span>
			</td>
		</tr>
	</table>
	<form name="fmSearch" method="post" id="fmSearch">
		<table id="searchPanel" class="searchPanel" style="display: none;">
			<tr>
				<td>机构代码:</td>
				<td><input name="jigouCode" type="text" maxlength="20"
					id="jigouCode" /></td>
				<td>机构名称:</td>
				<td><input name="jigouName" type="text" maxlength="60"
					id="jigouName" /></td>
				<td><a id="lnkSearch" class="easyui-linkbutton"
					href="javascript:doSearch()">机构查询</a>&nbsp;&nbsp;&nbsp;<a
					id="lnkSearch" class="easyui-linkbutton"
					href="javascript:clearSearchFrm()">清空查询</a></td>
			</tr>
		</table>
	</form>

	<table id="mydg" class="easyui-datagrid"
		data-options="url:'queryJiGou.action',
						   rownumbers:true,
						   singleSelect:true,
						   toolbar:'#toolbar',
						   pagination:true">
		<thead>
			<tr>
				<th data-options="field:'jigouCode',width:300" hidden="true">机构代码</th>
				<th data-options="field:'jigouName',width:300,sortable:true">机构名称</th>
				<th data-options="field:'jigouAddr',width:300,sortable:true">机构地址</th>
				<th data-options="field:'jigouDesc',width:300">机构描述</th>
				<th data-options="field:'jigouTel1',width:80">机构电话1</th>
				<th data-options="field:'jigouTel2',width:80">机构电话2</th>
				<th data-options="field:'jigouFax',width:80">机构传真</th>
				<th data-options="field:'jingpinFeilv',width:80">精品费率</th>
				<th data-options="field:'jinpinMaoLiLv',width:80">精品毛利率</th>
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
					<td>机构代码:</td>
					<td><input name="jigouCode" type="text" maxlength="15"
						id="jigouCode" style="width: 250px;" class="easyui-validatebox"
						data-options="required:true,missingMessage:'此项为必填项'" /></td>
					<td>机构名称:</td>
					<td><input name="jigouName" type="text" maxlength="15"
						id="jigouName" style="width: 250px;" /></td>
				</tr>
				<tr>
					<td>机构地址:</td>
					<td><input name="jigouAddr" type="text" maxlength="15"
						id="jigouAddr" style="width: 250px;class="easyui-validatebox"
						data-options="required:true,missingMessage:'此项为必填项'" /></td>
					<td>机构描述:</td>
					<td><input name="jigouDesc" type="text" maxlength="15"
						id="jigouDesc" style="width: 250px;" /></td>
				</tr>
				<tr>
					<td>机构电话1:</td>
					<td><input name="jigouTel1" type="text" maxlength="15"
						id="jigouTel1" style="width: 250px;class="easyui-validatebox"
						data-options="required:true,missingMessage:'此项为必填项'" /></td>
					<td>机构电话2:</td>
					<td><input name="jigouTel2" type="text" maxlength="15"
						id="jigouTel2" style="width: 250px;" /></td>
				</tr>
				<tr>
					<td>机构传真:</td>
					<td><input name="jigouFax" type="text" maxlength="15"
						id="jigouFax" style="width: 250px;" /></td>
					<td>精品费率:</td>
					<td><input name="jingpinFeilv" type="text" maxlength="15"
						id="jingpinFeilv" style="width: 250px;" /></td>
				</tr>
				<tr>
					<td>精品毛利率:</td>
					<td><input name="jinpinMaoLiLv" type="text" maxlength="15"
						id="jinpinMaoLiLv" style="width: 250px;" /></td>
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
		$('#mydlg').dialog('open').dialog('setTitle', '添加机构信息');
		$('#fm').form('clear');
		url = 'insertJiGou.action';
	}
	function editItem(clickevent) {
		var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
		if (row) {
			$('#mydlg').dialog('open').dialog('setTitle', '修改机构信息');
			$('#fm').form('load', row);
			url = 'updateJiGou.action?id=' + row.id;
		}
	}
	function deleteItem(clickevent) {
		var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
		if (row) {
			$.messager.confirm('确认', '确定要删除选中机构信息吗?', function(r) {
				if (r) {
					$.post('deleteJiGou.action', {
						"id" : row.id
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
			url : "JiGouSearch.action",
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