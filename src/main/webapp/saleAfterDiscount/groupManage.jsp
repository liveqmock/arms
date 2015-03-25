<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>用户组和权限</title>
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
<body>
	<table border="0" style="width: 100%;">
		<tr>
			<td class="titlebg"><span>系统设置</span> <span class="titleSpan">(用户组和权限)</span>
			</td>
		</tr>
	</table>
	<form name="fmSearch" method="post" id="fmSearch">
		<table id="searchPanel" class="searchPanel">
			<tr>
				<td>用户组名称:</td>
				<td><input name="groupName" type="text" id="groupName"
					class="easyui-combobox"
					data-options="editable:false,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/groupNameOption.action'"
					style="width: 250px;" /></td>
				<td><a id="lnkSearch" class="easyui-linkbutton"
					href="javascript:doSearch()">查询</a>&nbsp;&nbsp;&nbsp;<a
					id="lnkSearch" class="easyui-linkbutton"
					href="javascript:clearSearchFrm()">清空查询</a></td>
			</tr>
		</table>
	</form>
	<table id="mydg" class="easyui-datagrid"
		data-options="url:'queryGroup.action',
						   rownumbers:true,
						   singleSelect:true,
						   toolbar:'#toolbar',
						   pagination:false,
						   onDblClickRow:editItem ">
		<thead>
			<tr>
				<th width="300" data-options="field:'groupName'">用户组名称</th>
				<th width="300" data-options="field:'remark'">用户权限</th>
			</tr>
		</thead>
	</table>
	<div id="toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="addItem()">新增用户组</a>
	</div>
	<div id="mydlg" class="easyui-dialog" closed="true"
		style="width: 800px; height: 700px; padding: 10px 20px;">
		<form name="fm" method="post" id="fm">
			<table id="fm_privileges" border="0" cellpadding="0" cellspacing="0"
				width="100%;">
				<tr>
					<td colspan="4" width="50"  align="center">用户组名称：
					  <input name="groupName" type="text" style="width: 300px;"
						id="fm_groupName" class="easyui-textbox" data-options="required:true" /></td>
				</tr>
				<tr>
					<td align="right">权限分配：</td>
				</tr>
				<s:iterator value="privilegesLst" status="status">
					<s:if test="#status.odd||#status.first">				
					<tr>
					</s:if>
					<td align="right">&nbsp;</td>
					<td><input type="checkbox"
						id="remark_<s:property value='#status.count' />" name="remark"
						value="<s:property value='name' />" /> <label
						for="remark_<s:property value='#status.count' />"><s:property
								value='name' /></label> <br /></td>
					<s:if test="#status.even||#status.last">
					</tr>
					</s:if>
				</s:iterator>
				<tr>
					<td colspan="4" align="center"><br /> <a onclick="saveItem()"
						id="btnSave" class="easyui-linkbutton" href="javascript:void(0)">保存用户组及权限信息</a>
						&nbsp;&nbsp;&nbsp;
						<a class="easyui-linkbutton" href="javascript:void(0)"
						 onclick="deleteItem(this)">删除此用户组</a>
						&nbsp;&nbsp;&nbsp;
						<a onclick="javascript:$('#mydlg').dialog('close')" id="btnSave"
						class="easyui-linkbutton" href="javascript:void(0)">取消修改</a></td>
				</tr>
			</table>
		</form>
	</div>

	<script type="text/javascript">
		var url;
		function addItem() {
			$('#mydlg').dialog('open').dialog('setTitle', '添加用户组权限');
			$('#fm').form('clear');
			url = 'insertGroup.action';
		}

		function editItem(clickevent) {
			var row = $('#mydg').datagrid('getRows')[clickevent];
			var remark;
			if (row) {
				$('#mydlg').dialog('open').dialog('setTitle', '修改用户组权限信息');
				$('#fm').form('load', row);
				$.post('<s:property value="basePath" />/saleAfterDiscount/selectItem.action',
					{
						'groupName' : row.groupName
					},function(result) {
				     $("#fm_privileges  input[name='remark']").each(function(index, element)
						     {
							    $.each(result,function(name,value) {
								  if ($(element).val() == value) {
											$(element).attr("checked",true);
								     }
								});
							});
						}, 'json');

				url = 'updateGroup.action';
				$('#groupName').combobox("reload");
			}
		}
		function deleteItem(clickevent) {
		//	var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
		var groupName = $("#fm_groupName").val().trim();
		
			if (groupName != null) {
				$.messager.confirm('确认', '确定要删除选中用户组权限信息吗?', function(r) {
					if (r) {
						$.post('deleteGroup.action', {
							"groupName" : groupName
						}, function(result) {
							if (result.errorMsg) {
								$.messager.alert('出错啦', result.errorMsg);
							} else {
								$('#mydg').datagrid('reload'); // reload data
								$('#groupName').combobox("reload");
								$('#mydlg').dialog('close');
							}
						}, 'json');
					}
				});
			}
		}

		function doSearch() {
			$("#fmSearch").form('submit', {
				url : "queryGroup.action",
				success : function(jsonStr) {
					$('#mydg').datagrid('loadData', $.parseJSON(jsonStr));
				}
			});
		}

		function clearSearchFrm() {
			$("#fmSearch").form('clear');
			doSearch();
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
						$('#groupName').combobox("reload");
					}
				}
			});
		}

		var myTable = $('#mydg');
		$(function() {
			myTable.datagrid({
				onLoadSuccess : function(data) {
					mergeGridColCells(myTable, "groupName");
				}
			});
		});

	</script>
</body>
</html>