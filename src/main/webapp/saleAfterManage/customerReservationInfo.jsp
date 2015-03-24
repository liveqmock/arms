<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>客户预约</title>
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
<body style=" padding-left:100px;">
		<form name="fm" method="post" id="fm">
        	<input name="txtReserveGuid" type="hidden" id="txtReserveGuid" />
        	<input name="txtCheLiangId" type="hidden" id="txtCheLiangId" />
			<table border="0">
				<tr>
					<td align="right"><span class="requireSpan">*&nbsp;</span>车牌号码：</td>
					<td><input class="easyui-textbox"
						data-options="required:true"
						name="txtCheLiangChePaiHao" type="text" maxlength="60" id="txtCheLiangChePaiHao"
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
					<td align="right">服务券信息：</td>
					<td><input class="easyui-textbox"
						data-options="required:false"
						name="txtTicketInfo" type="text" maxlength="60" id="txtTicketInfo"
						 /></td>
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
						onclick="saveItem()" class="easyui-linkbutton"
						href="javascript:void(0)">保存</a>&nbsp;&nbsp;&nbsp;<a
						onclick="javascript:winClose()" 
						class="easyui-linkbutton" href="javascript:void(0)">取消</a></td>
				</tr>
			</table>
		</form>

<script type="text/javascript">			
		$(function() {
			var formJson = eval('(' + '<s:property value="jsonData" escape="false"/>' + ')');
			initializeWithJsonData(formJson);			
		});
		
		function saveItem() {
			var url;
			<s:if test="txtReserveGuid==null || txtReserveGuid==''">url = 'insertCustomerReservation.action';</s:if>
			<s:else>url = 'updateCustomerReservation.action';</s:else>
			
			if($('#fm').form('validate')){
				$.post('isChePaiHaoExist.action', {
					"txtCheLiangChePaiHao" : $("#txtCheLiangChePaiHao").textbox("getValue")
				}, function(status) {
					if (status.existFlag == 'yes') {
						$("#txtCheLiangId").val(status.cheLiangId);
						$('#fm').form('submit', {
							url : url,
							success : function(result) {
								var result = eval('(' + result + ')');
								if (result.errorMsg) {
									$.messager.alert('出错啦', result.errorMsg);
								} else {
									winClose();
								}
							}
						});
					} else {
						$.messager.alert('提示', "车辆信息还不存在，请先添加客户及车辆信息");
					}
				}, 'json');
			}
		}

		function winClose() {
			window.opener = null;
			window.close();
		}
	</script>
</body>
</html>