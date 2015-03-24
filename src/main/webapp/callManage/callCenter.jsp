<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>待阅信息</title>
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

textarea {
	border: 1px solid #9a9a9a;
	background: #FFF;
}
</style>
<body>
	<div style="width: 100%;">
		<table border="0" style="width: 780px; height: 30px;">
			<tr>
				<td style="display: block; width: 200px;"></td>
				<td id="Td1"
					style="width: 100px; cursor: pointer; text-align: center;"
					onclick="callShow()">信息发布</td>
				<td id="tab1"
					style="width: 100px; cursor: pointer; background-color: Gray; color: White; text-align: center;">待阅信息</td>
				<td id="tab2"
					style="width: 100px; cursor: pointer; text-align: center;"
					onClick="sendShow()">已发信息</td>
				<td id="tab3"
					style="width: 100px; cursor: pointer; text-align: center;"
					onclick="receiveShow()">已收信息</td>
				<td id="Td2"
					style="width: 100px; cursor: pointer; text-align: center;"
					onclick="return parWinClose();">关闭</td>
			</tr>
		</table>
	</div>
	<table id="mydg" class="easyui-datagrid"
		data-options="url:'queryCallCenter.action',
						   rownumbers:true,
						   singleSelect:true,
						   pagination:true">
		<thead>
			<tr>
				<th data-options="field:'senderName',width:80">发送人</th>
				<th data-options="field:'hidToUserName',width:80">主送人</th>
				<th data-options="field:'hidCCUserName',width:80">抄送人</th>
				<th data-options="field:'txtSendDate',width:80">发送时间</th>
				<th data-options="field:'txtRemarks',width:80">内容</th>
				<th field="action" width="100" align="center"
					formatter="formatAction">操作</th>
			</tr>
		</thead>
	</table>

	<div id="mydlg" class="easyui-dialog" closed="true"
		style="width: 600px; height: 400px; padding: 10px 20px;">
		<form name="fm" method="post" id="fm">
			<table border="0">
				<tr>
					<td align="right"><span class="requireSpan">*&nbsp;</span>发送人:</td>
					<td><input class="easyui-validatebox" name="senderName"
						type="text" id="senderName"
						style="width: 400px; background: #FFF;" readonly="readonly" /></td>
				</tr>
				<tr>
					<td align="right"><span class="requireSpan">*&nbsp;</span>主送:</td>
					<td><input class="easyui-validatebox" name="hidToUserName"
						type="text" id="hidToUserName"
						style="width: 400px; background: #FFF;" readonly="readonly" /></td>
				</tr>
				<tr>
					<td align="right"><span class="requireSpan">*&nbsp;</span>抄送:</td>
					<td><input class="easyui-validatebox" name="hidCCUserName"
						type="text" id="hidCCUserName"
						style="width: 400px; background: #FFF;" readonly="readonly" /></td>
				</tr>
				<tr>
					<td align="right"><span class="requireSpan">*&nbsp;</span>发送时间:</td>
					<td><input class="easyui-validatebox" name="txtSendDate"
						type="text" id="txtSendDate"
						style="width: 400px; background: #FFF;" readonly="readonly" /></td>
				</tr>
				<tr>
					<td align="right"><span class="requireSpan">*&nbsp;</span>内容:</td>
					<td><textarea name="txtRemarks" rows="2" cols="20"
							id="txtRemarks" style="height: 200px; width: 400px;" readonly="readonly">
					</textarea></td>
				</tr>
			</table>
		</form>
	</div>


	<script language="javascript" type="text/javascript">
		function editItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$('#mydlg').dialog('open').dialog('setTitle', '查看邮件');
				$('#fm').form('load', row);
				url = 'updateCallCenter.action?maillId=' + row.maillId;
				saveItem();
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
						$('#mydg').datagrid('reload'); // reload data
					}
				}
			});
		}
		function callShow() {
			//信息发布
			location.href = "call.action";
		}

		function receiveShow() {
			location.href = "receiveCall.action";
		}
		function sendShow() {
			location.href = "sendCall.action";
		}
		function deleteItem(clickevent) {
			var row = $('#mydg').datagrid('getEventTargetRow', clickevent);
			if (row) {
				$.messager.confirm('确认', '确定要删除选中邮件信息吗?', function(r) {
					if (r) {
						$.post('deleteMaill.action', {
							"maillId" : row.maillId
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
		/*   function billShow(index) {
		      var callId = $('#dg2').datagrid('getRows')[index]['callId'];
		      if (callId != "") {               
		           location .href ='../callManage/callShowByCallId.aspx?callId=' + callId + '&d=' + new Date();
		          
		      }
		  } */

		function formatAction(value, row, index) {
			return '<a href="javascript:void(0)" onclick="editItem(this)">查看详情</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" onclick="deleteItem(this)">删除</a>';
		}
	</script>

</body>
</html>