<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>品牌车型</title>
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
			<td class="titlebg"><span>基础设置</span> <span class="titleSpan">(品牌车型)</span>
			</td>
		</tr>
	</table>
	<form name="fmSearch" method="post" id="fmSearch">
		<table id="searchPanel" class="searchPanel">
			<tr>
				<td>品牌名称:</td>
				<td><input name="brandName" type="text" maxlength="20"
					id="brandName" style="width: 120px;" /></td>
				<td>车型名称:</td>
				<td><input name="modelName" type="text" maxlength="20"
					id="modelName" style="width: 120px;" /></td>
				<td><a id="lnkSearch" class="easyui-linkbutton"
					href="javascript:doSearch()">查询</a>&nbsp;&nbsp;&nbsp;<a
					id="lnkSearch" class="easyui-linkbutton"
					href="javascript:clearSearchFrm()">清空查询</a></td>
			</tr>
		</table>
	</form>
	<table id="mydg" class="easyui-datagrid"
		data-options="url:'queryCarModel.action',
						   rownumbers:true,
						   singleSelect:true,
						   toolbar:'#toolbar',
						   pagination:true">
		<thead>
			<tr>
				<th width="100" data-options="field:'brandName'">品牌</th>
				<th width="200" data-options="field:'modelName'">车型名</th>
				<th width="100" data-options="field:'brandLogo'">品牌Logo</th>
				<th width="150" field="action" align="center"
					formatter="formatAction">操作</th>
			</tr>
		</thead>
	</table>
	<div id="toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="addItem('carbrand')">新增品牌</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="addItem('carmodel')">新增车型</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-remove" plain="true" onclick="deleteItem('carbrand')">删除品牌</a>
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-edit" plain="true" onclick="editItem('carbrand')">修改品牌</a>
	</div>
	<div id="mydlg" class="easyui-dialog" closed="true"
		style="width: 450px; height: 300px; padding: 10px 20px;">
		<form name="fm" method="post" id="fm">
			<table border="0">
				<tr>
					<td><span class="requireSpan">*&nbsp;</span>品牌:</td>
					<td><input name="brandId" id="brandId" class="easyui-combobox"
						data-options="editable:true,required:true,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data//>getCarBrandOption.action'" /></td>
				</tr>
				<tr>
					<td align="right"><span class="requireSpan">*&nbsp;</span>名称:</td>
					<td><input class="easyui-textbox" name="modelName" type="text"
						id="modelName" data-options="required:true" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><br /> <a
						onclick="saveItem('carmodel')" id="btnSave"
						class="easyui-linkbutton" href="javascript:void(0)">保存</a>&nbsp;&nbsp;&nbsp;<a
						onclick="javascript:$('#mydlg').dialog('close')" id="btnSave"
						class="easyui-linkbutton" href="javascript:void(0)">取消</a></td>
				</tr>
			</table>
		</form>
	</div>
	<div id="mydlg2" class="easyui-dialog" closed="true"
		style="width: 450px; height: 300px; padding: 10px 20px;">
		<form name="fm2" method="post" id="fm2">
			<table border="0">
                <tr>
					<td align="right"><span class="requireSpan">*&nbsp;</span>名称:</td>
					<td><input class="easyui-textbox" name="brandName" type="text"
						id="brandName" data-options="required:true" /></td>
				</tr>
				<tr>
					<td align="right">Logo:</td>
					<td><input class="easyui-textbox" name="brandLogo" type="text"
						id="brandLogo" /></td>
				</tr>			
				<tr>
					<td colspan="2" align="center"><br /> <a
						onclick="saveItem('carbrand')" id="btnSave"
						class="easyui-linkbutton" href="javascript:void(0)">保存</a>&nbsp;&nbsp;&nbsp;<a
						onclick="javascript:$('#mydlg2').dialog('close')" id="btnSave"
						class="easyui-linkbutton" href="javascript:void(0)">取消</a></td>
				</tr>
			</table>
		</form>
	</div>
	<script type="text/javascript">
		var url;
		function addItem(value) {
			if (value == 'carmodel') {
				$('#mydlg').dialog('open').dialog('setTitle', '添加车型信息');
				$('#fm').form('clear');
				$('#brandId').combobox("reload");
				url = 'insertCarModel.action';
			}
			if (value == 'carbrand') {
				$('#mydlg2').dialog('open').dialog('setTitle', '添加车辆品牌信息');
				$('#fm2').form('clear');
				url = 'insertCarBrand.action';
			}

		}
		function editItem(clickevent) {
			if (clickevent == 'carbrand') {
				var row = $('#mydg').datagrid('getSelected');
				if (row) {
					$('#mydlg2').dialog('open').dialog('setTitle', '修改车辆品牌信息');
					$('#fm2').form('load', row);
					url = 'updateCarBrand.action?brandId=' + row.brandId;
				}else{
					$.messager.alert('提示', "请先选中包含目标品牌的行");
				}
			} else {
				var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
				if (row) {
					$('#mydlg').dialog('open').dialog('setTitle', '修改车型信息');
					$('#fm').form('load', row);
					$('#brandId').combobox("reload");
					url = 'updateCarModel.action?modelCode=' + row.modelCode;
				}
			}
		}
		function deleteItem(clickevent) {
			if (clickevent == 'carbrand') {
				var row = $('#mydg').datagrid('getSelected');
				if (row) {
					$.messager.confirm('确认', '确定要删除选中车辆品牌信息吗?', function(r) {
						if (r) {
							$.post('deleteCarBrand.action', {
								"brandId" : row.brandId
							}, function(result) {
								if (result.errorMsg) {
									$.messager.alert('出错啦', result.errorMsg);
								} else {
									$('#mydg').datagrid('reload'); // reload data
								}
							}, 'json');
						}
					});
				}else{
					$.messager.alert('提示', "请先选中包含目标品牌的行");
				}
			} else {
				var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
				if (row) {
					$.messager.confirm('确认', '确定要删除选中车型信息吗?', function(r) {
						if (r) {
							$.post('deleteCarModel.action', {
								"modelCode" : row.modelCode
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
		}
		function saveItem(value) {
			if (value == "carmodel") {
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
			if (value == "carbrand") {
				$('#fm2').form('submit', {
					url : url,
					onSubmit : function() {
						return $(this).form('validate');
					},
					success : function(result) {
						var result = eval('(' + result + ')');
						if (result.errorMsg) {
							$.messager.alert('出错啦', result.errorMsg);
						} else {
							$('#mydlg2').dialog('close'); // close the dialog
							$('#mydg').datagrid('reload'); // reload data
						}
					}
				});
			}
		}

		function doSearch() {
			$("#fmSearch").form('submit', {
				url : "CarModelSearch.action",
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
			return '<a href="javascript:void(0)" onclick="editItem(this)">修改车型</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" onclick="deleteItem(this)">删除车型</a>';
		}
	</script>
</body>
</html>