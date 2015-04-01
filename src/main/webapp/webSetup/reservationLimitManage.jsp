<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>客户预约参数管理</title>
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
<body>
	<table border="0" style="width: 100%;">
		<tr>
			<td class="titlebg"><span>基础设置</span> <span class="titleSpan">(客户预约参数信息管理)</span>
			</td>
		</tr>
	</table>
    <table id="mydgDefault" class="easyui-datagrid"
		data-options="url:'queryDefaultReservationLimit.action',
						   rownumbers:true,
						   singleSelect:true">
		<thead>
			<tr>
				<th width="250" data-options="field:'shopName'">店铺名称</th>
				<th width="150" data-options="field:'reservationLimit',editor:{type:'numberbox',precision:2,min:0}">默认最大指派数</th>
				<th width="200" field="action" align="center"
					formatter="formatAction">操作</th>
			</tr>
		</thead>
	</table>
    <div style="height:10px;"></div>
	<form name="fmSearch" method="post" id="fmSearch" class="searchform">
		<table id="searchPanel" class="searchPanel" style="display: block;">
			<tr>
				<td nowrap>预约日期:</td>
                <td><input name="reservationDateBegin" type="text"
                    id="reservationDateBegin" class="easyui-datebox" style="width: 120px;" /></td>
                <td nowrap><input name="reservationDateEnd" type="text"
                    id="reservationDateEnd" class="easyui-datebox" style="width: 120px;" /></td>
                <td nowrap>店铺名称:</td>
                <td><input name="shopCode" id="shopCode" class="easyui-combobox"
								data-options="editable:false,valueField:'code',textField:'name',method:'post',url:'<s:property value='basePath' />/data/shopCodeOption.action'"  /></td>
				<td><a id="lnkSearch" class="easyui-linkbutton"
					href="javascript:doSearch()">查询</a></td>
			</tr>
		</table>
	</form>
	<table id="mydg" class="easyui-datagrid"
		data-options="url:'queryReservationLimit.action',
						   rownumbers:true,
						   singleSelect:true,
						   toolbar:'#toolbar',
						   pagination:true">
		<thead>
			<tr>
				<th width="200" data-options="field:'shopName'">店铺</th>
				<th width="200" data-options="field:'reservationDate'">日期</th>
				<th width="200" data-options="field:'reservationLimit'">最大指派数</th>
				<th width="100" field="action" align="center"
					formatter="formatAction2">操作</th>
			</tr>
		</thead>
	</table>
	<div id="toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="addItem()">新增</a> 
	</div>
	<div id="mydlg" class="easyui-dialog" closed="true"
		style="width: 450px; height: 300px; padding: 10px 20px;">
		<form name="fm" method="post" id="fm">
			<table border="0">
            	<tr>
					<td>店铺名称:</td>
					<td><input name="shopCode" id="shopCode"
								class="easyui-combobox"
								data-options="editable:false,required:true,valueField:'code',textField:'name',method:'post',url:'<s:property value='basePath' />/data/shopCodeOption.action'"  style="width: 250px;"/></td>
				</tr>
				<tr>
					<td>预约日期:</td>
					<td><input name="reservationDate" type="text" maxlength="15"
						id="reservationDate" style="width: 250px;"  class="easyui-datebox"
						data-options="required:true"/></td>
				</tr>
				<tr>
					<td align="right">最大指派数:</td>
					<td><input class="easyui-numberbox"
						name="reservationLimit" type="text" data-options="required:true,min:0" id="reservationLimit"
						style="width: 250px;" /></td>
				<tr>
					<td colspan="8" align="center"><br /> <a
						onclick="saveItem()" id="btnSave" class="easyui-linkbutton"
						href="javascript:void(0)">保存</a>&nbsp;&nbsp;&nbsp;<a
						onclick="javascript:$('#mydlg').dialog('close')" id="btnSave"
						class="easyui-linkbutton" href="javascript:void(0)">取消</a></td>
				</tr>
			</table>
		</form>
	</div>
	<script type="text/javascript">
		var tableDefault = $('#mydgDefault');

		function formatAction(value, row, index) {
			if (row.editing) {
				var s = '<a href="#" onclick="saverow(this);return false;">保存修改</a>&nbsp;&nbsp;&nbsp;&nbsp;';
				var c = '<a href="#" onclick="cancelrow(this);return false;">取消修改</a>';
				return s + c;
			} else {
				var e = '<a href="#" onclick="editrow(this);return false;">编辑本行</a>&nbsp;&nbsp;&nbsp;&nbsp;';
				return e;
			}
		}
		

		function getTargetRowIndex(target) {
			return tableDefault.datagrid('getEventTargetRowIndex', target);
		}

		function editrow(target) {
			if (tableDefault.datagrid('hasEditingRow')) {
				$.messager.alert('提示', '请先处理尚未完成的编辑行信息');
			} else {
				tableDefault.datagrid('beginEdit', getTargetRowIndex(target));
			}
		}
		

		function saverow(target) {
			var rowIndex = getTargetRowIndex(target);
			if (tableDefault.datagrid('validateRow', rowIndex)) {
				tableDefault.datagrid('endEdit', rowIndex);
				var editRow = tableDefault.datagrid('getRows')[rowIndex];
				$.post("updateDefaultReservationLimit.action", {
					"shopCode" : editRow.shopCode,
					"reservationLimit" : editRow.reservationLimit
				}, function(result) {
					if (result.errorMsg) {
						$.messager.alert('出错啦', result.errorMsg);
						tableDefault.datagrid('cancelEdit', rowIndex);
					} else {
						tableDefault.datagrid('reload');
					}
				}, 'json');
			} else {
				$.messager.alert('提示', '请先按照提示填写行信息');
			}
		}

		function cancelrow(target) {
			tableDefault.datagrid('cancelEdit', getTargetRowIndex(target));
		}
		
		

		function formatAction2(value, row, index) {
			return '<a href="javascript:void(0)" onclick="editItem(this)">修改</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" onclick="deleteItem(this)">删除</a>';
		}
	
		var url;
		function addItem() {
			$('#mydlg').dialog('open').dialog('setTitle', '添加客户预约参数信息');
			$('#fm').form('clear');
			url = 'insertReservationLimit.action';
		}
		function editItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$('#mydlg').dialog('open').dialog('setTitle', '修改客户预约参数信息');
				$('#fm').form('load', row);
				url = 'updateReservationLimit.action?txtGuid='
						+ row.txtGuid;
			}
		}
		function deleteItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$.messager.confirm('确认', '确定要删除选中客户预约参数信息吗?', function(r) {
					if (r) {
						$.post('deleteReservationLimit.action', {
							"txtGuid" : row.txtGuid
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
				url : "queryReservationLimit.action",
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