<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
<title>维修项目管理</title>
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
			<td class="titlebg"><span>维修项目</span> <span class="titleSpan">(维修项目管理)</span>
			</td>
		</tr>
	</table>
	<form name="fmSearch" method="post" id="fmSearch">
		<table id="searchPanel" class="searchPanel" style="display: block;">
			<tr>
				<td>项目编号:</td>
				<td><input name="txtCode" type="text" maxlength="20"
					id="txtCode" class="easyui-textbox" style="width: 120px;" /></td>
				<td>项目名称:</td>
				<td><input name="txtName" type="text" maxlength="20"
					id="txtName" class="easyui-textbox" style="width: 120px;" /></td>
				<td>工段名称:</td>
				<td><input name="ddlGongDuan" id="ddlGongDuan"
					class="easyui-combobox"
					data-options="editable:false,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/weiXiuGongDuanOption.action'"
					style="width: 120px;" /></td>
				<td><a id="lnkSearch" class="easyui-linkbutton"
					href="javascript:doSearch()">查询项目</a></td>
			</tr>
		</table>
	</form>
	<table id="mydg" class="easyui-datagrid"
		data-options="url:'weiXiuXiangMuSearch.action?action=<s:property value='action' />',
							rownumbers:true,
							<s:if test="action=='addXiangMu'">singleSelect:true,</s:if>
							toolbar:'#toolbar',
							pagination:true">
		<thead>
			<tr>
				<s:if test="action=='pickXiangMu'">
					<th field="ck" checkbox="true" width="20"></th>
				</s:if>
                <s:if test="action=='addXiangMu'">
					<th width="150" data-options="field:'ddlDianPu'">所属店铺</th>
				</s:if>
				<th width="80" data-options="field:'ddlGongDuan'">所属工段</th>
				<th width="100" data-options="field:'txtCode'">项目编号</th>
				<th width="150" data-options="field:'txtName'">项目名称</th>
				<th width="250" data-options="field:'txtNeiRong'">维修内容</th>
				<th width="80" data-options="field:'txtFeiYong'">费用</th>
				<th width="100" data-options="field:'txtRemark'">备注</th>
				<s:if test="action=='addXiangMu'">
					<th field="action" width="100" align="center"
						formatter="formatAction">操作</th>
				</s:if>
			</tr>
		</thead>
	</table>
	<div id="toolbar">
		<s:if test="action=='addXiangMu'">
			<a href="javascript:void(0)" class="easyui-linkbutton"
				iconCls="icon-add" plain="true" onclick="addItem()">新增</a>
		</s:if>
		<s:if test="action=='pickXiangMu'">
			<a href="javascript:void(0)" class="easyui-linkbutton"
				data-options="iconCls:'icon-add',plain:true"
				onClick="addCheckedXiangMu()">添加选中维修项目</a>
		</s:if>
	</div>
	<div id="mydlg" class="easyui-dialog" closed="true"
		style="width: 450px; height: 300px; padding: 10px 20px;">
		<form name="fm" method="post" id="fm">
			<table border="0" cellpadding="0" cellspacing="0" width="280px">
				<tr>
					<td><span class="requireSpan">*&nbsp;</span>项目编号:</td>
					<td><input name="txtCode" type="text" id="txtCode"
						class="easyui-textbox" data-options="required:true" /></td>
				</tr>
				<tr>
					<td><span class="requireSpan">*&nbsp;</span>项目名称:</td>
					<td><input name="txtName" type="text" id="txtName"
						class="easyui-textbox" data-options="required:true" /></td>
				</tr>
				<tr>
					<td><span class="requireSpan">*&nbsp;</span>维修内容:</td>
					<td><input name="txtNeiRong" type="text" id="txtNeiRong"
						class="easyui-textbox" data-options="required:true" /></td>
				</tr>
				<tr>
					<td><span class="requireSpan">*&nbsp;</span>费用:</td>
					<td><input name="txtFeiYong" type="text" id="txtFeiYong"
						class="easyui-numberbox"
						data-options="min:0,precision:2,required:true" /></td>
				</tr>
				<tr>
					<td><span class="requireSpan">*&nbsp;</span>所属工段:</td>
					<td><input name="ddlGongDuan" id="ddlGongDuan"
						class="easyui-combobox"
						data-options="editable:false,required:true,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/weiXiuGongDuanOption.action'" /></td>
				</tr>
				<tr>
					<td><span class="requireSpan">*&nbsp;</span>所属店铺:</td>
					<td><input name="ddlDianPu" id="ddlDianPu"
						class="easyui-combobox"
						data-options="editable:false,required:true,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/jiGouOption.action'" /></td>
				</tr>
				<tr>
					<td><span class="requireSpan">*&nbsp;</span>备注:</td>
					<td><input name="txtRemark" type="text" id="txtRemark"
						class="easyui-textbox"/></td>
				</tr>
				<tr>
					<td colspan="2">&nbsp;</td>
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
		<s:if test="action=='addXiangMu'">
		var url;
		function addItem() {
			$('#mydlg').dialog('open').dialog('setTitle', '添加维修项目');
			$('#fm').form('clear');
			url = 'insertWeiXiuXiangMu.action';
		}
		function editItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$('#mydlg').dialog('open').dialog('setTitle', '修改维修项目');
				$('#fm').form('load', row);
				url = 'updateWeiXiuXiangMu.action?txtGuid=' + row.txtGuid;
			}
		}
		function deleteItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$.messager.confirm('确认', '确定要删除选中维修项目吗?', function(r) {
					if (r) {
						$.post('deleteWeiXiuXiangMu.action', {
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
		</s:if>

		<s:if test="action=='pickXiangMu'">
		function addCheckedXiangMu() {
			var checkedRows = $('#mydg').datagrid('getChecked');
			if (checkedRows.length == 0) {
				$.messager.alert('提示', '请先选中要插入的维修项目');
			} else {
				$.post("../webSetup/addGongDanWeiXiuXiangMu.action?d=" + new Date(), {
					"saleAfterGuid" : '<s:property value="saleAfterGuid" />',
					"easyUiJSonData" : JsonToString(checkedRows)
				}, function(result) {
					if (result.errorMsg) {
						$.messager.alert('出错啦', result.errorMsg);
					} else {
						winThisClose();
					}
				}, "json");
			}
		}
		</s:if>

		function doSearch() {
			$("#fmSearch").form('submit', {
				url : "weiXiuXiangMuSearch.action?action=<s:property value='action' />",
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