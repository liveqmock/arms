<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>供应商管理</title>
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
			<td class="titlebg"><span>基础设置</span> <span class="titleSpan">(供应商信息管理)</span>
			</td>
		</tr>
	</table>
	<form name="fmSearch" method="post" id="fmSearch">
		<table id="searchPanel" class="searchPanel" style="display: none;">
			<tr>
				<td>供应商编号:</td>
				<td><input name="txtSuppBianHao" type="text" maxlength="20"
					id="txtSuppBianHao" style="width: 120px;" /></td>
				<td>供应商名称:</td>
				<td><input name="txtSuppName" type="text" maxlength="20"
					id="txtSuppName" style="width: 120px;" /></td>
				<td><a id="lnkSearch" class="easyui-linkbutton"
					href="javascript:doSearch()">查询项目</a>&nbsp;&nbsp;&nbsp;<a
					id="lnkSearch" class="easyui-linkbutton"
					href="javascript:clearSearchFrm()">清空查询</a></td>
			</tr>
		</table>
	</form>
	<table id="mydg" class="easyui-datagrid"
		data-options="url:'querySupplier.action',
						   rownumbers:true,
						   singleSelect:true,
						   toolbar:'#toolbar',
						   pagination:true">
		<thead>
			<tr>
				<th data-options="field:'txtSuppBianHao',width:120" sortable="true">供应商编号</th>
				<th data-options="field:'txtSuppName',width:170">供应商名称</th>
				<th data-options="field:'txtSuppTel1',width:120">电话1</th>
				<th data-options="field:'txtSuppWangZhi',width:120">网址</th>
				<th data-options="field:'txtSuppDiQu',width:120">地区</th>
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
		style="width: 788px; height: 500px; padding: 10px 20px;">
		<form name="fm" method="post" id="fm">
			<table border="0">
				<tr>
					<td><span class="requireSpan">*&nbsp;</span>供应商编号:</td>
					<td><input class="easyui-validatebox"
						data-options="required:true,missingMessage:'供应商编号为必填项'"
						name="txtSuppBianHao" type="text" maxlength="8"
						id="txtSuppBianHao" /></td>
					<td><span class="requireSpan">*&nbsp;</span>供应商名称:</td>
					<td colspan="3"><input class="easyui-validatebox"
						data-options="required:true,missingMessage:'供应商名称为必填项'"
						name="txtSuppName" type="text" maxlength="60" id="txtSuppName"
						style="width: 380px;" /></td>
				</tr>
				<tr>
					<td>邮政编码:</td>
					<td><input name="txtSuppYouBian" type="text" maxlength="8"
						id="txtSuppYouBian" /></td>
					<td>通信地址:</td>
					<td colspan="3"><input name="txtSuppDiZhi"
						class="easyui-validatebox"
						data-options="required:true,missingMessage:'供应商通信地址为必填项'"
						type="text" maxlength="100" id="txtSuppDiZhi"
						style="width: 380px;" /></td>
				</tr>
				<tr>
					<td>网络地址:</td>
					<td><input name="txtSuppWangZhi" type="text" maxlength="40"
						id="txtSuppWangZhi" /></td>
					<td>电子邮件:</td>
					<td><input name="txtSuppEmail" type="text" maxlength="60"
						id="txtSuppEmail" /></td>
					<td>传真:</td>
					<td><input name="txtSuppChuanZhen" type="text" maxlength="20"
						id="txtSuppChuanZhen" /></td>
				</tr>
				<tr>
					<td>电话1:</td>
					<td><input class="easyui-validatebox"
						data-options="required:true,missingMessage:'供应商电话为必填项'"
						name="txtSuppTel1" type="text" maxlength="20" id="txtSuppTel1" />
					</td>
					<td>电话2:</td>
					<td><input name="txtSuppTel2" type="text" maxlength="20"
						id="txtSuppTel2" /></td>
				</tr>
				<tr>
					<td>地区:</td>
					<td><input name="txtSuppDiQu" type="text" maxlength="20"
						id="txtSuppDiQu" /></td>
				</tr>
				<tr>
					<td colspan="6"><hr /></td>
				</tr>
				<tr>
					<td>姓名:</td>
					<td><input class="easyui-validatebox"
						data-options="required:true,missingMessage:'联系人姓名为必填项'"
						name="txtLXingMing" type="text" maxlength="20" id="txtLXingMing" />
					</td>
				</tr>
				<tr>
					<td>称呼:</td>
					<td><input class="easyui-validatebox"
						data-options="required:true,missingMessage:'联系人称呼为必填项'"
						name="txtLChengHu" type="text" maxlength="20" id="txtLChengHu" />
					</td>
				</tr>
				<tr>
					<td>手机:</td>
					<td><input class="easyui-validatebox"
						data-options="required:true,missingMessage:'联系人手机为必填项'"
						name="txtLShouJi" type="text" id="txtLShouJi" /></td>
				</tr>
				<tr>
					<td colspan="10" align="center"><br /> <a
						onclick="saveItem()" id="btnSave" class="easyui-linkbutton"
						href="javascript:void(0)">保存</a>&nbsp;&nbsp;&nbsp;<a
						onclick="javascript:$('#mydlg').dialog('close')" id="btnSave"
						class="easyui-linkbutton" href="javascript:void(0)">取消</a></td>
				</tr>
			</table>
		</form>
	</div>
	<script type="text/javascript">
		var url;
		function addItem() {
			$('#mydlg').dialog('open').dialog('setTitle', '添加供应商信息');
			$('#fm').form('clear');
			url = 'insertSupplier.action';
		}
		function editItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$('#mydlg').dialog('open').dialog('setTitle', '修改供应商信息');
				$('#fm').form('load', row);
				url = 'updateSupplier.action?txtSuppId='
						+ row.txtSuppId;
			}
		}
		function deleteItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$.messager.confirm('确认', '确定要删除选中供应商信息吗?', function(r) {
					if (r) {
						$.post('deleteSupplier.action', {
							"txtSuppId" : row.txtSuppId
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
				url : "SupplierSearch.action",
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