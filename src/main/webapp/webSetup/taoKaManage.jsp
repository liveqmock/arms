<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>套卡管理</title>
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
			<td class="titlebg"><span>基础设置</span> <span class="titleSpan">(套卡管理)</span>
			</td>
		</tr>
	</table>

	<table id="datagridTaoKaName" class="easyui-datagrid"
		data-options="url:'queryTaoKaSort.action',rownumbers:true,singleSelect:true,toolbar:'#toolbar1'">
		<thead>
			<tr>
				<th width="150" data-options="field:'txtTaoKaName',editor:{type:'textbox',options:{required:true}}">套卡名称</th>
				<th width="80" data-options="field:'txtTaoKaPrice',editor:{type:'numberbox',options:{required:true}}">套卡价格</th>
                <th field="action" width="200" align="center" formatter="formatAction">操作</th>
			</tr>
		</thead>
	</table>
	<div id="toolbar1">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="appendRow()">新增套卡名称</a></div>
    <div style="margin:5px;"></div>

	<table id="datagridTaoKaItem" class="easyui-datagrid"
		data-options="url:'queryTaoKaItem.action',rownumbers:true,singleSelect:true,toolbar:'#toolbar2',pagination:false">
		<thead>
			<tr>
				<th width="150" field="txtTaoKaSort">套卡名称</th>
				<th width="60" field="txtXiangMuCode">排序序号</th>
				<th width="150" field="txtXiangMuName">项目名称</th>
				<th width="60" field="txtTotalTimes">服务次数</th>
                <th field="action" width="200" align="center" formatter="formatAction2">操作</th>
			</tr>
		</thead>
	</table>
	<div id="toolbar2">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="appendRow2()">新增套卡项目</a></div>
	<div id="mydlg" class="easyui-dialog" closed="true"
		style="width: 450px; height: 300px; padding: 10px 20px;">
		<form name="fm" method="post" id="fm">
        	<input name="txtGuid" id="txtGuid" type="hidden" />
			<table border="0">
				<tr>
					<td align="right">套卡名称：</td>
					<td><input class="easyui-combobox" data-options="editable:false,required:true,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/>taoKaSortGuidOption.action'"
						name="txtTaoKaSortGuid" type="text" maxlength="60" id="txtTaoKaSortGuid"/></td>
				</tr>
				<tr>
					<td align="right">排序序号：</td>
					<td><input class="easyui-textbox" data-options="required:true"
						name="txtXiangMuCode" type="text" maxlength="60" id="txtXiangMuCode"/></td>
				</tr>
				<tr>
					<td align="right">项目名称：</td>
					<td><input class="easyui-textbox" data-options="required:true"
						name="txtXiangMuName" type="text" maxlength="60" id="txtXiangMuName"/></td>
				</tr>
				<tr>
					<td align="right">服务次数：</td>
					<td><input class="easyui-textbox" data-options="required:true"
						name="txtTotalTimes" type="text" maxlength="60" id="txtTotalTimes" /></td>
				<tr>
					<td colspan="8" align="center"><br /> <a
						onclick="saverow2()" id="btnSave" class="easyui-linkbutton"
						href="javascript:void(0)">保存</a>&nbsp;&nbsp;&nbsp;<a
						onclick="javascript:$('#mydlg').dialog('close')" id="btnSave"
						class="easyui-linkbutton" href="javascript:void(0)">取消</a></td>
				</tr>
			</table>
		</form>
	</div>



	<script language="javascript" type="text/javascript">
		var myTable = $('#datagridTaoKaName');			
		
		function formatAction(value, row, index) {
			if (row.editing) {
				var s = '<a href="#" onclick="saverow(this);return false;">保存修改</a>&nbsp;&nbsp;&nbsp;&nbsp;';
				var c = '<a href="#" onclick="cancelrow(this);return false;">取消修改</a>';
				return s + c;
			} else {
				var e = '<a href="#" onclick="editrow(this);return false;">编辑本行</a>&nbsp;&nbsp;&nbsp;&nbsp;';
				var d = '<a href="#" onclick="deleterow(this);return false;">删除本行</a>';
				return e + d;
			}
		}

		function getTargetRowIndex(target) {
			return myTable.datagrid('getEventTargetRowIndex', target);
		}
		
		function appendRow(){			
			if (myTable.datagrid('hasEditingRow')) {
				$.messager.alert('提示', '请先处理尚未完成的编辑行信息');
			} else {
				myTable.datagrid('appendRow',{});
				var editIndex = myTable.datagrid('getRows').length-1;
				myTable.datagrid('selectRow', editIndex).datagrid('beginEdit', editIndex);				
			}
		}

		function editrow(target) {
			if (myTable.datagrid('hasEditingRow')) {
				$.messager.alert('提示', '请先处理尚未完成的编辑行信息');
			} else {
				myTable.datagrid('beginEdit', getTargetRowIndex(target));
			}
		}

		function deleterow(target) {
			if (myTable.datagrid('hasEditingRow')) {
				$.messager.alert('提示', '请先处理尚未完成的编辑行信息');
			} else {
				$.messager.confirm('提示', '确定要删除套卡信息吗?', function(r) {
					if (r) {
						var rowIndex = getTargetRowIndex(target);
						var editRow = myTable.datagrid('getRows')[rowIndex];
						$.post('deleteTaoKaSort.action', {
							"txtGuid" : editRow.txtGuid
						}, function(result) {
							if (result.errorMsg) {
								$.messager.alert('出错啦', result.errorMsg);
								myTable.datagrid('cancelEdit', rowIndex);
							} else {
								reloadCurentPage();
							}
						}, 'json');
					}
				});
			}
		}

		function saverow(target) {
			var rowIndex = getTargetRowIndex(target);
			if (myTable.datagrid('validateRow', rowIndex)) {
				myTable.datagrid('endEdit', rowIndex);
				var editRow = myTable.datagrid('getRows')[rowIndex];
				$.post("saveTaoKaSort.action", {
					"rowJsonData" : JsonToString(editRow)
				}, function(result) {
					if (result.errorMsg) {
						$.messager.alert('出错啦', result.errorMsg);
						myTable.datagrid('cancelEdit', rowIndex);
					} else {
						reloadCurentPage();
					}
				}, 'json');
			} else {
				$.messager.alert('提示', '请先按照提示填写行信息');
			}
		}

		function cancelrow(target) {
			myTable.datagrid('cancelEdit', getTargetRowIndex(target));
		}

		//===================================================		
		var myTable2 = $('#datagridTaoKaItem');	
		$(function() {
			myTable2.datagrid({
				onLoadSuccess: function (data) {
					mergeGridColCells(myTable2, "txtTaoKaSort");
				}
			});
		});
		
		function formatAction2(value, row, index) {
			var e = '<a href="#" onclick="editrow2('+index+');return false;">编辑本行</a>&nbsp;&nbsp;&nbsp;&nbsp;';
			var d = '<a href="#" onclick="deleterow2(\''+row.txtGuid+'\');return false;">删除本行</a>'; 
			return e + d;
		}

		function appendRow2(){			
			$('#mydlg').dialog('open').dialog('setTitle', '添加套卡信息');
			$('#fm').form('clear');
		}

		function editrow2(rowIndex) {
			var row = myTable2.datagrid('getRows')[rowIndex];
			$('#mydlg').dialog('open').dialog('setTitle', '修改套卡信息');
			$('#fm').form('load', row);
		}

		function deleterow2(txtGuid) {
			$.messager.confirm('提示', '确定要删除本行信息吗?', function(r) {
				if (r) {
					$.post('deleteTaoKaItem.action', {
						"txtGuid" : txtGuid
					}, function(result) {
						if (result.errorMsg) {
							$.messager.alert('出错啦', result.errorMsg);
						} else {
							myTable2.datagrid('reload');
						}
					}, 'json');
				}
			});
		}

		function saverow2() {
			$('#fm').form('submit', {
				url : "saveTaoKaItem.action",
				onSubmit : function() {
					return $(this).form('validate');
				},
				success : function(result) {
					var result = eval('(' + result + ')');
					if (result.errorMsg) {
						$.messager.alert('出错啦', result.errorMsg);
					} else {
						$('#mydlg').dialog('close'); // close the dialog
						myTable2.datagrid('reload'); // reload data
					}
				}
			});
		}

	</script>
</body>
</html>