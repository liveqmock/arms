<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>会员管理</title>
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
			<td class="titlebg"><span>会员管理</span> <span class="titleSpan">(会员设置)</span>
			</td>
		</tr>
	</table>
	<form name="fmSearch" method="post" id="fmSearch">
		<table id="searchPanel" class="searchPanel" style="display: none;">
			<tr>
				<td>会员卡号:</td>
				<td><input name="txtHuiYuanHao" type="text" maxlength="10"
					id="txtHuiYuanHao" style="width: 120px;" /></td>
				<td>客户号:</td>
				<td><input name="txtCustId" type="text" maxlength="10"
					id="txtCustId" style="width: 120px;" /></td>
				<td><a id="lnkSearch" class="easyui-linkbutton"
					href="javascript:doSearch()">查询</a>&nbsp;&nbsp;&nbsp;<a
					id="lnkSearch" class="easyui-linkbutton"
					href="javascript:clearSearchFrm()">清空查询</a></td>
			</tr>
		</table>
	</form>

	<table id="mydg" class="easyui-datagrid"
		data-options=" url:'queryHuiYuan.action',
							 rownumbers:true,
							 singleSelect:true,
							 toolbar:'#toolbar',
							 pagination:true">
		<thead>
			<tr>
				<th data-options="field:'txtCustId',width:120">客户号</th>
				<th data-options="field:'txtHuiYuanHao',width:120">会员卡号</th>
				<th data-options="field:'txtHuiYuanDengJi',width:120">会员等级</th>
				<th data-options="field:'txtHuiYuanJiFen',width:120">会员积分</th>
				<th data-options="field:'txtShenQingRiQi',width:120">申请日期</th>
				<th data-options="field:'txtGongShiZheKou',width:120">工时折扣</th>
				<th data-options="field:'txtCaiLiaoZheKou',width:120">材料折扣</th>
				<th field="action" width="120" align="center"
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
		style="width: 600px; height: 400px; padding: 10px 20px;">
		<form name="fm" method="post" id="fm">
			<table border="0" cellpadding="0" cellspacing="0" width="100%;">
				<tr>
				<!-- 怎么样在下拉列表中显示读取数据  -->
					<td style="width:10px">客户号:</td>
					<td style="width:10px"><select id="txtCustId" name="txtCustId"><s:iterator value="CheZhuLianXiRenList">
						<option value="<s:property value='txtCustId' />"><s:property value='txtCustId' /></option>
						</s:iterator>
					</select></td>
				</tr>
				<tr>
					<td style="width:60px">会员卡号:</td>
					<td><input name="txtHuiYuanHao" type="text"
						class="easyui-validatebox"
						data-options="required:true,missingMessage:'为必填项'" maxlength="15"
						id="txtHuiYuanHao"  /></td>
					<td style="width:60px">会员等级:</td>
					<td><input name="txtHuiYuanDengJi" type="text" maxlength="15" /></td>
				</tr>
				<tr>
					<td style="width:60px">会员积分:</td>
					<td><input name="txtHuiYuanJiFen" type="text" maxlength="15" /></td>
					<td style="width:60px">申请日期:</td>
					<td><input name="txtShenQingRiQi" type="text" maxlength="15"
					class="easyui-datebox"
						data-options="required:true,missingMessage:'为必填项'"
						id="txtShenQingRiQi" /></td>
				</tr>
				<tr>
					<td style="width:60px">工时折扣:</td>
					<td><input name="txtGongShiZheKou" type="text" maxlength="15" /></td>
					<td style="width:60px">材料折扣:</td>
					<td><input name="txtCaiLiaoZheKou" type="text" maxlength="15" /></td>
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
			$('#mydlg').dialog('open').dialog('setTitle', '添加会员');
			$('#fm').form('clear');
			url = 'insertHuiYuan.action';
		}
		function editItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$('#mydlg').dialog('open').dialog('setTitle', '修改会员');
				$('#fm').form('load', row);
				url = 'updateHuiYuan.action?txtHuiYuanId=' + row.txtHuiYuanId;
			}
		}
		function deleteItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$.messager.confirm('确认', '确定要删除选中会员吗?', function(r) {
					if (r) {
						$.post('deleteHuiYuan.action', {
							"txtHuiYuanId" : row.txtHuiYuanId
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
				url : "huiYuanSearch.action",
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