<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>个人折扣管理</title>
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
			<td class="titlebg"><span>系统管理</span> <span class="titleSpan">(个人折扣设置)</span>
			</td>
		</tr>
	</table>
	<form name="fmSearch" method="post" id="fmSearch">
		<table id="searchPanel" class="searchPanel" style="display: none;">
			<tr>
				<td>用户名称:</td>
				<td><input name="displayName" type="text" maxlength="20"
					id="displayName" style="width: 120px;" /></td>
				<td>机构名称:</td>
				<td><input name="shopName" type="text" maxlength="20"
					id="shopName" style="width: 120px;" /></td>
				<td>部门名称:</td>
				<td><input name="departName" type="text" maxlength="20"
					id="departName" style="width: 120px;" /></td>
				<td><a id="lnkSearch" class="easyui-linkbutton"
					href="javascript:doSearch()">查询</a>&nbsp;&nbsp;&nbsp;<a
					id="lnkSearch" class="easyui-linkbutton"
					href="javascript:clearSearchFrm()">清空查询</a></td>
			</tr>
		</table>
	</form>
	<table id="mydg" class="easyui-datagrid"
		data-options="url:'queryZheKouView.action',
						   rownumbers:true,
						   singleSelect:true,
						   toolbar:'#toolbar',
						   pagination:true">
		<thead>
			<tr>
				<th data-options="field:'displayName',width:120">用户名</th>
				<th data-options="field:'shopName',width:170">机构</th>
				<th data-options="field:'departName',width:170">部门</th>
				<th data-options="field:'txtGongShiZheKou',width:120">工时折扣</th>
				<th data-options="field:'txtMeiRongZheKou',width:120">美容折扣</th>
				<th data-options="field:'txtJiDianZheKou',width:120">机电折扣</th>
				<th data-options="field:'txtBaoYangZheKou',width:120">保养折扣</th>
				<th data-options="field:'txtBanJinZheKou',width:120">钣金折扣</th>
				<th data-options="field:'txtPenQiZheKou',width:120">喷漆折扣</th>
				<th data-options="field:'txtCaiLiaoZheKou',width:120">物料折扣</th>
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
					<td>选择用户</td>
					<td><select id="userId" name="userId" style="width: 138px;">
							<s:iterator value="ownerList">
								<option value="<s:property value='userId' />"><s:property
										value='displayName' /></option>
							</s:iterator>
					</select></td>
				</tr>
				<tr>
					<td>工时折扣:</td>
					<td><input name="txtGongShiZheKou" type="text"
						id="txtGongShiZheKou" class="easyui-numberbox"
						data-options="precision:2" /></td>
				</tr>
				<tr>
					<td>美容折扣:</td>
					<td><input name="txtMeiRongZheKou" type="text"
						id="txtMeiRongZheKou" class="easyui-numberbox"
						data-options="precision:2" /></td>
				</tr>
				<tr>
					<td>机电折扣:</td>
					<td><input name="txtJiDianZheKou" type="text"
						id="txtJiDianZheKou" class="easyui-numberbox"
						data-options="precision:2" /></td>
				</tr>
				<tr>
					<td>保养折扣:</td>
					<td><input name="txtBaoYangZheKou" type="text"
						id="txtBaoYangZheKou" class="easyui-numberbox"
						data-options="precision:2" /></td>
				</tr>
				<tr>
					<td>钣金折扣:</td>
					<td><input name="txtBanJinZheKou" type="text"
						id="txtBanJinZheKou" class="easyui-numberbox"
						data-options="precision:2" /></td>
				</tr>

				<tr>
					<td>喷漆折扣:</td>
					<td><input name="txtPenQiZheKou" type="text"
						id="txtPenQiZheKou" class="easyui-numberbox"
						data-options="precision:2" /></td>
				</tr>
				<tr>
					<td>物料折扣:</td>
					<td><input name="txtCaiLiaoZheKou" type="text"
						id="txtCaiLiaoZheKou" class="easyui-numberbox"
						data-options="precision:2" /></td>
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
			$('#mydlg').dialog('open').dialog('setTitle', '添加个人折扣信息');
			$('#fm').form('clear');
			url = 'insertZheKou.action';
		}
		function editItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$('#mydlg').dialog('open').dialog('setTitle', '修改个人折扣信息');
				$('#fm').form('load', row);
				url = 'updateZheKou.action?txtZheKouGuId=' + row.txtZheKouGuId;
			}
		}
		function deleteItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$.messager.confirm('确认', '确定要删除选中个人折扣信息吗?', function(r) {
					if (r) {
						$.post('deleteZheKou.action', {
							"txtZheKouGuId" : row.txtZheKouGuId
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
				url : "ZheKouViewSearch.action",
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