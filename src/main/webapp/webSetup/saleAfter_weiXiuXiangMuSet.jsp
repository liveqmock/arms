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
<script src="../js/common.js" type="text/javascript"></script>
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
			<td align="right"><a onclick="return delCheck();" id="lnkDel"
				class="easyui-linkbutton"
				data-options="plain:true,iconCls:'icon-remove'"
				href="javascript:__doPostBack('lnkDel','')">删除</a> <a href="#"
				class="easyui-linkbutton"
				data-options="plain:true,iconCls:'icon-add'" onclick="addItem();">新增</a>
				<a href="#" class="easyui-linkbutton"
				data-options="plain:true,iconCls:'icon-search'"
				onclick="searchClick('1');">查询条件</a> <a href="#"
				class="easyui-linkbutton"
				data-options="plain:true,iconCls:'icon-add'"
				onclick="gongShiFeiLvSet('1');">费率</a> <a href="#"
				class="easyui-linkbutton"
				data-options="plain:true,iconCls:'icon-add'"
				onclick="biaoZhunGongShiSet('1');">标准工时设置</a></td>
		</tr>
	</table>
	<table border='0' id="search" style="display: block;">
		<tr>
			<td>维修编码:</td>
			<td><input name="txtWeiXiuBianHao" type="text" maxlength="20"
				id="txtWeiXiuBianHao" style="width: 120px;" /></td>
			<td>维修名称:</td>
			<td><input name="txtWeiXiuMingCheng" type="text" maxlength="20"
				id="txtWeiXiuMingCheng" style="width: 120px;" /></td>
			<td>适用车型:</td>
			<td><input name="txtShiYongCheXing" type="text" maxlength="20"
				id="txtShiYongCheXing" style="width: 120px;" /></td>
			<td><a id="lnkSearch" class="easyui-linkbutton"
				href="javascript:__doPostBack('lnkSearch','')">查询</a></td>
		</tr>
	</table>
	<table id="dg" class="easyui-datagrid"
		data-options="url:'queryWeiXiuXiangMu.action',
                        rownumbers:true,
                        singleSelect:true,
                        autoRowHeight:false,
                        pagination:true">
		<thead>
			<tr>
				<th data-options="field:'txtWeiXiuXiangMuBianHao',width:120" sortable="true">维修项目编号</th>
				<th data-options="field:'txtGongShi',width:80">工时</th>
				<th data-options="field:'ddlSuoShuGongDuan',width:80">工段名称</th>
				<th data-options="field:'txtWeiXiuNeiRong',width:370">维修内容</th>
			</tr>
		</thead>
	</table>

	<div id="dlg" class="easyui-dialog" closed="true"
		style="width: 400px; height: 280px; padding: 10px 20px;">
		<form name="fm" method="post" id="fm">
			<table border="0" cellpadding="0" cellspacing="0" width="280px">
				<tr>
					<td><span class="requireSpan">*&nbsp;</span>维修编号:</td>
					<td><input name="txtWeiXiuXiangMuBianHao" type="text" id="txtWeiXiuXiangMuBianHao" 
                        data-options="required:true"/></td>
				</tr>
				<tr>
					<td><span class="requireSpan">*&nbsp;</span>所属工段:</td>
					<td><select name="ddlSuoShuGongDuan" id="ddlSuoShuGongDuan"
						style="width: 138px;">
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
							rows="2" cols="20" id="txtWeiXiuNeiRong"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><br /> <a onclick="saveItem()"
						id="btnSave" class="easyui-linkbutton" href="javascript:void(0)">保存</a>&nbsp;&nbsp;&nbsp;<a
						onclick="javascript:$('#dlg').dialog('close')" id="btnSave"
						class="easyui-linkbutton" href="javascript:void(0)">取消</a></td>
				</tr>
			</table>
		</form>
	</div>

	<script type="text/javascript">
		var url;
		function addItem() {
			$('#dlg').dialog('open').dialog('setTitle', '添加新的维修项目');
			$('#fm').form('clear');
			url = 'insertWeiXiuXiangMu.action';
		}
		function editItem() {
			var row = $('#dg').datagrid('getSelected');
			if (row) {
				$('#dlg').dialog('open').dialog('setTitle', '修改选中维修项目');
				$('#fm').form('load', row);
				url = 'updateWeiXiuXiangMu.action?id=' + row.id;
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
						$('#dlg').dialog('close'); // close the dialog
						$('#dg').datagrid('reload'); // reload data
					}
				}
			});
		}
		function deleteItem() {
			var row = $('#dg').datagrid('getSelected');
			if (row) {
				$.messager.confirm('确认', '确定要删除选中维修项目吗?', function(r) {
					if (r) {
						$.post('deleteWeiXiuXiangMu.action', {
							id : row.id
						}, function(result) {
							if (result.errorMsg) {
								$.messager.alert('出错啦', result.errorMsg);
							} else {
								$('#dg').datagrid('reload'); // reload data
							}
						}, 'json');
					}
				});
			}
		}
	</script>

</body>
</html>