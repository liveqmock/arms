<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>预约管理</title>
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
			<td class="titlebg"><span>客户管理</span> <span class="titleSpan">(客户预约)</span>
			</td>
		</tr>
	</table>
	<form name="fmSearch" method="post" id="fmSearch" class="searchform">
		<table id="searchPanel" class="searchPanel" style="display: block;">
			<tr>
				<td>车牌号码:</td>
				<td><input  class="easyui-textbox" name="txtCheLiangChePaiHao" type="text" maxlength="20"
					id="txtCheLiangChePaiHao" style="width: 150px;" /></td>
				<td nowrap>预约时间:</td>
                <td><input name="txtReserveDateBegin" type="text"
                    id="txtReserveDateBegin" class="easyui-datebox" style="width: 120px;" /></td>
                <td><input name="txtReserveDateEnd" type="text"
                    id="txtReserveDateEnd" class="easyui-datebox" style="width: 120px;" /></td>
                <td><a id="lnkSearch" class="easyui-linkbutton"
					href="javascript:doSearch()">查询项目</a>&nbsp;&nbsp;&nbsp;<a
					id="lnkSearch" class="easyui-linkbutton"
					href="javascript:clearSearchFrm()">清空查询</a></td>
			</tr>
		</table>
	</form>
	<table id="mydg" class="easyui-datagrid"
		data-options="url:'queryCustomerReservation.action',
						   rownumbers:true,
						   singleSelect:true,
						   toolbar:'#toolbar',
						   pagination:true">
		<thead>
			<tr>
                <th width="100" data-options="field:'txtCheZhuName'">车主</th>
                <th width="150" data-options="field:'txtLianXiRenTel'">联系电话</th>
                <th width="150" data-options="field:'ddlCheLiangCheXi'">车型</th>
                <th width="150" data-options="field:'ddlCheLiangNianFen'">车辆年份</th>
                <th width="150" data-options="field:'ddlCheLiangPaiLiang'">排量</th>
                <th width="100" data-options="field:'txtCheLiangChePaiHao'">车牌号</th>
                <th width="150" data-options="field:'txtTicketInfo'">服务券信息</th>
                <th width="150" data-options="field:'txtReserveDate'">预约时间</th>
                <th width="150" data-options="field:'txtReserveShop'">预约店铺</th>
                <th width="150" data-options="field:'txtWeiXinId'">微信号</th>
                <th width="150" data-options="field:'txtCallAddr'">来电地址</th>
                <th width="150" data-options="field:'txtCustomerServiceName'">客服姓名</th>
				<th width="200" data-options="field:'txtRemarks'">备注</th>
				<th width="100" field="action" align="center"
					formatter="formatAction">操作</th>
			</tr>
		</thead>
	</table>
	<div id="toolbar">
		<a href="javascript:void(0)" class="easyui-linkbutton"
			iconCls="icon-add" plain="true" onclick="addItem()">新增预约</a>
	</div>
	<div id="mydlg" class="easyui-dialog" closed="true"
		style="width: 400px; height: 400px; padding: 10px 20px;">
		<form name="fm" method="post" id="fm">
			<table border="0">
				<tr>
					<td align="right"><span class="requireSpan">*&nbsp;</span>车牌号码：</td>
					<td><input class="easyui-textbox"
						data-options="required:true"
						name="txtCheLiangChePaiHao" type="text" maxlength="60" id="txtCheLiangChePaiHao"
						 /></td>
				</tr>
				<tr>
					<td align="right"><span class="requireSpan">*&nbsp;</span>服务券信息：</td>
					<td><input class="easyui-textbox"
						data-options="required:true"
						name="txtTicketInfo" type="text" maxlength="60" id="txtTicketInfo"
						 /></td>
				</tr>
				<tr>
					<td align="right"><span class="requireSpan">*&nbsp;</span>预约时间：</td>
					<td><input class="easyui-datetimebox"
						data-options="required:true"
						name="txtReserveDate" type="text" maxlength="60" id="txtReserveDate"
						 /></td>
				</tr>
				<tr>
					<td align="right"><span class="requireSpan">*&nbsp;</span>预约店铺：</td>
					<td><input name="txtReserveShop" id="txtReserveShop"
								class="easyui-combobox"
								data-options="editable:false,required:true,valueField:'code',textField:'name',method:'post',url:'<s:property value='basePath' />/data/shopOption.action'" /></td>
				</tr>
				<tr>
					<td align="right">微信号：</td>
					<td><input class="easyui-textbox"
						name="txtWeiXinId" type="text" maxlength="60" id="txtWeiXinId"
						 /></td>
				</tr>
				<tr>
					<td align="right">来电地址：</td>
					<td><input class="easyui-textbox"
						name="txtCallAddr" type="text" maxlength="60" id="txtCallAddr"
						 /></td>
				</tr>
				<tr>
					<td align="right">备注：</td>
					<td><input class="easyui-textbox"
						name="txtRemarks" type="text" maxlength="60" id="txtRemarks"
						/></td>
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
		var url;
		function addItem() {
			$('#mydlg').dialog('open').dialog('setTitle', '添加预约信息');
			$('#fm').form('clear');
			url = 'insertCustomerReservation.action';
		}
		function editItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$('#mydlg').dialog('open').dialog('setTitle', '修改预约信息');
				$('#fm').form('load', row);
				url = 'updateCustomerReservation.action?txtReserveGuid='
						+ row.txtReserveGuid;
			}
		}
		function deleteItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$.messager.confirm('确认', '确定要删除选中预约信息吗?', function(r) {
					if (r) {
						$.post('deleteCustomerReservation.action', {
							"txtReserveGuid" : row.txtReserveGuid
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
			if($('#fm').form('validate')){
				$.post('isChePaiHaoExist.action', {
					"txtCheLiangChePaiHao" : $("#txtCheLiangChePaiHao").textbox("getValue")
				}, function(status) {
					if (status.existFlag == 'yes') {
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
					} else {
						$.messager.alert('提示', "车辆信息还不存在，请先添加客户及车辆信息");
					}
				}, 'json');
			}
		}

		function doSearch() {
			$("#fmSearch").form('submit', {
				url : "queryCustomerReservation.action",
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