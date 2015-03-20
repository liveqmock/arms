<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>车辆检查项目管理</title>
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
			<td class="titlebg"><span>基础设置</span> <span class="titleSpan">(车辆检查项目管理)</span>
			</td>
		</tr>
	</table>
	<form name="fmSearch" method="post" id="fmSearch" class="searchform">
		<table id="searchPanel" class="searchPanel" style="display: block;">
			<tr>
				<td>检查项目所属类别:</td>
				<td><input name="txtJianChaSort" id="txtJianChaSort"
					class="easyui-combobox"
					data-options="editable:false,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/jianChaXiangMuSortOption.action'"
					style="width: 250px;" /></td>		
				<td><a id="lnkSearch" class="easyui-linkbutton"
					href="javascript:doSearch()">查询项目</a>&nbsp;&nbsp;&nbsp;<a
					id="lnkSearch" class="easyui-linkbutton"
					href="javascript:clearSearchFrm()">清空查询</a></td>
			</tr>
		</table>
	</form>
	<table id="mydg" class="easyui-datagrid"
		data-options="url:'queryJianChaXiangMu.action',
						   rownumbers:true,
						   singleSelect:true,
						   toolbar:'#toolbar',
						   pagination:true">
		<thead>
			<tr>
				<!--<th width="100" data-options="field:'txtSuppBianHao'" sortable="true">供应商编号</th>-->
				<th width="200" data-options="field:'txtJianChaSort'">项目所属类别</th>
				<th width="40" data-options="field:'txtXuHao'">序号</th>
				<th width="200" data-options="field:'txtJianChaName'">项目名称</th>
				<th width="150" data-options="field:'txtJianChaLiCheng'">项目里程周期</th>
				<th width="100" data-options="field:'txtJianChaDate'">项目时间周期</th>
				<th width="950" data-options="field:'txtXiangMuRemark'">保养更换周期说明</th>
				<th width="100" field="action" align="center"
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
		style="width: 450px; height: 450px; padding: 10px 20px;">
		<form name="fm" method="post" id="fm">
			<table border="0">
				<tr>
					<td><span class="requireSpan">*&nbsp;</span>检查项目所属类别:</td>
					<td><input name="txtJianChaSort" id="txtJianChaSort"
						class="easyui-combobox"
						data-options="editable:false,required:true,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/jianChaXiangMuSortOption.action'"
						style="width: 250px;" /></td>
				</tr>
				<tr>
					<td><span class="requireSpan">*&nbsp;</span>项目序号:</td>
					<td><input class="easyui-numberbox" data-options="required:true"
						name="txtXuHao" type="text" maxlength="60"
						id="txtXuHao" style="width: 250px;" /></td>
				</tr>
				<tr>
					<td><span class="requireSpan">*&nbsp;</span>检查项目名称:</td>
					<td><input class="easyui-textbox" data-options="required:true"
						name="txtJianChaName" type="text" maxlength="60"
						id="txtJianChaName" style="width: 250px;" /></td>
				</tr>
				<tr>
					<td><span class="requireSpan">&nbsp;</span>项目里程周期:</td>
					<td><input class="easyui-numberbox" name="txtJianChaLiCheng"
						type="text" maxlength="60" id="txtJianChaLiCheng"
						style="width: 200px;" />&nbsp;KM</td>
				</tr>
				<tr>
					<td><span class="requireSpan">&nbsp;</span>项目时间周期:</td>
					<td><input class="easyui-numberbox" name="txtJianChaDate"
						type="text" maxlength="60" id="txtJianChaDate"
						style="width: 200px;" />&nbsp;个月</td>
				</tr>
				<tr>
					<td><span class="requireSpan">&nbsp;</span>项目说明:</td>
					<td><input class="easyui-textbox" name="txtXiangMuRemark" type="text"
						 id="txtXiangMuRemark" style="width: 250px;" /></td>
				</tr>
				<td colspan="8" align="center"><br /> <a onclick="saveItem()"
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
			$('#mydlg').dialog('open').dialog('setTitle', '添加检查项目信息');
			$('#fm').form('clear');
			url = 'insertJianChaXiangMu.action';
		}
		function editItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$('#mydlg').dialog('open').dialog('setTitle', '修改检查项目信息');
				$('#fm').form('load', row);
				url = 'updateJianChaXiangMu.action?txtJianChaGuId='
						+ row.txtJianChaGuId;
			}
		}
		function deleteItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$.messager.confirm('确认', '确定要删除选中检查项目信息吗?', function(r) {
					if (r) {
						$.post('deleteJianChaXiangMu.action', {
							"txtJianChaGuId" : row.txtJianChaGuId
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
		var myTable = $('#mydg');	
		$(function() {
			myTable.datagrid({
				onLoadSuccess: function (data) {
					mergeGridColCells(myTable, "txtJianChaSort");
				}
			});
		});
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
				url : "JianChaXiangMuSearch.action",
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