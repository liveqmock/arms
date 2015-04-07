<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>系统用户管理</title>
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
			<td class="titlebg"><span>系统设置</span> <span class="titleSpan">(用户管理)</span>
			</td>
		</tr>
	</table>

	<table id="mydg" class="easyui-datagrid"
		data-options="url:'queryUser.action',
        				   pageList:[20,30,50,100],
						   rownumbers:true,
						   singleSelect:true,
						   toolbar:'#toolbar',
						   pagination:true">
		<thead>
			<tr>
				<th width="150" data-options="field:'loginName'">登录账号</th>
				<th width="150" data-options="field:'displayName'">中文名称</th>
				<th width="150" data-options="field:'password'">用户密码</th>
				<th width="150" data-options="field:'expirydate'">账号有效期</th>
				<th width="200" data-options="field:'groupName'">用户组</th>
				<th width="200" data-options="field:'showOwnerTel'">店长电话</th>
                <s:if test="user.privilegeLst.contains('manageUserForAllShop')">
				<th width="200" data-options="field:'shopName'">所属店铺</th>
                </s:if>
				<th field="action" width="100" align="center"
					formatter="formatAction">操作</th>
			</tr>
		</thead>
	</table>
	<div id="toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="addItem()">新增</a>
	</div>
	<div id="mydlg" class="easyui-dialog" closed="true"
		style="width: 700px; height: 350px; padding: 10px 20px;">
		<form name="fm" method="post" id="fm">
			<table border="0" cellpadding="0" cellspacing="0" width="100%;">
				<tr>
					<td>登录账号:</td>
					<td><input name="loginName" type="text" maxlength="15"
						id="loginName" style="width: 250px;" class="easyui-textbox"
						data-options="required:true" /></td>
				</tr>
				<tr>
					<td>中文名称:</td>
					<td><input name="displayName" type="text" maxlength="15"
						id="displayName" style="width: 250px;" class="easyui-textbox"
						data-options="required:true" /></td>
				</tr>
				<tr>
					<td>用户密码:</td>
					<td><input name="password" type="text" maxlength="15"
						id="password" style="width: 250px;" class="easyui-textbox"
						data-options="required:true" /></td>
				</tr>
				<tr>
					<td>账号有效期:</td>
					<td><input name="expirydate" type="text" maxlength="15"
						id="expirydate" style="width: 250px;"  class="easyui-datebox"
						data-options="required:true"/></td>
				</tr>
				<tr>
					<td>用户组:</td>
					<td><input name="groupName" type="text" id="groupName"
							class="easyui-combobox"
							data-options="editable:false,required:true,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/groupNameOption.action',onChange:updateShowOwnerTelTr" style="width: 250px;"/></td>
				</tr>
               <tr id="showOwnerTel" style="display:none;">
					<td>店长电话:</td>
					<td><input name="showOwnerTel" type="text" maxlength="15"
						id="showOwnerTel" style="width: 250px;" class="easyui-textbox"
						data-options="required:false" /></td>
				</tr>
				<s:if test="user.privilegeLst.contains('manageUserForAllShop')">
				<tr>
					<td>所属店铺：</td>
					<td><input name="shopCode" id="shopCode"
								class="easyui-combobox"
								data-options="editable:false,required:true,valueField:'code',textField:'name',method:'post',url:'<s:property value='basePath' />/data/shopCodeOption.action'"  style="width: 250px;"/></td>
				</tr>
                </s:if>
                <s:else>
                	<input name="shopCode" id="shopCode" type="hidden" />
                </s:else>
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
			$('#mydlg').dialog('open').dialog('setTitle', '添加系统用户信息');
			$('#fm').form('clear');
			url = 'insertUser.action';
		}
		function editItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$('#mydlg').dialog('open').dialog('setTitle', '修改系统用户信息');
				$('#fm').form('load', row);
				updateShowOwnerTelTr(row.groupName);
				url = 'updateUser.action?userId=' + row.userId;
			}
		}
		function deleteItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$.messager.confirm('确认', '确定要删除选中信息吗?', function(r) {
					if (r) {
						$.post('deleteUser.action', {
							"userId" : row.userId
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

		function formatAction(value, row, index) {
			return '<a href="javascript:void(0)" onclick="editItem(this)">修改</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" onclick="deleteItem(this)">删除</a>';
		}
		
		function updateShowOwnerTelTr(newVal){
			if(newVal == "店长"){
				$("#showOwnerTel").show();
			}else{
				$("#showOwnerTel").hide();	
			}
		}
	</script>
</body>
</html>