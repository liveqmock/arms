<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1">
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<title>客户信息</title>
<link rel="stylesheet" type="text/css"
	href="../style/themes/default/easyui.css" />
<script src="../js/frame/jquery-1.8.0.min.js" type="text/javascript"></script>
<script src="../js/frame/jquery.easyui.min.js" type="text/javascript"></script>
<script src="../js/frame/underscore-min.js" type="text/javascript"></script>
<link rel="shortcut icon" href="../image/SyAuto.ico" type="image/x-icon" />
<script src="../js/common.js" type="text/javascript"></script>
<script src="../js/frame/locale/easyui-lang-zh_CN.js"
	type="text/javascript"></script>
<script src="../js/customcommon.js" type="text/javascript"></script>
<link href="../style/common.css" rel="stylesheet" type="text/css" />
<style type="text/css">
td {
	font-size: 12px;
	height: 25px;
	white-space: nowrap;
}
</style>
</head>

<body>
	<div style="width: 680px; margin: 0 10px;">
		<form name="form1" method="post" id="form1">
			<input name="txtCustId" value="" type="hidden" id="txtCustId" />
			<!--车主信息 start-->
			<table cellpadding="0" cellspacing="0">
				<tr>
					<td colspan="6">客户信息（注：车主电话为客户唯一标示）</td>
				</tr>
				<tr>
					<td width="80" align="right">客户类别：</td>
					<td><input name="ddlCustSort" id="ddlCustSort"
								class="easyui-combobox"
								data-options="editable:false,required:true,valueField:'code',textField:'name',method:'get',url:'<s:property value='basePath' />/data/customerSortOption.action'" /></td>
					<td width="80" align="right">车主名：</td>
					<td><input name="txtCheZhuName" data-options="required:true,onChange:function(newValue){$('#txtLianXiRenName').textbox('setValue', newValue);}"
						class="easyui-textbox" type="text" id="txtCheZhuName" /></td>

					<td width="80" align="right">车主电话：</td>
					<td><input class="easyui-numberbox" name="txtCheZhuTel"
						type="text" data-options="required:true,validType:'mobile',onChange:function(newValue){$('#txtLianXiRenTel').textbox('setValue', newValue);$('#txtHuiYuanZhangHao').text(newValue);}" id="txtCheZhuTel" /></td>
				</tr>

				<tr>
					<td align="right">联系人姓名：</td>
					<td><input name="txtLianXiRenName" type="text"
						class="easyui-textbox" data-options="required:true"
						id="txtLianXiRenName" /></td>
					<td align="right">联系人电话：</td>
					<td><input name="txtLianXiRenTel" type="text"
						class="easyui-textbox" data-options="required:true"
						id="txtLianXiRenTel" /></td>
					<td align="right">驾照日期：</td>
					<td><input name="txtCheZhuJiaZhaoDate" type="text"
						id="txtCheZhuJiaZhaoDate" class="easyui-datebox"
						data-options="required:false" /></td>
				</tr>
				<tr>
					<td align="right"><span class="requireSpan"></span>联系地址：</td>
					<td colspan="5"><input name="txtLianXiRenAdd" type="text"
						class="easyui-textbox"
						data-options="required:false,validType:'maxLength[200]'"
						id="txtLianXiRenAdd" style="width: 100%;" /></td>
				</tr>
				<tr>
					<td colspan="6">&nbsp;</td>
				</tr>
				<tr>
					<td colspan="6">会员信息</td>
				</tr>
				<tr>
					<td align="right">会员账号：</td>
					<td><span id="txtHuiYuanZhangHao"></span></td>
					<td align="right">会员密码：</td>
					<td><input class="easyui-textbox" name="txtCheZhuPwd"
						type="text" id="txtCheZhuPwd" data-options="required:true" /></td>
					<td align="right">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td align="right">会员积分：</td>
					<td><input class="easyui-numberbox" name="txtHuiYuanJiFen"
						data-options="required:true" type="text" id="txtHuiYuanJiFen" /></td>
					<td align="right">工时折扣：</td>
					<td><input class="easyui-numberbox" name="txtGongShiZheKou"
						type="text" id="txtGongShiZheKou"
						data-options="required:true,precision:2,max:1,min:0" /></td>
					<td align="right">物料折扣：</td>
					<td><input class="easyui-numberbox" name="txtCaiLiaoZheKou"
						type="text" id="txtCaiLiaoZheKou"
						data-options="required:true,precision:2,max:1,min:0"
						style="text-align: right;" /></td>
				</tr>
				<tr>
					<td colspan="6">&nbsp;</td>
				</tr><s:if test="cheLiangInfoLst.size>0">
                <s:iterator value="cheLiangInfoLst" status="status">
				<tr>
					<td colspan="6">车辆<s:property value="#status.count"/>&nbsp;&nbsp;<a href="javascript:editItem('<s:property value='txtCheLiangId' />')">修改</a>&nbsp;&nbsp;<a href="javascript:deleteItem('<s:property value='txtCheLiangId' />')">删除</a></td>
				</tr>
				<tr>
					<td align="right">品牌：</td>
					<td><s:property value="ddlCheLiangZhiZaoShang" /></td>
					<td align="right">车型：</td>
					<td><s:property value="ddlCheLiangCheXi" /></td>
					<td align="right">车辆型号：</td>
					<td><s:property value="txtCheLiangCheXingDaiMa" /></td>
				</tr>
				<tr>
					<td align="right">车牌号：</td>
					<td><s:property value="txtCheLiangChePaiHao" /></td>
					<td align="right">车架号：</td>
					<td><s:property value="txtCheLiangCheJiaHao" /></td>
					<td align="right">发动机号：</td>
					<td><s:property value="txtCheLiangFaDongJiHao" /></td>
				</tr>
				<tr>
					<td align="right">注册登记日期：</td>
					<td><s:property value="txtCheLiangDengJiRiQi" /></td>
					<td align="right">年审到期日：</td>
					<td><s:property value="txtCheLiangNianShenDaoQiRi" /></td>
					<td align="right">保险到期日：</td>
					<td><s:property value="txtCheLiangBaoXianDaoQiRi" /></td>
				</tr>
				<tr>
					<td align="right">承保公司：</td>
					<td><s:property value="ddlChengBaoGongSi" /></td>
					<td align="right">&nbsp;</td>
					<td>&nbsp;</td>
					<td align="right">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				</s:iterator></s:if>
			</table>
			<!--联系人信息 end-->
		</form>

		<!--按钮区域 end-->
		<div id="mydlg" class="easyui-dialog" closed="true"
			style="width: 500px; height: 250px; padding: 10px 20px;">
			<form name="fm" id="fm" method="post">
				<input name="txtCustId" type="hidden" id="txtCustId" />
				<input name="txtCheLiangId" type="hidden" id="txtCheLiangId" />
				<table border="0" cellpadding="0" cellspacing="0"
					style="border-collapse: collapse;">
					<tr>
						<td width="100" align="right">品牌：</td>
						<td><input name="ddlCheLiangZhiZaoShang" id="ddlCheLiangZhiZaoShang"
								class="easyui-combobox"
								data-options="editable:true,required:true,valueField:'code',textField:'name',method:'post',url:'<s:property value='basePath' />/data/cheLiangPingPaiOption.action',onChange:updateCheXi " /></td>
						<td width="100" align="right">车型：</td>
						<td><input name="ddlCheLiangCheXi" id="ddlCheLiangCheXi"
								class="easyui-combobox"
								data-options="editable:true,required:true,valueField:'code',textField:'name'" /></td>

					</tr>
					<tr>
						<td align="right">车牌号：</td>
						<td><input name="txtCheLiangChePaiHao" type="text"
							class="easyui-textbox" id="txtCheLiangChePaiHao"
							data-options="required:true,validType:'maxLength[8]'" /></td>
						<td align="right">车辆型号：</td>
						<td><input name="txtCheLiangCheXingDaiMa" type="text"
							class="easyui-textbox" id="txtCheLiangCheXingDaiMa"
							data-options="required:false" /></td>
					</tr>
					<tr>
						<td align="right">车架号：</td>
						<td><input name="txtCheLiangCheJiaHao" type="text"
							class="easyui-textbox" data-options="required:false"
							id="txtCheLiangCheJiaHao" /></td>
						<td align="right">发动机号：</td>
						<td><input name="txtCheLiangFaDongJiHao" type="text"
							class="easyui-textbox" data-options="required:false"
							id="txtCheLiangFaDongJiHao" /></td>
					</tr>
					<tr>
						<td align="right">注册登记日期：</td>
						<td><input name="txtCheLiangDengJiRiQi" type="text"
							class="easyui-datebox" 
							id="txtCheLiangDengJiRiQi" /></td>
						<td align="right">年审到期日：</td>
						<td><input name="txtCheLiangNianShenDaoQiRi" type="text"
							class="easyui-datebox" 
							id="txtCheLiangNianShenDaoQiRi" /></td>
					</tr>
					<tr>
						<td align="right">保险到期日：</td>
						<td><input name="txtCheLiangBaoXianDaoQiRi" type="text"
							class="easyui-datebox" 
							id="txtCheLiangBaoXianDaoQiRi" /></td>
						<td align="right">承保公司：</td>
						<td><input name="ddlChengBaoGongSi" type="text"
							class="easyui-textbox" 
							id="ddlChengBaoGongSi" /></td>
					</tr>
					<tr>
						<td colspan="4">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="4" align="center"><a onclick="saveItem()" class="easyui-linkbutton" href="javascript:void(0)">保存</a>&nbsp;&nbsp;&nbsp;<a
							onclick="javascript:$('#mydlg').dialog('close')" id="btnSave"
							class="easyui-linkbutton" href="javascript:void(0)">取消</a></td>
					</tr>
				</table>
			</form>
		</div>
		<div style="height: 5px;"></div>

		<!--按钮区域 start-->
		<div align="center" id="btnBottomDiv" style="margin-top: 10px;">
			<a class="easyui-linkbutton" href="javascript:saveCustInfo()">保存客户信息</a>
			<s:if test="customerId!=''">
			<a class="easyui-linkbutton" href="javascript:addItem()">新增车辆信息</a>
			<a class="easyui-linkbutton" href="javascript:deleteCustInfo('<s:property value='customerId' />')">删除客户信息</a>
			<a class="easyui-linkbutton" href="javascript:addCarModel()">品牌车型管理</a></s:if>
            <a class="easyui-linkbutton" href="javascript:winClose()">关闭窗口</a>
		</div>
	</div>
	<script language="javascript" type="text/javascript">
		$(function() {
			var formJson = eval('('
					+ '<s:property value="jsonData" escape="false"/>' + ')');
			
			initializeWithJsonData(formJson);
		});	
	
		function saveCustInfo() {
			$("#form1").form('submit', {
				url : "saveCustomerInfo.action",
				success : function(result) {
					var result = eval('(' + result + ')');
					if (result.errorMsg) {
						$.messager.alert('提示', result.errorMsg);
					} else {
						$.messager.alert('提示','保存信息成功！','info',function(){
							if(result.info=='update'){
								reloadCurentPage(); // reload data	
							}else{		
								location.href ='../customManage/customerInfo.action?customerId=' + result.info + '&d=' + new Date();				
							}
						});
					}
				}
			});
		}
		
		function deleteCustInfo(customerId){
			$.messager.confirm('确认', '确定要删除客户及车辆信息吗?', function(r) {
				if (r) {
					$.post('deleteCustInfo.action', {
						"customerId" : customerId
					}, function(result) {
						if (result.errorMsg) {
							$.messager.alert('出错啦', result.errorMsg);
						} else {
							winClose();
						}
					}, 'json');
				}
			});			
		}

		var url;
		function addItem() {
			$('#mydlg').dialog('open').dialog('setTitle', '车辆信息');
			$('#fm').form('clear');
			$('#fm').form('load', {txtCustId:'<s:property value="customerId" />'});
			url = 'insertCheLiangInfo.action';
		}
		function editItem(txtCheLiangId) {
			$.post('getCheLiangJsonData.action', {
				"txtCheLiangId" : txtCheLiangId
			}, function(row) {
				$('#mydlg').dialog('open').dialog('setTitle', '车辆信息');
				$('#fm').form('clear');
				$('#fm').form('load', row);
				url = 'updateCheLiangInfo.action';
			}, 'json');
		}
		function deleteItem(txtCheLiangId) {
			$.messager.confirm('确认', '确定要删除选中车辆信息吗?', function(r) {
				if (r) {
					$.post('deleteCheLiangInfo.action', {
						"txtCheLiangId" : txtCheLiangId
					}, function(result) {
						if (result.errorMsg) {
							$.messager.alert('出错啦', result.errorMsg);
						} else {
							reloadCurentPage(); // reload data
						}
					}, 'json');
				}
			});
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
						reloadCurentPage(); // reload data
					}
				}
			});
		}
		
		function updateCheXi(newBrandName){		
			$.post('<s:property value="basePath" />/data/cheLiangCheXiOption.action', {
				'cheLiangBrandName' : newBrandName
			}, function(data) {
				$('#ddlCheLiangCheXi').combobox("loadData", data);
			}, 'json');
		}
		
		function addCarModel(){
			var url = '../webSetup/carModel.action?d=' + new Date();
			var sFeatures = "dialogWidth:700px;dialogHeight:500px;center:yes;help:no;resizable:no;scroll:yes;status:no;";
			window.showModalDialog(url, window, sFeatures);
			$('#ddlCheLiangZhiZaoShang').combobox("reload");
		}

		function winClose() {
			window.opener = null;
			window.close();
		}
	</script>
</body>
</html>