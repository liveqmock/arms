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
			<td class="titlebg"><span>维修设置</span> <span class="titleSpan">(维修项目管理)</span>
			</td>
		</tr>
	</table>
	<form name="fmSearch" method="post" id="fmSearch">
		<table id="searchPanel" class="searchPanel" style="display: none;">
			<tr>
				<td>维修项目编号:</td>
				<td><input name="txtWeiXiuXiangMuBianHao" type="text"
					maxlength="20" id="txtWeiXiuXiangMuBianHao" style="width: 120px;" /></td>
				<td>工段名称:</td>
				<td><input name="ddlSuoShuGongDuan" type="text" maxlength="20"
					id="ddlSuoShuGongDuan" style="width: 120px;" /></td>
				<td>维修内容:</td>
				<td><input name="txtWeiXiuNeiRong" type="text" maxlength="20"
					id="txtWeiXiuNeiRong" style="width: 120px;" /></td>
				<td><a id="lnkSearch" class="easyui-linkbutton"
					href="javascript:doSearch()">查询项目</a>&nbsp;&nbsp;&nbsp;<a
					id="lnkSearch" class="easyui-linkbutton"
					href="javascript:clearSearchFrm()">清空查询</a></td>
			</tr>
		</table>
	</form>
	<table id="mydg" class="easyui-datagrid"
		data-options="url:'weiXiuXiangMuSearch.action',rownumbers:true,singleSelect:true,toolbar:'#toolbar',pagination:true">
		<thead>
			<tr>
				<th data-options="field:'txtWeiXiuXiangMuBianHao',width:120"
					sortable="true">维修项目编号</th>
				<th data-options="field:'txtGongShi',width:80">工时</th>
				<th data-options="field:'ddlSuoShuGongDuan',width:80">工段名称</th>
				<th data-options="field:'txtWeiXiuNeiRong',width:370">维修内容</th>
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
		style="width: 400px; height: 280px; padding: 10px 20px;">
		<form name="fm" method="post" id="fm">
			<table border="0" cellpadding="0" cellspacing="0" width="280px">
				<tr>
					<td><span class="requireSpan">*&nbsp;</span>维修编号:</td>
					<td><input name="txtWeiXiuXiangMuBianHao" type="text"
						id="txtWeiXiuXiangMuBianHao" class="easyui-validatebox" data-options="required:true,missingMessage:'维修编号为必填项'" /></td>
				</tr>
				<tr>
					<td><span class="requireSpan">*&nbsp;</span>所属工段:</td>
					<td><select name="ddlSuoShuGongDuan" id="ddlSuoShuGongDuan"
						style="width: 138px;" class="easyui-validatebox" data-options="required:true">
							<option value="机电">机电</option>
							<option value="保养">保养</option>
							<option value="钣金">钣金</option>
							<option value="美容">美容</option>
							<option value="喷漆">喷漆</option>
							<option selected="selected" value=""></option>

					</select></td>
				</tr>
				<tr>
					<td><span class="requireSpan">*&nbsp;</span>工时:</td>
					<td><input name="txtGongShi" type="text" id="txtGongShi"
						class="easyui-numberbox"
						data-options="min:0,max:9000,precision:2,required:true" /></td>
				</tr>
				<tr>
					<td><span class="requireSpan">*&nbsp;</span>维修内容:</td>
					<td style="height: 55px;"><textarea name="txtWeiXiuNeiRong"
							rows="2" cols="20" id="txtWeiXiuNeiRong" class="easyui-validatebox" data-options="required:true"></textarea></td>
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
			$('#mydlg').dialog('open').dialog('setTitle', '添加维修项目');
			$('#fm').form('clear');
			url = 'insertWeiXiuXiangMu.action';
		}
		function editItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$('#mydlg').dialog('open').dialog('setTitle', '修改维修项目');
				$('#fm').form('load', row);
				url = 'updateWeiXiuXiangMu.action?txtWeiXiuXiangMuGuid='
						+ row.txtWeiXiuXiangMuGuid;
			}
		}
		function deleteItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$.messager.confirm('确认', '确定要删除选中维修项目吗?', function(r) {
					if (r) {
						$.post('deleteWeiXiuXiangMu.action', {
							"txtWeiXiuXiangMuGuid" : row.txtWeiXiuXiangMuGuid
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
				url : "weiXiuXiangMuSearch.action",
				success : function(jsonStr) {
					setupDatagrid(jsonStr);
				}
			});
		}

		function clearSearchFrm() {
			$("#fmSearch").form('clear');
			doSearch();
		}

		function setupDatagrid(jsonStr) {
			$('#mydg').datagrid('loadData', $.parseJSON(jsonStr));
		}

		function formatAction(value, row, index) {
			return '<a href="javascript:void(0)" onclick="editItem(this)">修改</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" onclick="deleteItem(this)">删除</a>';
		}
	</script>

</body>
</html>