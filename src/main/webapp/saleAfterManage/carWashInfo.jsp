<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>用户接待</title>
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
			<td class="titlebg"><span>用户接待</span> <span class="titleSpan">(洗车接待)</span>
			</td>
		</tr>
	</table>
<div id="mydlg" class="easyui-dialog" closed="true"
		style="width: 700px; height: 500px; padding: 10px 20px;">
  <form name="fm" method="post" id="fm">
			<table border="0" cellpadding="0" cellspacing="0" width="100%;">
				<tr>
                	<td colspan="2" style="color: Blue; font-weight: bold;">当前状态:	<span id="txtStatus"></span></td>
					<td colspan="2" style="height:30px;">
                    <a onclick="saveItem()" class="easyui-linkbutton" href="javascript:void(0)">保存洗车信息</a>
                    <a onclick="updateStatus('洗车接待')" class="easyui-linkbutton" href="javascript:void(0)">派工</a>
                    <a onclick="updateStatus('派工')" class="easyui-linkbutton" href="javascript:void(0)">退回上一步</a>
                    <a onclick="updateStatus('完检')" class="easyui-linkbutton" href="javascript:void(0)">完检</a>
                    <a onclick="updateStatus('完检')" class="easyui-linkbutton" href="javascript:void(0)">退回上一步</a>
                    <a onclick="updateStatus('收银')" class="easyui-linkbutton" href="javascript:void(0)">收银</a>
                    <a onclick="updateStatus('收银')" class="easyui-linkbutton" href="javascript:void(0)">退回上一步</a>
                    <a onclick="updateStatus('交车')" class="easyui-linkbutton" href="javascript:void(0)">交车</a></td>
				</tr>
				<tr>
					<td align="right">品牌：</td>
					<td><input name="ddlCheLiangPingPai" id="ddlCheLiangPingPai"
								class="easyui-combobox"
								data-options="editable:true,required:true,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/cheLiangPingPaiOption.action',onSelect:updateCheXi" /></td>
					<td align="right">车型：</td>
					<td><input name="ddlCheLiangCheXi" id="ddlCheLiangCheXi"
								class="easyui-combobox"
								data-options="editable:true,required:true,valueField:'code',textField:'name'" /></td>
				</tr>
				<tr>
					<td align="right">车牌号：</td>
					<td><input name="txtChePaiHao" type="text" maxlength="15"
						id="txtChePaiHao" class="easyui-textbox"
						data-options="required:true" /></td>
					<td align="right">洗车类型：</td>
					<td><input name="ddlXiCheLeiXing" type="text" maxlength="15"
						id="ddlXiCheLeiXing" class="easyui-textbox"
						data-options="required:true" /></td>
				</tr>
				<tr>
					<td align="right">车主名：</td>
					<td><input name="txtCheZhuName" type="text" maxlength="15"
						id="txtCheZhuName" class="easyui-textbox"
						data-options="required:false" /></td>
					<td align="right">车主电话：</td>
					<td><input name="txtCheZhuTel" type="text" maxlength="15"
						id="txtCheZhuTel" class="easyui-textbox"
						data-options="required:false" /></td>
				</tr>
				<tr>
					<td align="right">支付方式：</td>
					<td><input name="ddlZhiFuFangShi" id="ddlZhiFuFangShi" class="easyui-combobox" data-options="editable:false,required:true,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/zhiFuSortOption.action'" /></td>
					<td align="right">费用：</td>
					<td><input name="txtFeiYong" type="text" maxlength="15"
						id="txtFeiYong" class="easyui-numberbox"
						data-options="required:true,precision:2,min:0" /></td>
				</tr>
			</table>
	  </form>
	</div>

<script type="text/javascript">
		var txtGuid='<s:property value="" />';
		function saveItem() {
			var url;
			<s:if test="action=='newCarWash'">url = 'insertCarWash.action';</s:if>
			<s:if test="action=='editCarWash'">url = 'updateCarWash.action?txtGuid=' + txtGuid;</s:if>
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
		
		function updateCheXi(brandItem){		
			$.post('<s:property value="basePath" />/data/cheLiangCheXiOption.action', {
				'cheLiangBrandName' : brandItem.name
			}, function(data) {
				$('#ddlCheLiangCheXi').combobox("loadData", data);
			}, 'json');
		}
		
		function updateStatus(newStatus){
			
		}
	</script>
</body>
</html>